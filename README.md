# Otus-linux Project
## Выпускной проект курса Администратор linux Какунина Дмитрия
### Тема: Кластеризация Atlassian Jira

__Проект построен на основе полученных во время обучения знаний__

__За основу взята официальная документация [https://developer.atlassian.com/server/jira/platform/developing-for-high-availability-and-clustering/](https://developer.atlassian.com/server/jira/platform/developing-for-high-availability-and-clustering/)__

__Концепция построения: Отказоустойчивость и высокая доступность системы__

### Схема кластера

![img](https://github.com/kakunindima/otus_linux_project/blob/master/img/project_2.png)

__Кластер состоит из 13 нод которые можно сгруппировать по типу__

### Jiralb1,2

__Ноды на которых крутится loadbalancer на основе apache в docker, между нодами настроен keepalived и плавающий ip 10.0.0.10 который является единой точкой входа в для веб, каждый балансер в свою очередь смотрит на обе машины с запущенной jira__

### Jira1,2

__Ноды на которых в docker запущена jira, образ взят из официального docker репозитория [atlassian/jira](hub.docker.com/r/atlassian/jira-software) версии 8.11.0. конфигурация контейнера настроена через docker-compose и запущена внутри ноды как systemd service. Коннект к БД осуществляется на единый ip адресс 10.0.0.20, к каждая нода монтируется к storage также через единый ip адресс 10.0.0.30, сюда мапятся директории для контейнеров с jira - jira-home-node1, jira-home-node2, jira-home-shared.__

### Stor1,2

__Ноды на которых развернуто хранилище на основе glusterfs, создан один replicated volume, между нодами настроен keepalived and float ip 10.0.0.30, клиенты (jira1,2) монтируют шаредный раздел к этому ip (через dns запись stor) что обеспечивает сохранение точк монтирования при отключении одной из нод хранилища__

### Consul1,2,3

__Ноды выполняющие несколько функций:__

__На всех 3х нодах развернут consul агент обеспечивающий кворум для управления кластером patroni__

__На нодах 1 & 2 развернуто: keepalived and float ip 10.0.0.20 обеспечивающий единую точку коннекта к БД. pgbouncer отвечающий за пулл коннектов к мастеру бд, направляющий запросы через развернутый haproxy к мастеру кластера путем проверки состояния patroni (запрос по порту 8008 к каждой ноде бд выдает состояние - мастер 200 или слейв 503).__

### Db1,2,3

__Ноды составляющие кластер postgres на основе patroni. мастер определяется кворумом consul, коннект к базе осуществляется pgbouncer через haproxy.__

### Bml - backup, monitoring, log

__Нода предназначеная для выполнения 3 функций:__

__Единая точка сбора логов на основе journald__

__Выполнения бэкапов: бжкап файлов осуществляется скриптом по крону при помощи borgbackup, бэкап базы осуществляется при помощи barman__

__Обеспечение мониторинга: осуществляется при помощи Nagios__

### На всех нодах кластера настроен firewalld

### Запуск стенда и проверка

__Рекомендую для начала запустить машину bml - центральное хранилище логов для наблюдения__

```
    vagrant up bml
    vagrant ssh bml
```
__Для просмотра логов в реальном времени используем команду__

```
   journalctl -D /var/log/journal/remote --follow
```

__После этого запускаем остальные машины__

```
   vagrant up
```

__Для просмотра панели мониторинга необходимо открыть браузер и перейти по ссылке в панель мониторинга [http://10.0.0.40/nagios/](http://10.0.0.40/nagios/), учетные данные для входа: login: nagiosadmin passwd: Dlj[yjdtybt__

__Для просмотра состояния консула перейти по ссылке: [http://10.0.0.20:8500/ui/project_consul/services](http://10.0.0.20:8500/ui/project_consul/services)__

__Состояние кластера patroni - [http://10.0.0.20:8080/](http://10.0.0.20:8080/) login: pengwinn passwd: Dlj[yjdtybt__

__Доступ в веб интерфейс Jira [http://10.0.0.10/](http://10.0.0.10/) login: pengwinn passwd: Dlj[yjdtybt__

__Для проверки рекомендуется: отключать по одной из нод, при успешной отработке системы резервирования доступ и работоспособность системы прервана не будет, при возможных ошибках при проверки - рекомендую перезагрузить страницу.__

__Тестирование бэкапа: зайти на любую ноду и выполнить скрипт расположенный в /opt/backup.sh__