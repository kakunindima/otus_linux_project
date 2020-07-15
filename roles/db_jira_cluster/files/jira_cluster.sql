--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 11.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_0A5972_NOTIFICATION_SETTING" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "TYPE" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_0A5972_NOTIFICATION_SETTING" OWNER TO postgres;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq" OWNER TO postgres;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq" OWNED BY public."AO_0A5972_NOTIFICATION_SETTING"."ID";


--
-- Name: AO_0A5972_PUSH_REGISTRATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_0A5972_PUSH_REGISTRATION" (
    "BUILD" character varying(255) NOT NULL,
    "ENDPOINT" character varying(450),
    "ID" character varying(255) NOT NULL,
    "OS" character varying(255) NOT NULL,
    "TOKEN" character varying(450),
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_0A5972_PUSH_REGISTRATION" OWNER TO postgres;

--
-- Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_0AC321_RECOMMENDATION_AO" (
    "CATEGORY" character varying(255),
    "CUSTOM_FIELD_ID" bigint,
    "ID" character varying(255) NOT NULL,
    "NAME" character varying(255),
    "PERFORMANCE_IMPACT" double precision,
    "PROJECT_IDS" text,
    "RESOLVED" boolean,
    "TYPE" character varying(255)
);


ALTER TABLE public."AO_0AC321_RECOMMENDATION_AO" OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21D670_WHITELIST_RULES" OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY public."AO_21D670_WHITELIST_RULES"."ID";


--
-- Name: AO_21F425_MESSAGE_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21F425_MESSAGE_AO" (
    "CONTENT" text NOT NULL,
    "ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_MESSAGE_AO" OWNER TO postgres;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21F425_MESSAGE_MAPPING_AO" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" character varying(255) NOT NULL,
    "USER_HASH" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_MESSAGE_MAPPING_AO" OWNER TO postgres;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNED BY public."AO_21F425_MESSAGE_MAPPING_AO"."ID";


--
-- Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21F425_USER_PROPERTY_AO" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "USER" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_USER_PROPERTY_AO" OWNER TO postgres;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNED BY public."AO_21F425_USER_PROPERTY_AO"."ID";


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO postgres;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO postgres;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY public."AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_3B1893_LOOP_DETECTION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_3B1893_LOOP_DETECTION" (
    "COUNTER" integer DEFAULT 0 NOT NULL,
    "EXPIRES_AT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "SENDER_EMAIL" text NOT NULL
);


ALTER TABLE public."AO_3B1893_LOOP_DETECTION" OWNER TO postgres;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNER TO postgres;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNED BY public."AO_3B1893_LOOP_DETECTION"."ID";


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" text,
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" text,
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" OWNER TO postgres;

--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNED BY public."AO_4789DD_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_4789DD_PROPERTIES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_PROPERTIES" OWNER TO postgres;

--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_PROPERTIES_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq" OWNED BY public."AO_4789DD_PROPERTIES"."ID";


--
-- Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_READ_NOTIFICATIONS" OWNER TO postgres;

--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNED BY public."AO_4789DD_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_4789DD_TASK_MONITOR; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_TASK_MONITOR" (
    "CLUSTERED_TASK_ID" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "ID" integer NOT NULL,
    "NODE_ID" character varying(255),
    "PROGRESS_MESSAGE" text,
    "PROGRESS_PERCENTAGE" integer,
    "SERIALIZED_ERRORS" text,
    "SERIALIZED_WARNINGS" text,
    "TASK_ID" character varying(255) NOT NULL,
    "TASK_MONITOR_KIND" character varying(255),
    "TASK_STATUS" text
);


ALTER TABLE public."AO_4789DD_TASK_MONITOR" OWNER TO postgres;

--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNED BY public."AO_4789DD_TASK_MONITOR"."ID";


--
-- Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4AEACD_WEBHOOK_DAO" (
    "ENABLED" boolean,
    "ENCODED_EVENTS" text,
    "FILTER" text,
    "ID" integer NOT NULL,
    "JQL" character varying(255),
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255) NOT NULL,
    "NAME" text NOT NULL,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL,
    "PARAMETERS" text,
    "EXCLUDE_ISSUE_DETAILS" boolean
);


ALTER TABLE public."AO_4AEACD_WEBHOOK_DAO" OWNER TO postgres;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNER TO postgres;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNED BY public."AO_4AEACD_WEBHOOK_DAO"."ID";


--
-- Name: AO_550953_SHORTCUT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_550953_SHORTCUT" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PROJECT_ID" bigint,
    "SHORTCUT_URL" text,
    "URL" character varying(255),
    "ICON" character varying(255)
);


ALTER TABLE public."AO_550953_SHORTCUT" OWNER TO postgres;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_550953_SHORTCUT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_550953_SHORTCUT_ID_seq" OWNER TO postgres;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_550953_SHORTCUT_ID_seq" OWNED BY public."AO_550953_SHORTCUT"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY public."AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY public."AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY public."AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY public."AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_TARGET_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY public."AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_587B34_GLANCE_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_587B34_GLANCE_CONFIG" (
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "STATE" character varying(255),
    "SYNC_NEEDED" boolean,
    "JQL" character varying(255),
    "APPLICATION_USER_KEY" character varying(255),
    "NAME" character varying(255)
);


ALTER TABLE public."AO_587B34_GLANCE_CONFIG" OWNER TO postgres;

--
-- Name: AO_587B34_PROJECT_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_587B34_PROJECT_CONFIG" (
    "CONFIGURATION_GROUP_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "NAME_UNIQUE_CONSTRAINT" character varying(255) NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0 NOT NULL,
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "VALUE" character varying(255)
);


ALTER TABLE public."AO_587B34_PROJECT_CONFIG" OWNER TO postgres;

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_587B34_PROJECT_CONFIG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_587B34_PROJECT_CONFIG_ID_seq" OWNER TO postgres;

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_587B34_PROJECT_CONFIG_ID_seq" OWNED BY public."AO_587B34_PROJECT_CONFIG"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_LINK"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
);


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_USER"."ID";


--
-- Name: AO_733371_EVENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_733371_EVENT" (
    "ACTION" character varying(255),
    "ACTION_ID" character varying(255),
    "CREATED" timestamp without time zone NOT NULL,
    "EVENT_BUNDLE_ID" character varying(255),
    "EVENT_TYPE" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "USER_KEY" character varying(255)
);


ALTER TABLE public."AO_733371_EVENT" OWNER TO postgres;

--
-- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_733371_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_733371_EVENT_ID_seq" OWNER TO postgres;

--
-- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_733371_EVENT_ID_seq" OWNED BY public."AO_733371_EVENT"."ID";


--
-- Name: AO_733371_EVENT_PARAMETER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_733371_EVENT_PARAMETER" (
    "EVENT_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "VALUE" text
);


ALTER TABLE public."AO_733371_EVENT_PARAMETER" OWNER TO postgres;

--
-- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_733371_EVENT_PARAMETER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_733371_EVENT_PARAMETER_ID_seq" OWNER TO postgres;

--
-- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_733371_EVENT_PARAMETER_ID_seq" OWNED BY public."AO_733371_EVENT_PARAMETER"."ID";


--
-- Name: AO_733371_EVENT_RECIPIENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_733371_EVENT_RECIPIENT" (
    "CONSUMER_NAME" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "EVENT_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "SEND_DATE" timestamp without time zone,
    "STATUS" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_733371_EVENT_RECIPIENT" OWNER TO postgres;

--
-- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_733371_EVENT_RECIPIENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_733371_EVENT_RECIPIENT_ID_seq" OWNER TO postgres;

--
-- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_733371_EVENT_RECIPIENT_ID_seq" OWNED BY public."AO_733371_EVENT_RECIPIENT"."ID";


--
-- Name: AO_97EDAB_USERINVITATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_97EDAB_USERINVITATION" (
    "APPLICATION_KEYS" character varying(255),
    "EMAIL_ADDRESS" character varying(255),
    "EXPIRY" timestamp without time zone,
    "ID" integer NOT NULL,
    "REDEEMED" boolean,
    "SENDER_USERNAME" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE public."AO_97EDAB_USERINVITATION" OWNER TO postgres;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_97EDAB_USERINVITATION_ID_seq" OWNER TO postgres;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq" OWNED BY public."AO_97EDAB_USERINVITATION"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO postgres;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY public."AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" (
    "ID" integer NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0,
    "PROJECT_TEMPLATE_MODULE_KEY" character varying(255),
    "PROJECT_TEMPLATE_WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" OWNER TO postgres;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNER TO postgres;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNED BY public."AO_B9A0F0_APPLIED_TEMPLATE"."ID";


--
-- Name: AO_C16815_ALERT_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_C16815_ALERT_AO" (
    "CREATED_DATE" bigint DEFAULT 0,
    "DETAILS_JSON" text,
    "ID" bigint NOT NULL,
    "ISSUE_COMPONENT_ID" character varying(255),
    "ISSUE_ID" character varying(255),
    "ISSUE_SEVERITY" integer DEFAULT 0,
    "NODE_NAME" character varying(255),
    "TRIGGER_MODULE" character varying(255),
    "TRIGGER_PLUGIN_KEY" character varying(255),
    "TRIGGER_PLUGIN_KEY_VERSION" character varying(255),
    "TRIGGER_PLUGIN_VERSION" character varying(255)
);


ALTER TABLE public."AO_C16815_ALERT_AO" OWNER TO postgres;

--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_C16815_ALERT_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C16815_ALERT_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_C16815_ALERT_AO_ID_seq" OWNED BY public."AO_C16815_ALERT_AO"."ID";


--
-- Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_ED669C_SEEN_ASSERTIONS" (
    "ASSERTION_ID" character varying(255) NOT NULL,
    "EXPIRY_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_ED669C_SEEN_ASSERTIONS" OWNER TO postgres;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNER TO postgres;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNED BY public."AO_ED669C_SEEN_ASSERTIONS"."ID";


--
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_user (
    id numeric(18,0) NOT NULL,
    user_key character varying(255),
    lower_user_name character varying(255)
);


ALTER TABLE public.app_user OWNER TO postgres;

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_changed_value (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    name character varying(255),
    delta_from text,
    delta_to text
);


ALTER TABLE public.audit_changed_value OWNER TO postgres;

--
-- Name: audit_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_item (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255)
);


ALTER TABLE public.audit_item OWNER TO postgres;

--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    id numeric(18,0) NOT NULL,
    remote_address character varying(60),
    created timestamp with time zone,
    author_key character varying(255),
    summary character varying(255),
    category character varying(255),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255),
    author_type numeric(9,0),
    event_source_name character varying(255),
    description character varying(255),
    long_description text,
    search_field text
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: avatar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avatar (
    id numeric(18,0) NOT NULL,
    filename character varying(255),
    contenttype character varying(255),
    avatartype character varying(60),
    owner character varying(255),
    systemavatar numeric(9,0)
);


ALTER TABLE public.avatar OWNER TO postgres;

--
-- Name: board; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.board (
    id numeric(18,0) NOT NULL,
    jql text
);


ALTER TABLE public.board OWNER TO postgres;

--
-- Name: boardproject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boardproject (
    board_id numeric(18,0) NOT NULL,
    project_id numeric(18,0) NOT NULL
);


ALTER TABLE public.boardproject OWNER TO postgres;

--
-- Name: changegroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changegroup (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.changegroup OWNER TO postgres;

--
-- Name: changeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changeitem (
    id numeric(18,0) NOT NULL,
    groupid numeric(18,0),
    fieldtype character varying(255),
    field character varying(255),
    oldvalue text,
    oldstring text,
    newvalue text,
    newstring text
);


ALTER TABLE public.changeitem OWNER TO postgres;

--
-- Name: clusteredjob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusteredjob (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    job_runner_key character varying(255),
    sched_type character(1),
    interval_millis numeric(18,0),
    first_run numeric(18,0),
    cron_expression character varying(255),
    time_zone character varying(60),
    next_run numeric(18,0),
    version numeric(18,0),
    parameters bytea
);


ALTER TABLE public.clusteredjob OWNER TO postgres;

--
-- Name: clusterlockstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusterlockstatus (
    id numeric(18,0) NOT NULL,
    lock_name character varying(255),
    locked_by_node character varying(60),
    update_time numeric(18,0)
);


ALTER TABLE public.clusterlockstatus OWNER TO postgres;

--
-- Name: clustermessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clustermessage (
    id numeric(18,0) NOT NULL,
    source_node character varying(60),
    destination_node character varying(60),
    claimed_by_node character varying(60),
    message character varying(255),
    message_time timestamp with time zone
);


ALTER TABLE public.clustermessage OWNER TO postgres;

--
-- Name: clusternode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusternode (
    node_id character varying(60) NOT NULL,
    node_state character varying(60),
    "timestamp" numeric(18,0),
    ip character varying(60),
    cache_listener_port numeric(18,0),
    node_build_number numeric(18,0),
    node_version character varying(60)
);


ALTER TABLE public.clusternode OWNER TO postgres;

--
-- Name: clusternodeheartbeat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusternodeheartbeat (
    node_id character varying(60) NOT NULL,
    heartbeat_time numeric(18,0),
    database_time numeric(18,0)
);


ALTER TABLE public.clusternodeheartbeat OWNER TO postgres;

--
-- Name: clusterupgradestate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusterupgradestate (
    id numeric(18,0) NOT NULL,
    database_time numeric(18,0),
    cluster_build_number numeric(18,0),
    cluster_version character varying(60),
    state character varying(60),
    order_number numeric(18,0)
);


ALTER TABLE public.clusterupgradestate OWNER TO postgres;

--
-- Name: columnlayout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.columnlayout (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    searchrequest numeric(18,0)
);


ALTER TABLE public.columnlayout OWNER TO postgres;

--
-- Name: columnlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.columnlayoutitem (
    id numeric(18,0) NOT NULL,
    columnlayout numeric(18,0),
    fieldidentifier character varying(255),
    horizontalposition numeric(18,0)
);


ALTER TABLE public.columnlayoutitem OWNER TO postgres;

--
-- Name: component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.component (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    cname character varying(255),
    description text,
    url character varying(255),
    lead character varying(255),
    assigneetype numeric(18,0),
    archived character varying(10)
);


ALTER TABLE public.component OWNER TO postgres;

--
-- Name: configurationcontext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configurationcontext (
    id numeric(18,0) NOT NULL,
    projectcategory numeric(18,0),
    project numeric(18,0),
    customfield character varying(255),
    fieldconfigscheme numeric(18,0)
);


ALTER TABLE public.configurationcontext OWNER TO postgres;

--
-- Name: customfield; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customfield (
    id numeric(18,0) NOT NULL,
    cfkey character varying(255),
    customfieldtypekey character varying(255),
    customfieldsearcherkey character varying(255),
    cfname character varying(255),
    description text,
    defaultvalue character varying(255),
    fieldtype numeric(18,0),
    project numeric(18,0),
    issuetype character varying(255)
);


ALTER TABLE public.customfield OWNER TO postgres;

--
-- Name: customfieldoption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customfieldoption (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    parentoptionid numeric(18,0),
    sequence numeric(18,0),
    customvalue character varying(255),
    optiontype character varying(60),
    disabled character varying(60)
);


ALTER TABLE public.customfieldoption OWNER TO postgres;

--
-- Name: customfieldvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customfieldvalue (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    customfield numeric(18,0),
    updated numeric(18,0),
    parentkey character varying(255),
    stringvalue character varying(255),
    numbervalue double precision,
    textvalue text,
    datevalue timestamp with time zone,
    valuetype character varying(255)
);


ALTER TABLE public.customfieldvalue OWNER TO postgres;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application (
    id numeric(18,0) NOT NULL,
    application_name character varying(255),
    lower_application_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    application_type character varying(255),
    credential character varying(255)
);


ALTER TABLE public.cwd_application OWNER TO postgres;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application_address (
    application_id numeric(18,0) NOT NULL,
    remote_address character varying(255) NOT NULL,
    encoded_address_binary character varying(255),
    remote_address_mask numeric(9,0)
);


ALTER TABLE public.cwd_application_address OWNER TO postgres;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory (
    id numeric(18,0) NOT NULL,
    directory_name character varying(255),
    lower_directory_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    impl_class character varying(255),
    lower_impl_class character varying(255),
    directory_type character varying(60),
    directory_position numeric(18,0)
);


ALTER TABLE public.cwd_directory OWNER TO postgres;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory_attribute (
    directory_id numeric(18,0) NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(4000)
);


ALTER TABLE public.cwd_directory_attribute OWNER TO postgres;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory_operation (
    directory_id numeric(18,0) NOT NULL,
    operation_type character varying(60) NOT NULL
);


ALTER TABLE public.cwd_directory_operation OWNER TO postgres;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group (
    id numeric(18,0) NOT NULL,
    group_name character varying(255),
    lower_group_name character varying(255),
    active numeric(9,0),
    local numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    description character varying(255),
    lower_description character varying(255),
    group_type character varying(60),
    directory_id numeric(18,0)
);


ALTER TABLE public.cwd_group OWNER TO postgres;

--
-- Name: cwd_group_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group_attributes (
    id numeric(18,0) NOT NULL,
    group_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE public.cwd_group_attributes OWNER TO postgres;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_membership (
    id numeric(18,0) NOT NULL,
    parent_id numeric(18,0),
    child_id numeric(18,0),
    membership_type character varying(60),
    group_type character varying(60),
    parent_name character varying(255),
    lower_parent_name character varying(255),
    child_name character varying(255),
    lower_child_name character varying(255),
    directory_id numeric(18,0)
);


ALTER TABLE public.cwd_membership OWNER TO postgres;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user (
    id numeric(18,0) NOT NULL,
    directory_id numeric(18,0),
    user_name character varying(255),
    lower_user_name character varying(255),
    active numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    credential character varying(255),
    deleted_externally numeric(9,0),
    external_id character varying(255)
);


ALTER TABLE public.cwd_user OWNER TO postgres;

--
-- Name: cwd_user_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user_attributes (
    id numeric(18,0) NOT NULL,
    user_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE public.cwd_user_attributes OWNER TO postgres;

--
-- Name: deadletter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deadletter (
    id numeric(18,0) NOT NULL,
    message_id character varying(255),
    last_seen numeric(18,0),
    mail_server_id numeric(18,0),
    folder_name character varying(255)
);


ALTER TABLE public.deadletter OWNER TO postgres;

--
-- Name: draftworkflowscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.draftworkflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    workflow_scheme_id numeric(18,0),
    last_modified_date timestamp with time zone,
    last_modified_user character varying(255)
);


ALTER TABLE public.draftworkflowscheme OWNER TO postgres;

--
-- Name: draftworkflowschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.draftworkflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE public.draftworkflowschemeentity OWNER TO postgres;

--
-- Name: entity_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_property (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    json_value text
);


ALTER TABLE public.entity_property OWNER TO postgres;

--
-- Name: entity_property_index_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_property_index_document (
    id numeric(18,0) NOT NULL,
    plugin_key character varying(255),
    module_key character varying(255),
    entity_key character varying(255),
    updated timestamp with time zone,
    document text
);


ALTER TABLE public.entity_property_index_document OWNER TO postgres;

--
-- Name: entity_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_translation (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    locale character varying(60),
    trans_name character varying(255),
    trans_desc character varying(255)
);


ALTER TABLE public.entity_translation OWNER TO postgres;

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.external_entities (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    entitytype character varying(255)
);


ALTER TABLE public.external_entities OWNER TO postgres;

--
-- Name: externalgadget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.externalgadget (
    id numeric(18,0) NOT NULL,
    gadget_xml text
);


ALTER TABLE public.externalgadget OWNER TO postgres;

--
-- Name: favouriteassociations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favouriteassociations (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    entitytype character varying(60),
    entityid numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.favouriteassociations OWNER TO postgres;

--
-- Name: feature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feature (
    id numeric(18,0) NOT NULL,
    feature_name character varying(255),
    feature_type character varying(10),
    user_key character varying(255)
);


ALTER TABLE public.feature OWNER TO postgres;

--
-- Name: fieldconfigscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldconfigscheme (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE public.fieldconfigscheme OWNER TO postgres;

--
-- Name: fieldconfigschemeissuetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldconfigschemeissuetype (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    fieldconfigscheme numeric(18,0),
    fieldconfiguration numeric(18,0)
);


ALTER TABLE public.fieldconfigschemeissuetype OWNER TO postgres;

--
-- Name: fieldconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldconfiguration (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE public.fieldconfiguration OWNER TO postgres;

--
-- Name: fieldlayout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayout (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    layout_type character varying(255),
    layoutscheme numeric(18,0)
);


ALTER TABLE public.fieldlayout OWNER TO postgres;

--
-- Name: fieldlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldlayout numeric(18,0),
    fieldidentifier character varying(255),
    description text,
    verticalposition numeric(18,0),
    ishidden character varying(60),
    isrequired character varying(60),
    renderertype character varying(255)
);


ALTER TABLE public.fieldlayoutitem OWNER TO postgres;

--
-- Name: fieldlayoutscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.fieldlayoutscheme OWNER TO postgres;

--
-- Name: fieldlayoutschemeassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutschemeassociation (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    project numeric(18,0),
    fieldlayoutscheme numeric(18,0)
);


ALTER TABLE public.fieldlayoutschemeassociation OWNER TO postgres;

--
-- Name: fieldlayoutschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    issuetype character varying(255),
    fieldlayout numeric(18,0)
);


ALTER TABLE public.fieldlayoutschemeentity OWNER TO postgres;

--
-- Name: fieldscreen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreen (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.fieldscreen OWNER TO postgres;

--
-- Name: fieldscreenlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreenlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldidentifier character varying(255),
    sequence numeric(18,0),
    fieldscreentab numeric(18,0)
);


ALTER TABLE public.fieldscreenlayoutitem OWNER TO postgres;

--
-- Name: fieldscreenscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.fieldscreenscheme OWNER TO postgres;

--
-- Name: fieldscreenschemeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreenschemeitem (
    id numeric(18,0) NOT NULL,
    operation numeric(18,0),
    fieldscreen numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE public.fieldscreenschemeitem OWNER TO postgres;

--
-- Name: fieldscreentab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreentab (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fieldscreen numeric(18,0)
);


ALTER TABLE public.fieldscreentab OWNER TO postgres;

--
-- Name: fileattachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fileattachment (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    mimetype character varying(255),
    filename character varying(255),
    created timestamp with time zone,
    filesize numeric(18,0),
    author character varying(255),
    zip numeric(9,0),
    thumbnailable numeric(9,0)
);


ALTER TABLE public.fileattachment OWNER TO postgres;

--
-- Name: filtersubscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filtersubscription (
    id numeric(18,0) NOT NULL,
    filter_i_d numeric(18,0),
    username character varying(60),
    groupname character varying(60),
    last_run timestamp with time zone,
    email_on_empty character varying(10)
);


ALTER TABLE public.filtersubscription OWNER TO postgres;

--
-- Name: gadgetuserpreference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gadgetuserpreference (
    id numeric(18,0) NOT NULL,
    portletconfiguration numeric(18,0),
    userprefkey character varying(255),
    userprefvalue text
);


ALTER TABLE public.gadgetuserpreference OWNER TO postgres;

--
-- Name: genericconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genericconfiguration (
    id numeric(18,0) NOT NULL,
    datatype character varying(60),
    datakey character varying(60),
    xmlvalue text
);


ALTER TABLE public.genericconfiguration OWNER TO postgres;

--
-- Name: globalpermissionentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globalpermissionentry (
    id numeric(18,0) NOT NULL,
    permission character varying(255),
    group_id character varying(255)
);


ALTER TABLE public.globalpermissionentry OWNER TO postgres;

--
-- Name: groupbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groupbase (
    id numeric(18,0) NOT NULL,
    groupname character varying(255)
);


ALTER TABLE public.groupbase OWNER TO postgres;

--
-- Name: issue_field_option; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue_field_option (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    field_key character varying(255),
    option_value character varying(255),
    properties text
);


ALTER TABLE public.issue_field_option OWNER TO postgres;

--
-- Name: issue_field_option_scope; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue_field_option_scope (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    entity_id character varying(255),
    scope_type character varying(255)
);


ALTER TABLE public.issue_field_option_scope OWNER TO postgres;

--
-- Name: issuelink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuelink (
    id numeric(18,0) NOT NULL,
    linktype numeric(18,0),
    source numeric(18,0),
    destination numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.issuelink OWNER TO postgres;

--
-- Name: issuelinktype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuelinktype (
    id numeric(18,0) NOT NULL,
    linkname character varying(255),
    inward character varying(255),
    outward character varying(255),
    pstyle character varying(60)
);


ALTER TABLE public.issuelinktype OWNER TO postgres;

--
-- Name: issuesecurityscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuesecurityscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    defaultlevel numeric(18,0)
);


ALTER TABLE public.issuesecurityscheme OWNER TO postgres;

--
-- Name: issuestatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuestatus (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    statuscategory numeric(18,0)
);


ALTER TABLE public.issuestatus OWNER TO postgres;

--
-- Name: issuetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuetype (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    pstyle character varying(60),
    description text,
    iconurl character varying(255),
    avatar numeric(18,0)
);


ALTER TABLE public.issuetype OWNER TO postgres;

--
-- Name: issuetypescreenscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuetypescreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.issuetypescreenscheme OWNER TO postgres;

--
-- Name: issuetypescreenschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuetypescreenschemeentity (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    scheme numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE public.issuetypescreenschemeentity OWNER TO postgres;

--
-- Name: jiraaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraaction (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    actiontype character varying(255),
    actionlevel character varying(255),
    rolelevel numeric(18,0),
    actionbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    actionnum numeric(18,0)
);


ALTER TABLE public.jiraaction OWNER TO postgres;

--
-- Name: jiradraftworkflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiradraftworkflows (
    id numeric(18,0) NOT NULL,
    parentname character varying(255),
    descriptor text
);


ALTER TABLE public.jiradraftworkflows OWNER TO postgres;

--
-- Name: jiraeventtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraeventtype (
    id numeric(18,0) NOT NULL,
    template_id numeric(18,0),
    name character varying(255),
    description text,
    event_type character varying(60)
);


ALTER TABLE public.jiraeventtype OWNER TO postgres;

--
-- Name: jiraissue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraissue (
    id numeric(18,0) NOT NULL,
    pkey character varying(255),
    issuenum numeric(18,0),
    project numeric(18,0),
    reporter character varying(255),
    assignee character varying(255),
    creator character varying(255),
    issuetype character varying(255),
    summary character varying(255),
    description text,
    environment text,
    priority character varying(255),
    resolution character varying(255),
    issuestatus character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    duedate timestamp with time zone,
    resolutiondate timestamp with time zone,
    votes numeric(18,0),
    watches numeric(18,0),
    timeoriginalestimate numeric(18,0),
    timeestimate numeric(18,0),
    timespent numeric(18,0),
    workflow_id numeric(18,0),
    security numeric(18,0),
    fixfor numeric(18,0),
    component numeric(18,0),
    archived character(1),
    archivedby character varying(255),
    archiveddate timestamp with time zone
);


ALTER TABLE public.jiraissue OWNER TO postgres;

--
-- Name: jiraperms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraperms (
    id numeric(18,0) NOT NULL,
    permtype numeric(18,0),
    projectid numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE public.jiraperms OWNER TO postgres;

--
-- Name: jiraworkflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraworkflows (
    id numeric(18,0) NOT NULL,
    workflowname character varying(255),
    creatorname character varying(255),
    descriptor text,
    islocked character varying(60)
);


ALTER TABLE public.jiraworkflows OWNER TO postgres;

--
-- Name: jiraworkflowstatuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraworkflowstatuses (
    id numeric(18,0) NOT NULL,
    status character varying(255),
    parentname character varying(255)
);


ALTER TABLE public.jiraworkflowstatuses OWNER TO postgres;

--
-- Name: jquartz_blob_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_blob_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE public.jquartz_blob_triggers OWNER TO postgres;

--
-- Name: jquartz_calendars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_calendars (
    sched_name character varying(120),
    calendar_name character varying(200) NOT NULL,
    calendar bytea
);


ALTER TABLE public.jquartz_calendars OWNER TO postgres;

--
-- Name: jquartz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_cron_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120),
    time_zone_id character varying(80)
);


ALTER TABLE public.jquartz_cron_triggers OWNER TO postgres;

--
-- Name: jquartz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_fired_triggers (
    sched_name character varying(120),
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200),
    trigger_group character varying(200),
    is_volatile boolean,
    instance_name character varying(200),
    fired_time numeric(18,0),
    sched_time numeric(18,0),
    priority numeric(9,0),
    state character varying(16),
    job_name character varying(200),
    job_group character varying(200),
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean
);


ALTER TABLE public.jquartz_fired_triggers OWNER TO postgres;

--
-- Name: jquartz_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_job_details (
    sched_name character varying(120),
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250),
    is_durable boolean,
    is_volatile boolean,
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean,
    job_data bytea
);


ALTER TABLE public.jquartz_job_details OWNER TO postgres;

--
-- Name: jquartz_job_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_job_listeners (
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    job_listener character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_job_listeners OWNER TO postgres;

--
-- Name: jquartz_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_locks (
    sched_name character varying(120),
    lock_name character varying(40) NOT NULL
);


ALTER TABLE public.jquartz_locks OWNER TO postgres;

--
-- Name: jquartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_paused_trigger_grps (
    sched_name character varying(120),
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_paused_trigger_grps OWNER TO postgres;

--
-- Name: jquartz_scheduler_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_scheduler_state (
    sched_name character varying(120),
    instance_name character varying(200) NOT NULL,
    last_checkin_time numeric(18,0),
    checkin_interval numeric(18,0)
);


ALTER TABLE public.jquartz_scheduler_state OWNER TO postgres;

--
-- Name: jquartz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_simple_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count numeric(18,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(18,0)
);


ALTER TABLE public.jquartz_simple_triggers OWNER TO postgres;

--
-- Name: jquartz_simprop_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_simprop_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 numeric(9,0),
    int_prop_2 numeric(9,0),
    long_prop_1 numeric(18,0),
    long_prop_2 numeric(18,0),
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
);


ALTER TABLE public.jquartz_simprop_triggers OWNER TO postgres;

--
-- Name: jquartz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_trigger_listeners (
    trigger_name character varying(200),
    trigger_group character varying(200) NOT NULL,
    trigger_listener character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_trigger_listeners OWNER TO postgres;

--
-- Name: jquartz_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_volatile boolean,
    description character varying(250),
    next_fire_time numeric(18,0),
    prev_fire_time numeric(18,0),
    priority numeric(9,0),
    trigger_state character varying(16),
    trigger_type character varying(8),
    start_time numeric(18,0),
    end_time numeric(18,0),
    calendar_name character varying(200),
    misfire_instr numeric(4,0),
    job_data bytea
);


ALTER TABLE public.jquartz_triggers OWNER TO postgres;

--
-- Name: label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label (
    id numeric(18,0) NOT NULL,
    fieldid numeric(18,0),
    issue numeric(18,0),
    label character varying(255)
);


ALTER TABLE public.label OWNER TO postgres;

--
-- Name: licenserolesdefault; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenserolesdefault (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255)
);


ALTER TABLE public.licenserolesdefault OWNER TO postgres;

--
-- Name: licenserolesgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenserolesgroup (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255),
    group_id character varying(255),
    primary_group character(1)
);


ALTER TABLE public.licenserolesgroup OWNER TO postgres;

--
-- Name: listenerconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listenerconfig (
    id numeric(18,0) NOT NULL,
    clazz character varying(255),
    listenername character varying(255)
);


ALTER TABLE public.listenerconfig OWNER TO postgres;

--
-- Name: mailserver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mailserver (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    mailfrom character varying(255),
    prefix character varying(60),
    smtp_port character varying(60),
    protocol character varying(60),
    server_type character varying(60),
    servername character varying(255),
    jndilocation character varying(255),
    mailusername character varying(255),
    mailpassword character varying(255),
    istlsrequired character varying(60),
    timeout numeric(18,0),
    socks_port character varying(60),
    socks_host character varying(60)
);


ALTER TABLE public.mailserver OWNER TO postgres;

--
-- Name: managedconfigurationitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.managedconfigurationitem (
    id numeric(18,0) NOT NULL,
    item_id character varying(255),
    item_type character varying(255),
    managed character varying(10),
    access_level character varying(255),
    source character varying(255),
    description_key character varying(255)
);


ALTER TABLE public.managedconfigurationitem OWNER TO postgres;

--
-- Name: membershipbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membershipbase (
    id numeric(18,0) NOT NULL,
    user_name character varying(255),
    group_name character varying(255)
);


ALTER TABLE public.membershipbase OWNER TO postgres;

--
-- Name: moved_issue_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moved_issue_key (
    id numeric(18,0) NOT NULL,
    old_issue_key character varying(255),
    issue_id numeric(18,0)
);


ALTER TABLE public.moved_issue_key OWNER TO postgres;

--
-- Name: nodeassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nodeassociation (
    source_node_id numeric(18,0) NOT NULL,
    source_node_entity character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0)
);


ALTER TABLE public.nodeassociation OWNER TO postgres;

--
-- Name: nodeindexcounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nodeindexcounter (
    id numeric(18,0) NOT NULL,
    node_id character varying(60),
    sending_node_id character varying(60),
    index_operation_id numeric(18,0)
);


ALTER TABLE public.nodeindexcounter OWNER TO postgres;

--
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    event character varying(60),
    event_type_id numeric(18,0),
    template_id numeric(18,0),
    notif_type character varying(60),
    notif_parameter character varying(60)
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- Name: notificationinstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notificationinstance (
    id numeric(18,0) NOT NULL,
    notificationtype character varying(60),
    source numeric(18,0),
    emailaddress character varying(255),
    messageid character varying(255)
);


ALTER TABLE public.notificationinstance OWNER TO postgres;

--
-- Name: notificationscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notificationscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.notificationscheme OWNER TO postgres;

--
-- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumername character varying(255),
    consumer_key character varying(255),
    consumerservice character varying(255),
    public_key text,
    private_key text,
    description text,
    callback text,
    signature_method character varying(60),
    shared_secret text
);


ALTER TABLE public.oauthconsumer OWNER TO postgres;

--
-- Name: oauthconsumertoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthconsumertoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token_key character varying(255),
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255)
);


ALTER TABLE public.oauthconsumertoken OWNER TO postgres;

--
-- Name: oauthspconsumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthspconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumer_key character varying(255),
    consumername character varying(255),
    public_key text,
    description text,
    callback text,
    two_l_o_allowed character varying(60),
    executing_two_l_o_user character varying(255),
    two_l_o_impersonation_allowed character varying(60),
    three_l_o_allowed character varying(60)
);


ALTER TABLE public.oauthspconsumer OWNER TO postgres;

--
-- Name: oauthsptoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthsptoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255),
    username character varying(255),
    ttl numeric(18,0),
    spauth character varying(60),
    callback text,
    spverifier character varying(255),
    spversion character varying(60),
    session_handle character varying(255),
    session_creation_time timestamp with time zone,
    session_last_renewal_time timestamp with time zone,
    session_time_to_live timestamp with time zone
);


ALTER TABLE public.oauthsptoken OWNER TO postgres;

--
-- Name: optionconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.optionconfiguration (
    id numeric(18,0) NOT NULL,
    fieldid character varying(60),
    optionid character varying(60),
    fieldconfig numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.optionconfiguration OWNER TO postgres;

--
-- Name: os_currentstep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_currentstep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(255),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(255)
);


ALTER TABLE public.os_currentstep OWNER TO postgres;

--
-- Name: os_currentstep_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_currentstep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE public.os_currentstep_prev OWNER TO postgres;

--
-- Name: os_historystep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_historystep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(255),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(255)
);


ALTER TABLE public.os_historystep OWNER TO postgres;

--
-- Name: os_historystep_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_historystep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE public.os_historystep_prev OWNER TO postgres;

--
-- Name: os_wfentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_wfentry (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    initialized numeric(9,0),
    state numeric(9,0)
);


ALTER TABLE public.os_wfentry OWNER TO postgres;

--
-- Name: permissionscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissionscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.permissionscheme OWNER TO postgres;

--
-- Name: permissionschemeattribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissionschemeattribute (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    attribute_key character varying(255),
    attribute_value text
);


ALTER TABLE public.permissionschemeattribute OWNER TO postgres;

--
-- Name: pluginstate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pluginstate (
    pluginkey character varying(255) NOT NULL,
    pluginenabled character varying(60)
);


ALTER TABLE public.pluginstate OWNER TO postgres;

--
-- Name: pluginversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pluginversion (
    id numeric(18,0) NOT NULL,
    pluginname character varying(255),
    pluginkey character varying(255),
    pluginversion character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.pluginversion OWNER TO postgres;

--
-- Name: portalpage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.portalpage (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    pagename character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fav_count numeric(18,0),
    layout character varying(255),
    ppversion numeric(18,0)
);


ALTER TABLE public.portalpage OWNER TO postgres;

--
-- Name: portletconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.portletconfiguration (
    id numeric(18,0) NOT NULL,
    portalpage numeric(18,0),
    portlet_id character varying(255),
    column_number numeric(9,0),
    positionseq numeric(9,0),
    gadget_xml text,
    color character varying(255),
    dashboard_module_complete_key text
);


ALTER TABLE public.portletconfiguration OWNER TO postgres;

--
-- Name: priority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priority (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    status_color character varying(60)
);


ALTER TABLE public.priority OWNER TO postgres;

--
-- Name: productlicense; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productlicense (
    id numeric(18,0) NOT NULL,
    license text
);


ALTER TABLE public.productlicense OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    id numeric(18,0) NOT NULL,
    pname character varying(255),
    url character varying(255),
    lead character varying(255),
    description text,
    pkey character varying(255),
    pcounter numeric(18,0),
    assigneetype numeric(18,0),
    avatar numeric(18,0),
    originalkey character varying(255),
    projecttype character varying(255)
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_key (
    id numeric(18,0) NOT NULL,
    project_id numeric(18,0),
    project_key character varying(255)
);


ALTER TABLE public.project_key OWNER TO postgres;

--
-- Name: projectcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectcategory (
    id numeric(18,0) NOT NULL,
    cname character varying(255),
    description text
);


ALTER TABLE public.projectcategory OWNER TO postgres;

--
-- Name: projectchangedtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectchangedtime (
    project_id numeric(18,0) NOT NULL,
    issue_changed_time timestamp with time zone
);


ALTER TABLE public.projectchangedtime OWNER TO postgres;

--
-- Name: projectrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectrole (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.projectrole OWNER TO postgres;

--
-- Name: projectroleactor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectroleactor (
    id numeric(18,0) NOT NULL,
    pid numeric(18,0),
    projectroleid numeric(18,0),
    roletype character varying(255),
    roletypeparameter character varying(255)
);


ALTER TABLE public.projectroleactor OWNER TO postgres;

--
-- Name: projectversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectversion (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    vname character varying(255),
    description text,
    sequence numeric(18,0),
    released character varying(10),
    archived character varying(10),
    url character varying(255),
    startdate timestamp with time zone,
    releasedate timestamp with time zone
);


ALTER TABLE public.projectversion OWNER TO postgres;

--
-- Name: propertydata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertydata (
    id numeric(18,0) NOT NULL,
    propertyvalue oid
);


ALTER TABLE public.propertydata OWNER TO postgres;

--
-- Name: propertydate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertydate (
    id numeric(18,0) NOT NULL,
    propertyvalue timestamp with time zone
);


ALTER TABLE public.propertydate OWNER TO postgres;

--
-- Name: propertydecimal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertydecimal (
    id numeric(18,0) NOT NULL,
    propertyvalue double precision
);


ALTER TABLE public.propertydecimal OWNER TO postgres;

--
-- Name: propertyentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertyentry (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    propertytype numeric(9,0)
);


ALTER TABLE public.propertyentry OWNER TO postgres;

--
-- Name: propertynumber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertynumber (
    id numeric(18,0) NOT NULL,
    propertyvalue numeric(18,0)
);


ALTER TABLE public.propertynumber OWNER TO postgres;

--
-- Name: propertystring; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertystring (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.propertystring OWNER TO postgres;

--
-- Name: propertytext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertytext (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.propertytext OWNER TO postgres;

--
-- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_calendars (
    id numeric(18,0),
    calendar_name character varying(255) NOT NULL,
    calendar text
);


ALTER TABLE public.qrtz_calendars OWNER TO postgres;

--
-- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_cron_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    cronexperssion character varying(255)
);


ALTER TABLE public.qrtz_cron_triggers OWNER TO postgres;

--
-- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_fired_triggers (
    id numeric(18,0),
    entry_id character varying(255) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255),
    fired_time timestamp with time zone,
    trigger_state character varying(255)
);


ALTER TABLE public.qrtz_fired_triggers OWNER TO postgres;

--
-- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_job_details (
    id numeric(18,0) NOT NULL,
    job_name character varying(255),
    job_group character varying(255),
    class_name character varying(255),
    is_durable character varying(60),
    is_stateful character varying(60),
    requests_recovery character varying(60),
    job_data character varying(255)
);


ALTER TABLE public.qrtz_job_details OWNER TO postgres;

--
-- Name: qrtz_job_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_job_listeners (
    id numeric(18,0) NOT NULL,
    job numeric(18,0),
    job_listener character varying(255)
);


ALTER TABLE public.qrtz_job_listeners OWNER TO postgres;

--
-- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_simple_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    repeat_count numeric(9,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(9,0)
);


ALTER TABLE public.qrtz_simple_triggers OWNER TO postgres;

--
-- Name: qrtz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_trigger_listeners (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255)
);


ALTER TABLE public.qrtz_trigger_listeners OWNER TO postgres;

--
-- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_triggers (
    id numeric(18,0) NOT NULL,
    trigger_name character varying(255),
    trigger_group character varying(255),
    job numeric(18,0),
    next_fire timestamp with time zone,
    trigger_state character varying(255),
    trigger_type character varying(60),
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    calendar_name character varying(255),
    misfire_instr numeric(9,0)
);


ALTER TABLE public.qrtz_triggers OWNER TO postgres;

--
-- Name: reindex_component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reindex_component (
    id numeric(18,0) NOT NULL,
    request_id numeric(18,0),
    affected_index character varying(60),
    entity_type character varying(60)
);


ALTER TABLE public.reindex_component OWNER TO postgres;

--
-- Name: reindex_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reindex_request (
    id numeric(18,0) NOT NULL,
    type character varying(60),
    request_time timestamp with time zone,
    start_time timestamp with time zone,
    completion_time timestamp with time zone,
    status character varying(60),
    execution_node_id character varying(60),
    query text
);


ALTER TABLE public.reindex_request OWNER TO postgres;

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remembermetoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    username character varying(255)
);


ALTER TABLE public.remembermetoken OWNER TO postgres;

--
-- Name: remotelink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remotelink (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    globalid character varying(255),
    title character varying(255),
    summary text,
    url text,
    iconurl text,
    icontitle text,
    relationship character varying(255),
    resolved character(1),
    statusname character varying(255),
    statusdescription text,
    statusiconurl text,
    statusicontitle text,
    statusiconlink text,
    statuscategorykey character varying(255),
    statuscategorycolorname character varying(255),
    applicationtype character varying(255),
    applicationname character varying(255)
);


ALTER TABLE public.remotelink OWNER TO postgres;

--
-- Name: replicatedindexoperation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.replicatedindexoperation (
    id numeric(18,0) NOT NULL,
    index_time timestamp with time zone,
    node_id character varying(60),
    affected_index character varying(60),
    entity_type character varying(60),
    affected_ids text,
    operation character varying(60),
    filename character varying(255)
);


ALTER TABLE public.replicatedindexoperation OWNER TO postgres;

--
-- Name: resolution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resolution (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255)
);


ALTER TABLE public.resolution OWNER TO postgres;

--
-- Name: rundetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rundetails (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    start_time timestamp with time zone,
    run_duration numeric(18,0),
    run_outcome character(1),
    info_message character varying(255)
);


ALTER TABLE public.rundetails OWNER TO postgres;

--
-- Name: schemeissuesecurities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schemeissuesecurities (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    security numeric(18,0),
    sec_type character varying(255),
    sec_parameter character varying(255)
);


ALTER TABLE public.schemeissuesecurities OWNER TO postgres;

--
-- Name: schemeissuesecuritylevels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schemeissuesecuritylevels (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    scheme numeric(18,0)
);


ALTER TABLE public.schemeissuesecuritylevels OWNER TO postgres;

--
-- Name: schemepermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schemepermissions (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    permission numeric(18,0),
    perm_type character varying(255),
    perm_parameter character varying(255),
    permission_key character varying(255)
);


ALTER TABLE public.schemepermissions OWNER TO postgres;

--
-- Name: searchrequest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.searchrequest (
    id numeric(18,0) NOT NULL,
    filtername character varying(255),
    authorname character varying(255),
    description text,
    username character varying(255),
    groupname character varying(255),
    projectid numeric(18,0),
    reqcontent text,
    fav_count numeric(18,0),
    filtername_lower character varying(255)
);


ALTER TABLE public.searchrequest OWNER TO postgres;

--
-- Name: sequence_value_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sequence_value_item (
    seq_name character varying(60) NOT NULL,
    seq_id numeric(18,0)
);


ALTER TABLE public.sequence_value_item OWNER TO postgres;

--
-- Name: serviceconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serviceconfig (
    id numeric(18,0) NOT NULL,
    delaytime numeric(18,0),
    clazz character varying(255),
    servicename character varying(255),
    cron_expression character varying(255)
);


ALTER TABLE public.serviceconfig OWNER TO postgres;

--
-- Name: sharepermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sharepermissions (
    id numeric(18,0) NOT NULL,
    entityid numeric(18,0),
    entitytype character varying(60),
    sharetype character varying(10),
    param1 character varying(255),
    param2 character varying(60),
    rights numeric(9,0)
);


ALTER TABLE public.sharepermissions OWNER TO postgres;

--
-- Name: tempattachmentsmonitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tempattachmentsmonitor (
    temporary_attachment_id character varying(255) NOT NULL,
    form_token character varying(255),
    file_name character varying(255),
    content_type character varying(255),
    file_size numeric(18,0),
    created_time numeric(18,0)
);


ALTER TABLE public.tempattachmentsmonitor OWNER TO postgres;

--
-- Name: trackback_ping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trackback_ping (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    url character varying(255),
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.trackback_ping OWNER TO postgres;

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trustedapp (
    id numeric(18,0) NOT NULL,
    application_id character varying(255),
    name character varying(255),
    public_key text,
    ip_match text,
    url_match text,
    timeout numeric(18,0),
    created timestamp with time zone,
    created_by character varying(255),
    updated timestamp with time zone,
    updated_by character varying(255)
);


ALTER TABLE public.trustedapp OWNER TO postgres;

--
-- Name: upgradehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradehistory (
    id numeric(18,0),
    upgradeclass character varying(255) NOT NULL,
    targetbuild character varying(255),
    status character varying(255),
    downgradetaskrequired character(1)
);


ALTER TABLE public.upgradehistory OWNER TO postgres;

--
-- Name: upgradetaskhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradetaskhistory (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10)
);


ALTER TABLE public.upgradetaskhistory OWNER TO postgres;

--
-- Name: upgradetaskhistoryauditlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradetaskhistoryauditlog (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10),
    timeperformed timestamp with time zone,
    action character varying(10)
);


ALTER TABLE public.upgradetaskhistoryauditlog OWNER TO postgres;

--
-- Name: upgradeversionhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradeversionhistory (
    id numeric(18,0),
    timeperformed timestamp with time zone,
    targetbuild character varying(255) NOT NULL,
    targetversion character varying(255)
);


ALTER TABLE public.upgradeversionhistory OWNER TO postgres;

--
-- Name: userassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userassociation (
    source_name character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0),
    created timestamp with time zone
);


ALTER TABLE public.userassociation OWNER TO postgres;

--
-- Name: userbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userbase (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    password_hash character varying(255)
);


ALTER TABLE public.userbase OWNER TO postgres;

--
-- Name: userhistoryitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userhistoryitem (
    id numeric(18,0) NOT NULL,
    entitytype character varying(10),
    entityid character varying(60),
    username character varying(255),
    lastviewed numeric(18,0),
    data text
);


ALTER TABLE public.userhistoryitem OWNER TO postgres;

--
-- Name: userpickerfilter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userpickerfilter (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    enabled character varying(60)
);


ALTER TABLE public.userpickerfilter OWNER TO postgres;

--
-- Name: userpickerfiltergroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userpickerfiltergroup (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE public.userpickerfiltergroup OWNER TO postgres;

--
-- Name: userpickerfilterrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userpickerfilterrole (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    projectroleid numeric(18,0)
);


ALTER TABLE public.userpickerfilterrole OWNER TO postgres;

--
-- Name: versioncontrol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versioncontrol (
    id numeric(18,0) NOT NULL,
    vcsname character varying(255),
    vcsdescription character varying(255),
    vcstype character varying(255)
);


ALTER TABLE public.versioncontrol OWNER TO postgres;

--
-- Name: votehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votehistory (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    votes numeric(18,0),
    "timestamp" timestamp with time zone
);


ALTER TABLE public.votehistory OWNER TO postgres;

--
-- Name: workflowscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.workflowscheme OWNER TO postgres;

--
-- Name: workflowschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE public.workflowschemeentity OWNER TO postgres;

--
-- Name: worklog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worklog (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    grouplevel character varying(255),
    rolelevel numeric(18,0),
    worklogbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    startdate timestamp with time zone,
    timeworked numeric(18,0)
);


ALTER TABLE public.worklog OWNER TO postgres;

--
-- Name: AO_0A5972_NOTIFICATION_SETTING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_0A5972_NOTIFICATION_SETTING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"'::regclass);


--
-- Name: AO_21D670_WHITELIST_RULES ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"'::regclass);


--
-- Name: AO_21F425_USER_PROPERTY_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"'::regclass);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: AO_3B1893_LOOP_DETECTION ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_3B1893_LOOP_DETECTION_ID_seq"'::regclass);


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: AO_4789DD_PROPERTIES ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_PROPERTIES_ID_seq"'::regclass);


--
-- Name: AO_4789DD_READ_NOTIFICATIONS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: AO_4789DD_TASK_MONITOR ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_TASK_MONITOR_ID_seq"'::regclass);


--
-- Name: AO_4AEACD_WEBHOOK_DAO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"'::regclass);


--
-- Name: AO_550953_SHORTCUT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_550953_SHORTCUT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_550953_SHORTCUT_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTOR_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_OBJECT_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_TARGET_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_587B34_PROJECT_CONFIG ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_587B34_PROJECT_CONFIG_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"'::regclass);


--
-- Name: AO_733371_EVENT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_733371_EVENT_ID_seq"'::regclass);


--
-- Name: AO_733371_EVENT_PARAMETER ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_733371_EVENT_PARAMETER_ID_seq"'::regclass);


--
-- Name: AO_733371_EVENT_RECIPIENT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_733371_EVENT_RECIPIENT_ID_seq"'::regclass);


--
-- Name: AO_97EDAB_USERINVITATION ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_97EDAB_USERINVITATION_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"'::regclass);


--
-- Name: AO_C16815_ALERT_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_C16815_ALERT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C16815_ALERT_AO_ID_seq"'::regclass);


--
-- Name: AO_ED669C_SEEN_ASSERTIONS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"'::regclass);


--
-- Data for Name: AO_0A5972_NOTIFICATION_SETTING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_0A5972_NOTIFICATION_SETTING" ("ID", "KEY", "TYPE", "USER_KEY", "VALUE") FROM stdin;
\.


--
-- Data for Name: AO_0A5972_PUSH_REGISTRATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_0A5972_PUSH_REGISTRATION" ("BUILD", "ENDPOINT", "ID", "OS", "TOKEN", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_0AC321_RECOMMENDATION_AO" ("CATEGORY", "CUSTOM_FIELD_ID", "ID", "NAME", "PERFORMANCE_IMPACT", "PROJECT_IDS", "RESOLVED", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE") FROM stdin;
f	http://www.atlassian.com/*	1	WILDCARD_EXPRESSION
f	http://www.atlassian.com/*	2	WILDCARD_EXPRESSION
\.


--
-- Data for Name: AO_21F425_MESSAGE_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21F425_MESSAGE_AO" ("CONTENT", "ID") FROM stdin;
\.


--
-- Data for Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21F425_MESSAGE_MAPPING_AO" ("ID", "MESSAGE_ID", "USER_HASH") FROM stdin;
\.


--
-- Data for Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21F425_USER_PROPERTY_AO" ("ID", "KEY", "USER", "VALUE") FROM stdin;
\.


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Data for Name: AO_3B1893_LOOP_DETECTION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_3B1893_LOOP_DETECTION" ("COUNTER", "EXPIRES_AT", "ID", "SENDER_EMAIL") FROM stdin;
\.


--
-- Data for Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
JIRA	com.atlassian.troubleshooting.plugin-jira:supportedDatabaseHealthCheck	Checks if your Jira instance is using a supported database model and version. Using a supported database ensures Jira's data integrity and avoids unexpected behaviour when using Jira applications.	2020-07-09 09:16:43.131	PostgreSQL 11.8 is not supported. You should migrate to a supported database version.	2	f	f	\N	WARNING	Supported database
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if Jira is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-07-09 09:16:43.131	Jira is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	1	t	t	2020-07-09 09:53:19.581	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:clusterIndexReplicationHealthCheck	Checks that the index is being replicated across the cluster in a timely fashion.	2020-07-09 09:53:19.581	Index replication for cluster node 'jira-node2' is behind by 2,924 seconds.	3	t	t	2020-07-09 10:12:54.902	CRITICAL	Cluster Index Replication
JIRA	com.atlassian.troubleshooting.plugin-jira:clusterReplicationHealthCheck	Checks that the cache replication is working between all nodes in the cluster.	2020-07-09 09:53:19.581	The node jira-node1 is not replicating	4	t	t	2020-07-09 11:12:48.57	CRITICAL	Cluster Cache Replication
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if Jira is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-07-09 10:12:54.902	Jira is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	5	t	t	2020-07-09 11:12:48.57	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:clusterIndexReplicationHealthCheck	Checks that the index is being replicated across the cluster in a timely fashion.	2020-07-09 11:21:51.727	Index replication for cluster node 'jira-node1' is behind by 3,699 seconds.	7	t	t	2020-07-09 11:37:13.007	CRITICAL	Cluster Index Replication
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if Jira is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-07-09 11:21:51.727	Jira is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	6	t	t	2020-07-09 11:37:13.007	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:clusterReplicationHealthCheck	Checks that the cache replication is working between all nodes in the cluster.	2020-07-09 11:21:51.727	The node jira-node2 is not replicating	8	t	t	2020-07-09 12:53:07.92	CRITICAL	Cluster Cache Replication
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if Jira is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-07-09 12:53:07.92	Jira is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	9	t	t	2020-07-09 13:53:03.333	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if Jira is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-07-09 15:00:25.313	Jira is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	10	f	f	\N	WARNING	Gadget feed URL
\.


--
-- Data for Name: AO_4789DD_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1594306825520
\.


--
-- Data for Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
1	f	1	\N	\N	JIRAUSER10000
2	f	2	\N	\N	JIRAUSER10000
3	f	3	\N	\N	JIRAUSER10000
4	f	4	\N	\N	JIRAUSER10000
5	f	5	\N	\N	JIRAUSER10000
6	f	7	\N	\N	JIRAUSER10000
7	f	6	\N	\N	JIRAUSER10000
8	f	8	\N	\N	JIRAUSER10000
9	f	9	\N	\N	JIRAUSER10000
10	f	10	\N	\N	JIRAUSER10000
\.


--
-- Data for Name: AO_4789DD_TASK_MONITOR; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_TASK_MONITOR" ("CLUSTERED_TASK_ID", "CREATED_TIMESTAMP", "ID", "NODE_ID", "PROGRESS_MESSAGE", "PROGRESS_PERCENTAGE", "SERIALIZED_ERRORS", "SERIALIZED_WARNINGS", "TASK_ID", "TASK_MONITOR_KIND", "TASK_STATUS") FROM stdin;
\.


--
-- Data for Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4AEACD_WEBHOOK_DAO" ("ENABLED", "ENCODED_EVENTS", "FILTER", "ID", "JQL", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "REGISTRATION_METHOD", "URL", "PARAMETERS", "EXCLUDE_ISSUE_DETAILS") FROM stdin;
\.


--
-- Data for Name: AO_550953_SHORTCUT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_550953_SHORTCUT" ("ID", "NAME", "PROJECT_ID", "SHORTCUT_URL", "URL", "ICON") FROM stdin;
1	Project management ideas	10000	https://docs.atlassian.com/jira/jcore-docs-084/Project+management	\N	
2	Working in a project	10000	https://docs.atlassian.com/jira/jcore-docs-084/Working+in+a+project	\N	
\.


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_587B34_GLANCE_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_587B34_GLANCE_CONFIG" ("ROOM_ID", "STATE", "SYNC_NEEDED", "JQL", "APPLICATION_USER_KEY", "NAME") FROM stdin;
\.


--
-- Data for Name: AO_587B34_PROJECT_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_587B34_PROJECT_CONFIG" ("CONFIGURATION_GROUP_ID", "ID", "NAME", "NAME_UNIQUE_CONSTRAINT", "PROJECT_ID", "ROOM_ID", "VALUE") FROM stdin;
\.


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
\.


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
\.


--
-- Data for Name: AO_733371_EVENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_733371_EVENT" ("ACTION", "ACTION_ID", "CREATED", "EVENT_BUNDLE_ID", "EVENT_TYPE", "ID", "USER_KEY") FROM stdin;
\N	\N	2020-07-09 09:21:40.078	5bc0e9f3-f34a-4880-9c65-393019fe6e13	1	1	JIRAUSER10000
\N	\N	2020-07-09 09:23:46.863	fde57067-7814-475b-940b-753055cd6851	1	2	JIRAUSER10000
\N	\N	2020-07-09 09:23:59.774	4141f344-6aef-4488-8748-581f63b01071	1	3	JIRAUSER10000
\N	\N	2020-07-09 09:25:43.839	75a31d25-23f9-49e0-81a8-ee75c0f44247	1	4	JIRAUSER10000
\N	\N	2020-07-09 09:45:02.626	2f6a07d9-9e80-4deb-80e1-594380c057b2	1	5	JIRAUSER10000
\N	\N	2020-07-09 09:47:21.557	1e39ad93-4ee4-4732-b975-a074f2b1ac73	1	6	JIRAUSER10000
\N	\N	2020-07-09 09:50:02.876	bec3f4d5-e7da-438b-9aa5-fce40fe4874b	1	7	JIRAUSER10000
\N	\N	2020-07-09 10:19:44.051	916dc8e0-ea19-4e75-b13d-b7548f982207	1	8	JIRAUSER10000
\N	\N	2020-07-09 11:13:34.255	58e75dcf-9fc4-457c-84e4-65d8d0a38d18	1	9	JIRAUSER10000
\N	\N	2020-07-09 11:18:00.625	e55525b2-bd5e-40ed-b892-1b1ae5c108db	1	10	JIRAUSER10000
\N	\N	2020-07-09 11:19:58.514	5ce94bbe-9497-4f63-b7f4-6a723289d14a	1	11	JIRAUSER10000
\N	\N	2020-07-09 11:20:34.66	ef19c809-f430-4356-abca-04e21e4c9fb0	1	12	JIRAUSER10000
\N	\N	2020-07-09 11:20:46.496	f9ceed76-80d9-454a-908c-c9dc2f4f8f11	1	13	JIRAUSER10000
\N	\N	2020-07-09 11:24:38.02	ee9f5015-ae75-4016-8b69-d615d8215b10	1	14	JIRAUSER10000
\N	\N	2020-07-09 11:24:48.227	a8785626-8002-46cd-a6eb-489a7adf9d04	1	15	JIRAUSER10000
\N	\N	2020-07-09 11:24:54.298	dc48e854-444a-4eaf-a522-a189cf94ff9e	1	16	JIRAUSER10000
\N	\N	2020-07-09 11:25:05.168	aa789b15-c9a1-42ad-85ab-f58b54e1bc90	1	17	JIRAUSER10000
\N	\N	2020-07-09 11:26:15.796	cc60f113-1ff4-4ebd-b779-7430f62558a4	1	18	JIRAUSER10000
\N	\N	2020-07-09 11:29:15.812	24f0184d-6292-4e63-8e6d-397f5befed0e	1	19	JIRAUSER10000
\N	\N	2020-07-09 11:33:03.786	d15ada28-585d-4a16-8278-458f6a8488fa	1	20	JIRAUSER10000
\N	\N	2020-07-09 11:38:33.373	b1838b1a-8a51-447b-b3af-0c06207e8d3e	1	21	JIRAUSER10000
\N	\N	2020-07-09 11:41:08.108	fbba4ce7-9e09-4916-9bb0-bfbb840f9e3d	1	22	JIRAUSER10000
\N	\N	2020-07-09 11:41:47.624	2b1351e0-482f-462c-aff0-a51741f123f5	8	23	JIRAUSER10000
\N	\N	2020-07-09 11:44:53.209	7693af1a-078c-4e0e-8cbc-d0ccb1049d23	1	24	JIRAUSER10000
\N	\N	2020-07-09 15:22:12.795	eda659d4-4696-42ba-806f-e66376a73909	1	25	JIRAUSER10000
\.


--
-- Data for Name: AO_733371_EVENT_PARAMETER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_733371_EVENT_PARAMETER" ("EVENT_ID", "ID", "NAME", "VALUE") FROM stdin;
1	1	jira#issuetype#newstring#0	Task
1	2	object#issue#created_date#0	1594286498238
1	3	jira#summary#newstring#0	test1
1	4	object#issue#summary#0	test1
1	5	jira#issuetype#newvalue#0	10000
1	6	jira#reporter#newvalue#0	JIRAUSER10000
1	7	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
1	8	object#issue#status_category#0	new
1	9	object#issue#type#0	10000
1	10	object#issue#id#0	10000
1	11	jira#createddate#newvalue#0	1594286498238
1	12	object#project#from_name#0	pengwinn (Jira)
1	13	object#issue#status_id#0	10000
1	14	object#project#name#0	test
1	15	jira#reporter#newstring#0	pengwinn
1	16	jira#priority#newvalue#0	3
1	17	object#issue#status_name#0	To Do
1	18	object#project#id#0	10000
1	19	jira#priority#newstring#0	Medium
1	20	object#project#email#0	\N
1	21	object#issue#key#0	TEST-1
2	22	jira#issuetype#newstring#0	Task
2	23	object#issue#created_date#0	1594286624735
2	24	jira#summary#newstring#0	test2
2	25	object#issue#summary#0	test2
2	26	jira#issuetype#newvalue#0	10000
2	27	jira#reporter#newvalue#0	JIRAUSER10000
2	28	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
2	29	object#issue#status_category#0	new
2	30	object#issue#type#0	10000
2	31	object#issue#id#0	10001
2	32	jira#createddate#newvalue#0	1594286624735
2	33	object#project#from_name#0	pengwinn (Jira)
2	34	object#issue#status_id#0	10000
2	35	object#project#name#0	test
2	36	jira#reporter#newstring#0	pengwinn
2	37	jira#priority#newvalue#0	3
2	38	object#issue#status_name#0	To Do
2	39	object#project#id#0	10000
2	40	jira#priority#newstring#0	Medium
2	41	object#project#email#0	\N
2	42	object#issue#key#0	TEST-2
3	43	jira#issuetype#newstring#0	Task
3	44	object#issue#created_date#0	1594286639215
3	45	jira#summary#newstring#0	test3
3	46	object#issue#summary#0	test3
3	47	jira#issuetype#newvalue#0	10000
3	48	jira#reporter#newvalue#0	JIRAUSER10000
3	49	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
3	50	object#issue#status_category#0	new
3	51	object#issue#type#0	10000
3	52	object#issue#id#0	10002
3	53	jira#createddate#newvalue#0	1594286639215
3	54	object#project#from_name#0	pengwinn (Jira)
3	55	object#issue#status_id#0	10000
3	56	object#project#name#0	test
3	57	jira#reporter#newstring#0	pengwinn
3	58	jira#priority#newvalue#0	3
3	59	object#issue#status_name#0	To Do
3	60	object#project#id#0	10000
3	61	jira#priority#newstring#0	Medium
3	62	object#project#email#0	\N
3	63	object#issue#key#0	TEST-3
4	64	jira#issuetype#newstring#0	Task
4	65	object#issue#created_date#0	1594286743194
4	66	jira#summary#newstring#0	test4
4	67	object#issue#summary#0	test4
4	68	jira#issuetype#newvalue#0	10000
4	69	jira#reporter#newvalue#0	JIRAUSER10000
4	70	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
4	71	object#issue#status_category#0	new
4	72	object#issue#type#0	10000
4	73	object#issue#id#0	10003
4	74	jira#createddate#newvalue#0	1594286743194
4	75	object#project#from_name#0	pengwinn (Jira)
4	76	object#issue#status_id#0	10000
4	77	object#project#name#0	test
4	78	jira#reporter#newstring#0	pengwinn
4	79	jira#priority#newvalue#0	3
4	80	object#issue#status_name#0	To Do
4	81	object#project#id#0	10000
4	82	jira#priority#newstring#0	Medium
4	83	object#project#email#0	\N
4	84	object#issue#key#0	TEST-4
5	85	jira#issuetype#newstring#0	Task
5	86	object#issue#created_date#0	1594287901985
5	87	jira#summary#newstring#0	test5
5	88	object#issue#summary#0	test5
5	89	jira#issuetype#newvalue#0	10000
5	90	jira#reporter#newvalue#0	JIRAUSER10000
5	91	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
5	92	object#issue#status_category#0	new
5	93	object#issue#type#0	10000
5	94	object#issue#id#0	10004
5	95	jira#createddate#newvalue#0	1594287901985
5	96	object#project#from_name#0	pengwinn (Jira)
5	97	object#issue#status_id#0	10000
5	98	object#project#name#0	test
5	99	jira#reporter#newstring#0	pengwinn
5	100	jira#priority#newvalue#0	3
5	101	object#issue#status_name#0	To Do
5	102	object#project#id#0	10000
5	103	jira#priority#newstring#0	Medium
5	104	object#project#email#0	\N
5	105	object#issue#key#0	TEST-5
6	106	jira#issuetype#newstring#0	Task
6	107	object#issue#created_date#0	1594288041062
6	108	jira#summary#newstring#0	test6
6	109	object#issue#summary#0	test6
6	110	jira#issuetype#newvalue#0	10000
6	111	jira#reporter#newvalue#0	JIRAUSER10000
6	112	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
6	113	object#issue#status_category#0	new
6	114	object#issue#type#0	10000
6	115	object#issue#id#0	10005
6	116	jira#createddate#newvalue#0	1594288041062
6	117	object#project#from_name#0	pengwinn (Jira)
6	118	object#issue#status_id#0	10000
6	119	object#project#name#0	test
6	120	jira#reporter#newstring#0	pengwinn
6	121	jira#priority#newvalue#0	3
6	122	object#issue#status_name#0	To Do
6	123	object#project#id#0	10000
6	124	jira#priority#newstring#0	Medium
6	125	object#project#email#0	\N
6	126	object#issue#key#0	TEST-6
7	127	jira#issuetype#newstring#0	Task
7	128	object#issue#created_date#0	1594288202329
7	129	jira#summary#newstring#0	test7
7	130	object#issue#summary#0	test7
7	131	jira#issuetype#newvalue#0	10000
7	132	jira#reporter#newvalue#0	JIRAUSER10000
7	133	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
7	134	object#issue#status_category#0	new
7	135	object#issue#type#0	10000
7	136	object#issue#id#0	10006
7	137	jira#createddate#newvalue#0	1594288202329
7	138	object#project#from_name#0	pengwinn (Jira)
7	139	object#issue#status_id#0	10000
7	140	object#project#name#0	test
7	141	jira#reporter#newstring#0	pengwinn
7	142	jira#priority#newvalue#0	3
7	143	object#issue#status_name#0	To Do
7	144	object#project#id#0	10000
7	145	jira#priority#newstring#0	Medium
7	146	object#project#email#0	\N
7	147	object#issue#key#0	TEST-7
8	148	jira#issuetype#newstring#0	Task
8	149	object#issue#created_date#0	1594289978741
8	150	jira#summary#newstring#0	test8
8	151	object#issue#summary#0	test8
8	152	jira#issuetype#newvalue#0	10000
8	153	jira#reporter#newvalue#0	JIRAUSER10000
8	154	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
8	155	object#issue#status_category#0	new
8	156	object#issue#type#0	10000
8	157	object#issue#id#0	10100
8	158	jira#createddate#newvalue#0	1594289978741
8	159	object#project#from_name#0	pengwinn (Jira)
8	160	object#issue#status_id#0	10000
8	161	object#project#name#0	test
8	162	jira#reporter#newstring#0	pengwinn
8	163	jira#priority#newvalue#0	3
8	164	object#issue#status_name#0	To Do
8	165	object#project#id#0	10000
8	166	jira#priority#newstring#0	Medium
8	167	object#project#email#0	\N
8	168	object#issue#key#0	TEST-8
9	169	jira#issuetype#newstring#0	Task
9	170	object#issue#created_date#0	1594293213029
9	171	jira#summary#newstring#0	test9
9	172	object#issue#summary#0	test9
9	173	jira#issuetype#newvalue#0	10000
9	174	jira#reporter#newvalue#0	JIRAUSER10000
9	175	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
9	176	object#issue#status_category#0	new
9	177	object#issue#type#0	10000
9	178	object#issue#id#0	10101
9	179	jira#createddate#newvalue#0	1594293213029
9	180	object#project#from_name#0	pengwinn (Jira)
9	181	object#issue#status_id#0	10000
9	182	object#project#name#0	test
9	183	jira#reporter#newstring#0	pengwinn
9	184	jira#priority#newvalue#0	3
9	185	object#issue#status_name#0	To Do
9	186	object#project#id#0	10000
9	187	jira#priority#newstring#0	Medium
9	188	object#project#email#0	\N
9	189	object#issue#key#0	TEST-9
10	190	jira#issuetype#newstring#0	Task
10	191	object#issue#created_date#0	1594293479284
10	192	jira#summary#newstring#0	10
10	193	object#issue#summary#0	10
10	194	jira#issuetype#newvalue#0	10000
10	195	jira#reporter#newvalue#0	JIRAUSER10000
10	196	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
10	197	object#issue#status_category#0	new
10	198	object#issue#type#0	10000
10	199	object#issue#id#0	10102
10	200	jira#createddate#newvalue#0	1594293479284
10	201	object#project#from_name#0	pengwinn (Jira)
10	202	object#issue#status_id#0	10000
10	203	object#project#name#0	test
10	204	jira#reporter#newstring#0	pengwinn
10	205	jira#priority#newvalue#0	3
10	206	object#issue#status_name#0	To Do
10	207	object#project#id#0	10000
10	208	jira#priority#newstring#0	Medium
10	209	object#project#email#0	\N
10	210	object#issue#key#0	TEST-10
11	211	jira#issuetype#newstring#0	Task
11	212	object#issue#created_date#0	1594293597730
11	213	jira#summary#newstring#0	test11
11	214	object#issue#summary#0	test11
11	215	jira#issuetype#newvalue#0	10000
11	216	jira#reporter#newvalue#0	JIRAUSER10000
11	217	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
11	218	object#issue#status_category#0	new
11	219	object#issue#type#0	10000
11	220	object#issue#id#0	10103
11	221	jira#createddate#newvalue#0	1594293597730
11	222	object#project#from_name#0	pengwinn (Jira)
11	223	object#issue#status_id#0	10000
11	224	object#project#name#0	test
11	225	jira#reporter#newstring#0	pengwinn
11	226	jira#priority#newvalue#0	3
11	227	object#issue#status_name#0	To Do
11	228	object#project#id#0	10000
11	229	jira#priority#newstring#0	Medium
11	230	object#project#email#0	\N
11	231	object#issue#key#0	TEST-11
12	232	jira#issuetype#newstring#0	Task
12	233	object#issue#created_date#0	1594293633542
12	234	jira#summary#newstring#0	test12
12	235	object#issue#summary#0	test12
12	236	jira#issuetype#newvalue#0	10000
12	237	jira#reporter#newvalue#0	JIRAUSER10000
12	238	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
12	239	object#issue#status_category#0	new
12	240	object#issue#type#0	10000
12	241	object#issue#id#0	10104
12	242	jira#createddate#newvalue#0	1594293633542
12	243	object#project#from_name#0	pengwinn (Jira)
12	244	object#issue#status_id#0	10000
12	245	object#project#name#0	test
12	246	jira#reporter#newstring#0	pengwinn
12	247	jira#priority#newvalue#0	3
12	248	object#issue#status_name#0	To Do
12	249	object#project#id#0	10000
12	250	jira#priority#newstring#0	Medium
12	251	object#project#email#0	\N
12	252	object#issue#key#0	TEST-12
13	253	jira#issuetype#newstring#0	Task
13	254	object#issue#created_date#0	1594293645905
13	255	jira#summary#newstring#0	test13
13	256	object#issue#summary#0	test13
13	257	jira#issuetype#newvalue#0	10000
13	258	jira#reporter#newvalue#0	JIRAUSER10000
13	259	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
13	260	object#issue#status_category#0	new
13	261	object#issue#type#0	10000
13	262	object#issue#id#0	10105
13	263	jira#createddate#newvalue#0	1594293645905
13	264	object#project#from_name#0	pengwinn (Jira)
13	265	object#issue#status_id#0	10000
13	266	object#project#name#0	test
13	267	jira#reporter#newstring#0	pengwinn
13	268	jira#priority#newvalue#0	3
13	269	object#issue#status_name#0	To Do
13	270	object#project#id#0	10000
13	271	jira#priority#newstring#0	Medium
13	272	object#project#email#0	\N
13	273	object#issue#key#0	TEST-13
14	274	jira#issuetype#newstring#0	Task
14	275	object#issue#created_date#0	1594293877569
14	276	jira#summary#newstring#0	test14
14	277	object#issue#summary#0	test14
14	278	jira#issuetype#newvalue#0	10000
14	279	jira#reporter#newvalue#0	JIRAUSER10000
14	280	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
14	281	object#issue#status_category#0	new
14	282	object#issue#type#0	10000
14	283	object#issue#id#0	10106
14	284	jira#createddate#newvalue#0	1594293877569
14	285	object#project#from_name#0	pengwinn (Jira)
14	286	object#issue#status_id#0	10000
14	287	object#project#name#0	test
14	288	jira#reporter#newstring#0	pengwinn
14	289	jira#priority#newvalue#0	3
14	290	object#issue#status_name#0	To Do
14	291	object#project#id#0	10000
14	292	jira#priority#newstring#0	Medium
14	293	object#project#email#0	\N
14	294	object#issue#key#0	TEST-14
15	295	jira#issuetype#newstring#0	Task
15	296	object#issue#created_date#0	1594293887925
15	297	jira#summary#newstring#0	test15
15	298	object#issue#summary#0	test15
15	299	jira#issuetype#newvalue#0	10000
15	300	jira#reporter#newvalue#0	JIRAUSER10000
15	301	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
15	302	object#issue#status_category#0	new
15	303	object#issue#type#0	10000
15	304	object#issue#id#0	10107
15	305	jira#createddate#newvalue#0	1594293887925
15	306	object#project#from_name#0	pengwinn (Jira)
15	307	object#issue#status_id#0	10000
15	308	object#project#name#0	test
15	309	jira#reporter#newstring#0	pengwinn
15	310	jira#priority#newvalue#0	3
15	311	object#issue#status_name#0	To Do
15	312	object#project#id#0	10000
15	313	jira#priority#newstring#0	Medium
15	314	object#project#email#0	\N
15	315	object#issue#key#0	TEST-15
16	316	jira#issuetype#newstring#0	Task
16	317	object#issue#created_date#0	1594293893940
16	318	jira#summary#newstring#0	test16
16	319	object#issue#summary#0	test16
16	320	jira#issuetype#newvalue#0	10000
16	321	jira#reporter#newvalue#0	JIRAUSER10000
16	322	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
16	323	object#issue#status_category#0	new
16	324	object#issue#type#0	10000
16	325	object#issue#id#0	10108
16	326	jira#createddate#newvalue#0	1594293893940
16	327	object#project#from_name#0	pengwinn (Jira)
16	328	object#issue#status_id#0	10000
16	329	object#project#name#0	test
16	330	jira#reporter#newstring#0	pengwinn
16	331	jira#priority#newvalue#0	3
16	332	object#issue#status_name#0	To Do
16	333	object#project#id#0	10000
16	334	jira#priority#newstring#0	Medium
16	335	object#project#email#0	\N
16	336	object#issue#key#0	TEST-16
17	337	jira#issuetype#newstring#0	Task
17	338	object#issue#created_date#0	1594293904875
17	339	jira#summary#newstring#0	test17
17	340	object#issue#summary#0	test17
17	341	jira#issuetype#newvalue#0	10000
17	342	jira#reporter#newvalue#0	JIRAUSER10000
17	343	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
17	344	object#issue#status_category#0	new
17	345	object#issue#type#0	10000
17	346	object#issue#id#0	10109
17	347	jira#createddate#newvalue#0	1594293904875
17	348	object#project#from_name#0	pengwinn (Jira)
17	349	object#issue#status_id#0	10000
17	350	object#project#name#0	test
17	351	jira#reporter#newstring#0	pengwinn
17	352	jira#priority#newvalue#0	3
17	353	object#issue#status_name#0	To Do
17	354	object#project#id#0	10000
17	355	jira#priority#newstring#0	Medium
17	356	object#project#email#0	\N
17	357	object#issue#key#0	TEST-17
18	358	jira#issuetype#newstring#0	Task
18	359	object#issue#created_date#0	1594293974309
18	360	jira#summary#newstring#0	test18
18	361	object#issue#summary#0	test18
18	362	jira#issuetype#newvalue#0	10000
18	363	jira#reporter#newvalue#0	JIRAUSER10000
18	364	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
18	365	object#issue#status_category#0	new
18	366	object#issue#type#0	10000
18	367	object#issue#id#0	10200
18	368	jira#createddate#newvalue#0	1594293974309
18	369	object#project#from_name#0	pengwinn (Jira)
18	370	object#issue#status_id#0	10000
18	371	object#project#name#0	test
18	372	jira#reporter#newstring#0	pengwinn
18	373	jira#priority#newvalue#0	3
18	374	object#issue#status_name#0	To Do
18	375	object#project#id#0	10000
18	376	jira#priority#newstring#0	Medium
18	377	object#project#email#0	\N
18	378	object#issue#key#0	TEST-18
19	379	jira#issuetype#newstring#0	Task
19	380	object#issue#created_date#0	1594294155411
19	381	jira#summary#newstring#0	test19
19	382	object#issue#summary#0	test19
19	383	jira#issuetype#newvalue#0	10000
19	384	jira#reporter#newvalue#0	JIRAUSER10000
19	385	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
19	386	object#issue#status_category#0	new
19	387	object#issue#type#0	10000
19	388	object#issue#id#0	10201
19	389	jira#createddate#newvalue#0	1594294155411
19	390	object#project#from_name#0	pengwinn (Jira)
19	391	object#issue#status_id#0	10000
19	392	object#project#name#0	test
19	393	jira#reporter#newstring#0	pengwinn
19	394	jira#priority#newvalue#0	3
19	395	object#issue#status_name#0	To Do
19	396	object#project#id#0	10000
19	397	jira#priority#newstring#0	Medium
19	398	object#project#email#0	\N
19	399	object#issue#key#0	TEST-19
20	400	jira#issuetype#newstring#0	Task
20	401	object#issue#created_date#0	1594294383095
20	402	jira#summary#newstring#0	test20
20	403	object#issue#summary#0	test20
20	404	jira#issuetype#newvalue#0	10000
20	405	jira#reporter#newvalue#0	JIRAUSER10000
20	406	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
20	407	object#issue#status_category#0	new
20	408	object#issue#type#0	10000
20	409	object#issue#id#0	10202
20	410	jira#createddate#newvalue#0	1594294383095
20	411	object#project#from_name#0	pengwinn (Jira)
20	412	object#issue#status_id#0	10000
20	413	object#project#name#0	test
20	414	jira#reporter#newstring#0	pengwinn
20	415	jira#priority#newvalue#0	3
20	416	object#issue#status_name#0	To Do
20	417	object#project#id#0	10000
20	418	jira#priority#newstring#0	Medium
20	419	object#project#email#0	\N
20	420	object#issue#key#0	TEST-20
21	421	jira#issuetype#newstring#0	Task
21	422	object#issue#created_date#0	1594294712958
21	423	jira#summary#newstring#0	test21
21	424	object#issue#summary#0	test21
21	425	jira#issuetype#newvalue#0	10000
21	426	jira#reporter#newvalue#0	JIRAUSER10000
21	427	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
21	428	object#issue#status_category#0	new
21	429	object#issue#type#0	10000
21	430	object#issue#id#0	10203
21	431	jira#createddate#newvalue#0	1594294712958
21	432	object#project#from_name#0	pengwinn (Jira)
21	433	object#issue#status_id#0	10000
21	434	object#project#name#0	test
21	435	jira#reporter#newstring#0	pengwinn
21	436	jira#priority#newvalue#0	3
21	437	object#issue#status_name#0	To Do
21	438	object#project#id#0	10000
21	439	jira#priority#newstring#0	Medium
21	440	object#project#email#0	\N
21	441	object#issue#key#0	TEST-21
22	442	jira#issuetype#newstring#0	Task
22	443	object#issue#created_date#0	1594294867730
22	444	jira#summary#newstring#0	test23
22	445	object#issue#summary#0	test23
22	446	jira#issuetype#newvalue#0	10000
22	447	jira#reporter#newvalue#0	JIRAUSER10000
22	448	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
22	449	object#issue#status_category#0	new
22	450	object#issue#type#0	10000
22	451	object#issue#id#0	10204
22	452	jira#createddate#newvalue#0	1594294867730
22	453	object#project#from_name#0	pengwinn (Jira)
22	454	object#issue#status_id#0	10000
22	455	object#project#name#0	test
22	456	jira#reporter#newstring#0	pengwinn
22	457	jira#priority#newvalue#0	3
22	458	object#issue#status_name#0	To Do
22	459	object#project#id#0	10000
22	460	jira#priority#newstring#0	Medium
22	461	object#project#email#0	\N
22	462	object#issue#key#0	TEST-22
23	463	object#issue#created_date#0	1594294867730
23	464	object#issue#status_id#0	10000
23	465	object#project#name#0	test
23	466	object#issue#summary#0	test23
23	467	object#issue#status_name#0	To Do
23	468	JIRA_EVENT_PARAMETERS	{"eventsource":null}
23	469	object#issue#status_category#0	new
23	470	object#issue#type#0	10000
23	471	object#project#id#0	10000
23	472	object#issue#id#0	10204
23	473	object#project#from_name#0	pengwinn (Jira)
23	474	object#project#email#0	\N
23	475	object#issue#key#0	TEST-22
24	476	jira#issuetype#newstring#0	Task
24	477	object#issue#created_date#0	1594295092620
24	478	jira#summary#newstring#0	test22
24	479	object#issue#summary#0	test22
24	480	jira#Attachment#newstring#0	pg_test.png
24	481	jira#issuetype#newvalue#0	10000
24	482	jira#Attachment#newvalue#0	10000
24	483	jira#reporter#newvalue#0	JIRAUSER10000
24	484	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
24	485	object#issue#status_category#0	new
24	486	object#issue#type#0	10000
24	487	object#issue#id#0	10205
24	488	jira#createddate#newvalue#0	1594295092620
24	489	object#project#from_name#0	pengwinn (Jira)
24	490	object#issue#status_id#0	10000
24	491	object#project#name#0	test
24	492	jira#reporter#newstring#0	pengwinn
24	493	jira#priority#newvalue#0	3
24	494	object#issue#status_name#0	To Do
24	495	object#project#id#0	10000
24	496	jira#priority#newstring#0	Medium
24	497	object#project#email#0	\N
24	498	object#issue#key#0	TEST-23
25	499	jira#issuetype#newstring#0	Task
25	500	object#issue#created_date#0	1594308126492
25	501	jira#summary#newstring#0	test24
25	502	object#issue#summary#0	test24
25	503	jira#issuetype#newvalue#0	10000
25	504	jira#reporter#newvalue#0	JIRAUSER10000
25	505	JIRA_EVENT_PARAMETERS	{"eventsource":"workflow"}
25	506	object#issue#status_category#0	new
25	507	object#issue#type#0	10000
25	508	object#issue#id#0	10300
25	509	jira#createddate#newvalue#0	1594308126492
25	510	object#project#from_name#0	pengwinn (Jira)
25	511	object#issue#status_id#0	10000
25	512	object#project#name#0	test
25	513	jira#reporter#newstring#0	pengwinn
25	514	jira#priority#newvalue#0	3
25	515	object#issue#status_name#0	To Do
25	516	object#project#id#0	10000
25	517	jira#priority#newstring#0	Medium
25	518	object#project#email#0	\N
25	519	object#issue#key#0	TEST-24
\.


--
-- Data for Name: AO_733371_EVENT_RECIPIENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_733371_EVENT_RECIPIENT" ("CONSUMER_NAME", "CREATED", "EVENT_ID", "ID", "SEND_DATE", "STATUS", "UPDATED", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_97EDAB_USERINVITATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_97EDAB_USERINVITATION" ("APPLICATION_KEYS", "EMAIL_ADDRESS", "EXPIRY", "ID", "REDEEMED", "SENDER_USERNAME", "TOKEN") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Data for Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_B9A0F0_APPLIED_TEMPLATE" ("ID", "PROJECT_ID", "PROJECT_TEMPLATE_MODULE_KEY", "PROJECT_TEMPLATE_WEB_ITEM_KEY") FROM stdin;
1	10000	com.atlassian.jira-core-project-templates:jira-core-project-management	com.atlassian.jira-core-project-templates:jira-core-project-management
\.


--
-- Data for Name: AO_C16815_ALERT_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_C16815_ALERT_AO" ("CREATED_DATE", "DETAILS_JSON", "ID", "ISSUE_COMPONENT_ID", "ISSUE_ID", "ISSUE_SEVERITY", "NODE_NAME", "TRIGGER_MODULE", "TRIGGER_PLUGIN_KEY", "TRIGGER_PLUGIN_KEY_VERSION", "TRIGGER_PLUGIN_VERSION") FROM stdin;
1594286533714	{"threadDump":[{"id":120,"name":"http-nio-8080-exec-4","daemon":true,"state":"RUNNABLE","stackTrace":"sun.management.ThreadImpl.getThreadInfo1(Native Method)\\nsun.management.ThreadImpl.getThreadInfo(ThreadImpl.java:178)\\ncom.atlassian.diagnostics.internal.detail.DefaultThreadDumpProducer.produce(DefaultThreadDumpProducer.java:38)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.lambda$null$0(JqlQueryMonitor.java:59)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor$$Lambda$2544/1146063493.get(Unknown Source)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor$$Lambda$2545/1495716755.apply(Unknown Source)\\njava.util.Optional.map(Optional.java:215)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor.alert(DefaultComponentMonitor.java:75)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$null$0(InitializingMonitor.java:44)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$2543/227291565.run(Unknown Source)\\ncom.atlassian.diagnostics.internal.concurrent.Gate.ifAccessible(Gate.java:68)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$alert$1(InitializingMonitor.java:41)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$2542/1961696197.accept(Unknown Source)\\njava.util.Optional.ifPresent(Optional.java:159)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.alert(InitializingMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlert(JqlQueryMonitor.java:56)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlertForSlowQuery(JqlQueryMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.raiseAnAlert(AlertingSlowJqlQueryEventListener.java:32)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.handleEvent(AlertingSlowJqlQueryEventListener.java:20)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.event.internal.SingleParameterMethodListenerInvoker.invoke(SingleParameterMethodListenerInvoker.java:42)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.lambda$null$0(AsynchronousAbleEventDispatcher.java:37)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$381/2007340548.run(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$81/914462903.execute(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.dispatch(AsynchronousAbleEventDispatcher.java:85)\\ncom.atlassian.event.internal.EventPublisherImpl.invokeListeners(EventPublisherImpl.java:227)\\ncom.atlassian.event.internal.EventPublisherImpl.publish(EventPublisherImpl.java:112)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.publishMetricEvent(LuceneSearchProvider.java:236)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.getHits(LuceneSearchProvider.java:222)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:362)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:135)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.plugin.util.ContextClassLoaderSettingInvocationHandler.invoke(ContextClassLoaderSettingInvocationHandler.java:26)\\ncom.sun.proxy.$Proxy532.search(Unknown Source)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\norg.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\\norg.eclipse.gemini.blueprint.service.importer.support.internal.aop.ServiceInvoker.doInvoke(ServiceInvoker.java:56)\\norg.eclipse.gemini.blueprint.service.importer.support.internal.aop.ServiceInvoker.invoke(ServiceInvoker.java:60)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.eclipse.gemini.blueprint.service.util.internal.aop.ServiceTCCLInterceptor.invokeUnprivileged(ServiceTCCLInterceptor.java:70)\\norg.eclipse.gemini.blueprint.service.util.internal.aop.ServiceTCCLInterceptor.invoke(ServiceTCCLInterceptor.java:53)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.eclipse.gemini.blueprint.service.importer.support.LocalBundleContextAdvice.invoke(LocalBundleContextAdvice.java:57)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\\ncom.sun.proxy.$Proxy5378.search(Unknown Source)\\ncom.atlassian.jira.plugin.issuenav.service.issuetable.AbstractIssueTableCreator.collectIssues(AbstractIssueTableCreator.java:164)\\ncom.atlassian.jira.plugin.issuenav.service.issuetable.AbstractIssueTableCreator.executeNormalSearch(AbstractIssueTableCreator.java:235)\\ncom.atlassian.jira.plugin.issuenav.service.issuetable.AbstractIssueTableCreator.create(AbstractIssueTableCreator.java:203)\\ncom.atlassian.jira.plugin.issuenav.service.issuetable.DefaultIssueTableService.createIssueTableFromCreator(DefaultIssueTableService.java:171)\\ncom.atlassian.jira.plugin.issuenav.service.issuetable.DefaultIssueTableService.getIssueTable(DefaultIssueTableService.java:274)\\ncom.atlassian.jira.plugin.issuenav.service.issuetable.DefaultIssueTableService.getIssueTableFromFilterWithJql(DefaultIssueTableService.java:116)\\ncom.atlassian.jira.plugin.issuenav.rest.IssueTableResource.getIssueTableHtml(IssueTableResource.java:99)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.sun.jersey.spi.container.JavaMethodInvokerFactory$1.invoke(JavaMethodInvokerFactory.java:60)\\ncom.sun.jersey.server.impl.model.method.dispatch.AbstractResourceMethodDispatchProvider$ResponseOutInvoker._dispatch(AbstractResourceMethodDispatchProvider.java:205)\\ncom.sun.jersey.server.impl.model.method.dispatch.ResourceJavaMethodDispatcher.dispatch(ResourceJavaMethodDispatcher.java:75)\\ncom.sun.jersey.server.impl.uri.rules.HttpMethodRule.accept(HttpMethodRule.java:302)\\ncom.sun.jersey.server.impl.uri.rules.ResourceClassRule.accept(ResourceClassRule.java:108)\\ncom.sun.jersey.server.impl.uri.rules.RightHandPathRule.accept(RightHandPathRule.java:147)\\ncom.sun.jersey.server.impl.uri.rules.RootResourceClassesRule.accept(RootResourceClassesRule.java:84)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl._handleRequest(WebApplicationImpl.java:1542)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl._handleRequest(WebApplicationImpl.java:1473)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl.handleRequest(WebApplicationImpl.java:1419)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl.handleRequest(WebApplicationImpl.java:1409)\\ncom.sun.jersey.spi.container.servlet.WebComponent.service(WebComponent.java:409)\\ncom.sun.jersey.spi.container.servlet.ServletContainer.service(ServletContainer.java:558)\\ncom.atlassian.plugins.rest.module.RestDelegatingServletFilter$JerseyOsgiServletContainer.doFilter(RestDelegatingServletFilter.java:159)\\ncom.sun.jersey.spi.container.servlet.ServletContainer.doFilter(ServletContainer.java:829)\\ncom.atlassian.plugins.rest.module.RestDelegatingServletFilter.doFilter(RestDelegatingServletFilter.java:69)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.plugins.rest.module.servlet.RestServletUtilsUpdaterFilter.doFilterInternal(RestServletUtilsUpdaterFilter.java:22)\\ncom.atlassian.plugins.rest.module.servlet.RestServletUtilsUpdaterFilter.doFilter(RestServletUtilsUpdaterFilter.java:34)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.mywork.client.filter.ServingRequestsFilter.doFilter(ServingRequestsFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.jira.plugin.mobile.web.filter.MobileAppRequestFilter.doFilter(MobileAppRequestFilter.java:37)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.jira.plugin.mobile.login.MobileLoginSuccessFilter.doFilter(MobileLoginSuccessFilter.java:54)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.diagnostics.internal.platform.monitor.http.HttpRequestMonitoringFilter.doFilter(HttpRequestMonitoringFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.analytics.client.filter.UniversalAnalyticsFilter.doFilter(UniversalAnalyticsFilter.java:75)\\ncom.atlassian.analytics.client.filter.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:33)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.request.RedirectInterceptingFilter.doFilter(RedirectInterceptingFilter.java:21)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsSiteMeshFixupFilter.doFilter(PrettyUrlsSiteMeshFixupFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsDispatcherFilter.doFilter(PrettyUrlsDispatcherFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsSiteMeshFilter.doFilter(PrettyUrlsSiteMeshFilter.java:80)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsMatcherFilter.doFilter(PrettyUrlsMatcherFilter.java:51)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.labs.botkiller.BotKillerFilter.doFilter(BotKillerFilter.java:36)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MobileAppRequestFilter.doFilter(MobileAppRequestFilter.java:36)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.accesslog.AccessLogFilter.executeRequest(AccessLogFilter.java:93)\\ncom.atlassian.jira.web.filters.accesslog.AccessLogFilter.doFilter(AccessLogFilter.java:79)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.security.xsrf.XsrfTokenAdditionRequestFilter.doFilter(XsrfTokenAdditionRequestFilter.java:46)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.pagebuilder.PageBuilderFilter.doFilter(PageBuilderFilter.java:81)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.CommittedResponseHtmlErrorRecoveryFilter.doFilter(CommittedResponseHtmlErrorRecoveryFilter.java:55)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.mau.AbstractMauRequestTaggingFilter.doFilter(AbstractMauRequestTaggingFilter.java:40)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MauEventFilter.doFilter(MauEventFilter.java:49)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.security.JiraSecurityFilter.lambda$doFilter$0(JiraSecurityFilter.java:66)\\ncom.atlassian.jira.security.JiraSecurityFilter$$Lambda$1111/2101067149.doFilter(Unknown Source)\\ncom.atlassian.seraph.filter.SecurityFilter.doFilter(SecurityFilter.java:242)\\ncom.atlassian.jira.security.JiraSecurityFilter.doFilter(JiraSecurityFilter.java:64)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.security.auth.trustedapps.filter.TrustedApplicationsFilter.doFilter(TrustedApplicationsFilter.java:94)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.seraph.filter.BaseLoginFilter.doFilter(BaseLoginFilter.java:148)\\ncom.atlassian.jira.web.filters.JiraLoginFilter.doFilter(JiraLoginFilter.java:77)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.oauth.serviceprovider.internal.servlet.OAuthFilter.doFilter(OAuthFilter.java:67)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.plugins.rest.module.servlet.RestSeraphFilter.doFilter(RestSeraphFilter.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.johnson.JiraJohnson503Filter.doFilter(JiraJohnson503Filter.java:79)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\norg.tuckey.web.filters.urlrewrite.RuleChain.handleRewrite(RuleChain.java:176)\\norg.tuckey.web.filters.urlrewrite.RuleChain.doRules(RuleChain.java:145)\\norg.tuckey.web.filters.urlrewrite.UrlRewriter.processRequest(UrlRewriter.java:92)\\norg.tuckey.web.filters.urlrewrite.UrlRewriteFilter.doFilter(UrlRewriteFilter.java:394)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.servermetrics.CorrelationIdPopulatorFilter.doFilter(CorrelationIdPopulatorFilter.java:30)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.analytics.client.filter.JiraAnalyticsFilter.doFilter(JiraAnalyticsFilter.java:40)\\ncom.atlassian.analytics.client.filter.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:33)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.request.RedirectInterceptingFilter.doFilter(RedirectInterceptingFilter.java:21)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.LocationCleanerFilter.doFilter(LocationCleanerFilter.java:36)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1097/504289725.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.steps.ChainedFilterStepRunner.doFilter(ChainedFilterStepRunner.java:74)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.core.filters.cache.AbstractCachingFilter.doFilter(AbstractCachingFilter.java:31)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.core.filters.encoding.AbstractEncodingFilter.doFilter(AbstractEncodingFilter.java:39)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.jira.web.filters.PathMatchingEncodingFilter.doFilter(PathMatchingEncodingFilter.java:39)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MultipartBoundaryCheckFilter.doFilter(MultipartBoundaryCheckFilter.java:36)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.servermetrics.MetricsCollectorFilter.doFilter(MetricsCollectorFilter.java:25)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.steps.ChainedFilterStepRunner.doFilter(ChainedFilterStepRunner.java:74)\\ncom.atlassian.jira.web.filters.JiraFirstFilter.doFilter(JiraFirstFilter.java:57)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.gzipfilter.GzipFilter.doFilterInternal(GzipFilter.java:115)\\ncom.atlassian.gzipfilter.GzipFilter.doFilter(GzipFilter.java:92)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:493)\\norg.apache.catalina.valves.StuckThreadDetectionValve.invoke(StuckThreadDetectionValve.java:206)\\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:137)\\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\\norg.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:660)\\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:798)\\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:808)\\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1498)\\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\\njava.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\\njava.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\\njava.lang.Thread.run(Thread.java:748)"}],"reason":"LuceneQueryExecutionEvent{queryTermMetrics={projid:10000=TermMetric{count=1, isCustomField=false}}, numberOfClausesInQuery=1, numberOfCustomFieldsUsed=0, executionTime=25040, numberOfResults=1, collectorType='TopDocs'}"}	1	JQL	JQL-1001	100	jira-node1	\N	not-detected	\N	\N
1594288427052	{"threadDump":[{"id":122,"name":"ClusterMessageHandlerServiceThread:thread-1","daemon":false,"state":"RUNNABLE","stackTrace":"sun.management.ThreadImpl.getThreadInfo1(Native Method)\\nsun.management.ThreadImpl.getThreadInfo(ThreadImpl.java:178)\\ncom.atlassian.diagnostics.internal.detail.DefaultThreadDumpProducer.produce(DefaultThreadDumpProducer.java:38)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.lambda$null$0(JqlQueryMonitor.java:59)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor$$Lambda$1574/726783270.get(Unknown Source)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor$$Lambda$1575/2053524959.apply(Unknown Source)\\njava.util.Optional.map(Optional.java:215)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor.alert(DefaultComponentMonitor.java:75)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$null$0(InitializingMonitor.java:44)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$1573/1658031370.run(Unknown Source)\\ncom.atlassian.diagnostics.internal.concurrent.Gate.ifAccessible(Gate.java:68)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$alert$1(InitializingMonitor.java:41)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$1572/1811171321.accept(Unknown Source)\\njava.util.Optional.ifPresent(Optional.java:159)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.alert(InitializingMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlert(JqlQueryMonitor.java:56)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlertForSlowQuery(JqlQueryMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.raiseAnAlert(AlertingSlowJqlQueryEventListener.java:32)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.handleEvent(AlertingSlowJqlQueryEventListener.java:20)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.event.internal.SingleParameterMethodListenerInvoker.invoke(SingleParameterMethodListenerInvoker.java:42)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.lambda$null$0(AsynchronousAbleEventDispatcher.java:37)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$395/1619414909.run(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$81/155978571.execute(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.dispatch(AsynchronousAbleEventDispatcher.java:85)\\ncom.atlassian.event.internal.EventPublisherImpl.invokeListeners(EventPublisherImpl.java:227)\\ncom.atlassian.event.internal.EventPublisherImpl.publish(EventPublisherImpl.java:112)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.publishMetricEvent(LuceneSearchProvider.java:236)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.getHits(LuceneSearchProvider.java:222)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:362)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:135)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:140)\\ncom.atlassian.jira.bc.issue.search.DefaultSearchService.searchOverrideSecurity(DefaultSearchService.java:124)\\ncom.atlassian.jira.index.ha.DefaultIndexRecoveryManager.getLatestIndexDate(DefaultIndexRecoveryManager.java:294)\\ncom.atlassian.jira.index.ha.DefaultIndexRecoveryManager.getDurationToRecover(DefaultIndexRecoveryManager.java:273)\\ncom.atlassian.jira.index.ha.DefaultIndexRecoveryManager$ReplaceIndexRunner.calculateDurationToRecover(DefaultIndexRecoveryManager.java:400)\\ncom.atlassian.jira.index.ha.DefaultIndexRecoveryManager$ReplaceIndexRunner.run(DefaultIndexRecoveryManager.java:371)\\ncom.atlassian.jira.util.thread.JiraThreadLocalUtils.lambda$wrap$0(JiraThreadLocalUtils.java:94)\\ncom.atlassian.jira.util.thread.JiraThreadLocalUtils$$Lambda$415/2060707031.run(Unknown Source)\\ncom.atlassian.jira.issue.index.DefaultIndexManager.withReindexLock(DefaultIndexManager.java:378)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.jira.config.component.SwitchingInvocationHandler.invoke(SwitchingInvocationHandler.java:38)\\ncom.sun.proxy.$Proxy12.withReindexLock(Unknown Source)\\ncom.atlassian.jira.index.ha.DefaultIndexRecoveryManager.recoverIndexFromBackup(DefaultIndexRecoveryManager.java:138)\\ncom.atlassian.jira.index.ha.DefaultIndexCopyService$MessageConsumer.restoreIndex(DefaultIndexCopyService.java:157)\\ncom.atlassian.jira.index.ha.DefaultIndexCopyService$MessageConsumer.receive(DefaultIndexCopyService.java:180)\\ncom.atlassian.jira.cluster.OfBizMessageHandlerService.sendLocalFromNode(OfBizMessageHandlerService.java:214)\\ncom.atlassian.jira.cluster.OfBizMessageHandlerService.tryHandleMessage(OfBizMessageHandlerService.java:140)\\ncom.atlassian.jira.cluster.OfBizMessageHandlerService.handleReceivedMessages(OfBizMessageHandlerService.java:124)\\ncom.atlassian.jira.cluster.OfBizMessageHandlerService$$Lambda$970/976942871.run(Unknown Source)\\ncom.atlassian.jira.util.thread.JiraThreadLocalUtils.lambda$wrap$0(JiraThreadLocalUtils.java:94)\\ncom.atlassian.jira.util.thread.JiraThreadLocalUtils$$Lambda$415/2060707031.run(Unknown Source)\\njava.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)\\njava.util.concurrent.FutureTask.runAndReset(FutureTask.java:308)\\njava.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$301(ScheduledThreadPoolExecutor.java:180)\\njava.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:294)\\njava.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\\njava.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\\njava.lang.Thread.run(Thread.java:748)"}],"reason":"LuceneQueryExecutionEvent{queryTermMetrics={org.apache.lucene.search.MatchAllDocsQuery=TermMetric{count=1, isCustomField=false}}, numberOfClausesInQuery=1, numberOfCustomFieldsUsed=0, executionTime=24249, numberOfResults=7, collectorType='TopDocs'}"}	2	JQL	JQL-1001	100	jira-node2	\N	not-detected	\N	\N
1594289629463	{"requestPath":"/rest/gadgets/1.0/g/feed","username":"Anonymous User","elapsedTimeInMillis":76907}	3	HTTP	HTTP-3001	100	jira-node2	\N	not-detected	\N	\N
1594293818367	{"threadDump":[{"id":139,"name":"http-nio-8080-exec-1","daemon":true,"state":"RUNNABLE","stackTrace":"sun.management.ThreadImpl.getThreadInfo1(Native Method)\\nsun.management.ThreadImpl.getThreadInfo(ThreadImpl.java:178)\\ncom.atlassian.diagnostics.internal.detail.DefaultThreadDumpProducer.produce(DefaultThreadDumpProducer.java:38)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.lambda$null$0(JqlQueryMonitor.java:59)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor$$Lambda$2067/946073602.get(Unknown Source)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor$$Lambda$1582/2026231163.apply(Unknown Source)\\njava.util.Optional.map(Optional.java:215)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor.alert(DefaultComponentMonitor.java:75)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$null$0(InitializingMonitor.java:44)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$1578/1615798386.run(Unknown Source)\\ncom.atlassian.diagnostics.internal.concurrent.Gate.ifAccessible(Gate.java:68)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$alert$1(InitializingMonitor.java:41)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$1575/369723223.accept(Unknown Source)\\njava.util.Optional.ifPresent(Optional.java:159)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.alert(InitializingMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlert(JqlQueryMonitor.java:56)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlertForSlowQuery(JqlQueryMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.raiseAnAlert(AlertingSlowJqlQueryEventListener.java:32)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.handleEvent(AlertingSlowJqlQueryEventListener.java:20)\\nsun.reflect.GeneratedMethodAccessor642.invoke(Unknown Source)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.event.internal.SingleParameterMethodListenerInvoker.invoke(SingleParameterMethodListenerInvoker.java:42)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.lambda$null$0(AsynchronousAbleEventDispatcher.java:37)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$392/402636599.run(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$81/914462903.execute(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.dispatch(AsynchronousAbleEventDispatcher.java:85)\\ncom.atlassian.event.internal.EventPublisherImpl.invokeListeners(EventPublisherImpl.java:227)\\ncom.atlassian.event.internal.EventPublisherImpl.publish(EventPublisherImpl.java:112)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.publishMetricEvent(LuceneSearchProvider.java:236)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.getHits(LuceneSearchProvider.java:222)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:362)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:135)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:140)\\ncom.atlassian.jira.bc.issue.search.DefaultSearchService.search(DefaultSearchService.java:118)\\nsun.reflect.GeneratedMethodAccessor504.invoke(Unknown Source)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.plugin.util.ContextClassLoaderSettingInvocationHandler.invoke(ContextClassLoaderSettingInvocationHandler.java:26)\\ncom.sun.proxy.$Proxy405.search(Unknown Source)\\nsun.reflect.GeneratedMethodAccessor504.invoke(Unknown Source)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\norg.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\\norg.eclipse.gemini.blueprint.service.importer.support.internal.aop.ServiceInvoker.doInvoke(ServiceInvoker.java:56)\\norg.eclipse.gemini.blueprint.service.importer.support.internal.aop.ServiceInvoker.invoke(ServiceInvoker.java:60)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.eclipse.gemini.blueprint.service.util.internal.aop.ServiceTCCLInterceptor.invokeUnprivileged(ServiceTCCLInterceptor.java:70)\\norg.eclipse.gemini.blueprint.service.util.internal.aop.ServiceTCCLInterceptor.invoke(ServiceTCCLInterceptor.java:53)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.eclipse.gemini.blueprint.service.importer.support.LocalBundleContextAdvice.invoke(LocalBundleContextAdvice.java:57)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\\ncom.sun.proxy.$Proxy2862.search(Unknown Source)\\ncom.atlassian.jira.gadgets.system.IssueTableResource.createResponse(IssueTableResource.java:476)\\ncom.atlassian.jira.gadgets.system.IssueTableResource.getJqlTable(IssueTableResource.java:299)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper$ResponseOutInvoker$1.invoke(DispatchProviderHelper.java:192)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper$1.intercept(DispatchProviderHelper.java:83)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DefaultMethodInvocation.invoke(DefaultMethodInvocation.java:53)\\ncom.atlassian.plugins.rest.common.expand.interceptor.ExpandInterceptor.intercept(ExpandInterceptor.java:41)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DefaultMethodInvocation.invoke(DefaultMethodInvocation.java:53)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper.invokeMethodWithInterceptors(DispatchProviderHelper.java:110)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper$ResponseOutInvoker._dispatch(DispatchProviderHelper.java:190)\\ncom.sun.jersey.server.impl.model.method.dispatch.ResourceJavaMethodDispatcher.dispatch(ResourceJavaMethodDispatcher.java:75)\\ncom.sun.jersey.server.impl.uri.rules.HttpMethodRule.accept(HttpMethodRule.java:302)\\ncom.sun.jersey.server.impl.uri.rules.RightHandPathRule.accept(RightHandPathRule.java:147)\\ncom.sun.jersey.server.impl.uri.rules.ResourceClassRule.accept(ResourceClassRule.java:108)\\ncom.sun.jersey.server.impl.uri.rules.RightHandPathRule.accept(RightHandPathRule.java:147)\\ncom.sun.jersey.server.impl.uri.rules.RootResourceClassesRule.accept(RootResourceClassesRule.java:84)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl._handleRequest(WebApplicationImpl.java:1542)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl._handleRequest(WebApplicationImpl.java:1473)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl.handleRequest(WebApplicationImpl.java:1419)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl.handleRequest(WebApplicationImpl.java:1409)\\ncom.sun.jersey.spi.container.servlet.WebComponent.service(WebComponent.java:409)\\ncom.sun.jersey.spi.container.servlet.ServletContainer.service(ServletContainer.java:558)\\ncom.atlassian.plugins.rest.module.RestDelegatingServletFilter$JerseyOsgiServletContainer.doFilter(RestDelegatingServletFilter.java:159)\\ncom.sun.jersey.spi.container.servlet.ServletContainer.doFilter(ServletContainer.java:829)\\ncom.atlassian.plugins.rest.module.RestDelegatingServletFilter.doFilter(RestDelegatingServletFilter.java:69)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.plugins.rest.module.servlet.RestServletUtilsUpdaterFilter.doFilterInternal(RestServletUtilsUpdaterFilter.java:22)\\ncom.atlassian.plugins.rest.module.servlet.RestServletUtilsUpdaterFilter.doFilter(RestServletUtilsUpdaterFilter.java:34)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.mywork.client.filter.ServingRequestsFilter.doFilter(ServingRequestsFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.jira.plugin.mobile.web.filter.MobileAppRequestFilter.doFilter(MobileAppRequestFilter.java:37)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.jira.plugin.mobile.login.MobileLoginSuccessFilter.doFilter(MobileLoginSuccessFilter.java:54)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.diagnostics.internal.platform.monitor.http.HttpRequestMonitoringFilter.doFilter(HttpRequestMonitoringFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.analytics.client.filter.UniversalAnalyticsFilter.doFilter(UniversalAnalyticsFilter.java:75)\\ncom.atlassian.analytics.client.filter.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:33)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.request.RedirectInterceptingFilter.doFilter(RedirectInterceptingFilter.java:21)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsSiteMeshFixupFilter.doFilter(PrettyUrlsSiteMeshFixupFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsDispatcherFilter.doFilter(PrettyUrlsDispatcherFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsSiteMeshFilter.doFilter(PrettyUrlsSiteMeshFilter.java:80)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsMatcherFilter.doFilter(PrettyUrlsMatcherFilter.java:51)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.labs.botkiller.BotKillerFilter.doFilter(BotKillerFilter.java:36)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MobileAppRequestFilter.doFilter(MobileAppRequestFilter.java:36)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.accesslog.AccessLogFilter.executeRequest(AccessLogFilter.java:93)\\ncom.atlassian.jira.web.filters.accesslog.AccessLogFilter.doFilter(AccessLogFilter.java:79)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.security.xsrf.XsrfTokenAdditionRequestFilter.doFilter(XsrfTokenAdditionRequestFilter.java:46)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.pagebuilder.PageBuilderFilter.doFilter(PageBuilderFilter.java:81)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.CommittedResponseHtmlErrorRecoveryFilter.doFilter(CommittedResponseHtmlErrorRecoveryFilter.java:55)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.mau.AbstractMauRequestTaggingFilter.doFilter(AbstractMauRequestTaggingFilter.java:40)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MauEventFilter.doFilter(MauEventFilter.java:49)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.security.JiraSecurityFilter.lambda$doFilter$0(JiraSecurityFilter.java:66)\\ncom.atlassian.jira.security.JiraSecurityFilter$$Lambda$1249/1209802067.doFilter(Unknown Source)\\ncom.atlassian.seraph.filter.SecurityFilter.doFilter(SecurityFilter.java:242)\\ncom.atlassian.jira.security.JiraSecurityFilter.doFilter(JiraSecurityFilter.java:64)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.security.auth.trustedapps.filter.TrustedApplicationsFilter.doFilter(TrustedApplicationsFilter.java:94)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.seraph.filter.BaseLoginFilter.doFilter(BaseLoginFilter.java:148)\\ncom.atlassian.jira.web.filters.JiraLoginFilter.doFilter(JiraLoginFilter.java:77)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.oauth.serviceprovider.internal.servlet.OAuthFilter.doFilter(OAuthFilter.java:67)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.plugins.rest.module.servlet.RestSeraphFilter.doFilter(RestSeraphFilter.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.johnson.JiraJohnson503Filter.doFilter(JiraJohnson503Filter.java:79)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\norg.tuckey.web.filters.urlrewrite.RuleChain.handleRewrite(RuleChain.java:176)\\norg.tuckey.web.filters.urlrewrite.RuleChain.doRules(RuleChain.java:145)\\norg.tuckey.web.filters.urlrewrite.UrlRewriter.processRequest(UrlRewriter.java:92)\\norg.tuckey.web.filters.urlrewrite.UrlRewriteFilter.doFilter(UrlRewriteFilter.java:394)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.servermetrics.CorrelationIdPopulatorFilter.doFilter(CorrelationIdPopulatorFilter.java:30)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.analytics.client.filter.JiraAnalyticsFilter.doFilter(JiraAnalyticsFilter.java:40)\\ncom.atlassian.analytics.client.filter.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:33)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.request.RedirectInterceptingFilter.doFilter(RedirectInterceptingFilter.java:21)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.LocationCleanerFilter.doFilter(LocationCleanerFilter.java:36)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1234/1612555467.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.steps.ChainedFilterStepRunner.doFilter(ChainedFilterStepRunner.java:74)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.core.filters.cache.AbstractCachingFilter.doFilter(AbstractCachingFilter.java:31)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.core.filters.encoding.AbstractEncodingFilter.doFilter(AbstractEncodingFilter.java:39)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.jira.web.filters.PathMatchingEncodingFilter.doFilter(PathMatchingEncodingFilter.java:39)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MultipartBoundaryCheckFilter.doFilter(MultipartBoundaryCheckFilter.java:36)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.servermetrics.MetricsCollectorFilter.doFilter(MetricsCollectorFilter.java:25)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.steps.ChainedFilterStepRunner.doFilter(ChainedFilterStepRunner.java:74)\\ncom.atlassian.jira.web.filters.JiraFirstFilter.doFilter(JiraFirstFilter.java:57)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.gzipfilter.GzipFilter.doFilterInternal(GzipFilter.java:115)\\ncom.atlassian.gzipfilter.GzipFilter.doFilter(GzipFilter.java:92)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:493)\\norg.apache.catalina.valves.StuckThreadDetectionValve.invoke(StuckThreadDetectionValve.java:206)\\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:137)\\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\\norg.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:660)\\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:798)\\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:808)\\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1498)\\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\\njava.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\\njava.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\\njava.lang.Thread.run(Thread.java:748)"}],"reason":"LuceneQueryExecutionEvent{queryTermMetrics={issue_assignee:JIRAUSER10000=TermMetric{count=1, isCustomField=false}, resolution:-1=TermMetric{count=1, isCustomField=false}}, numberOfClausesInQuery=2, numberOfCustomFieldsUsed=0, executionTime=6911, numberOfResults=0, collectorType='TopDocs'}"}	4	JQL	JQL-1001	100	jira-node2	\N	not-detected	\N	\N
1594293956956	{"threadDump":[{"id":147,"name":"http-nio-8080-exec-8","daemon":true,"state":"RUNNABLE","stackTrace":"sun.management.ThreadImpl.getThreadInfo1(Native Method)\\nsun.management.ThreadImpl.getThreadInfo(ThreadImpl.java:178)\\ncom.atlassian.diagnostics.internal.detail.DefaultThreadDumpProducer.produce(DefaultThreadDumpProducer.java:38)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.lambda$null$0(JqlQueryMonitor.java:59)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor$$Lambda$1731/89557286.get(Unknown Source)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor$$Lambda$1732/580123644.apply(Unknown Source)\\njava.util.Optional.map(Optional.java:215)\\ncom.atlassian.diagnostics.internal.DefaultComponentMonitor.alert(DefaultComponentMonitor.java:75)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$null$0(InitializingMonitor.java:44)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$1730/204463201.run(Unknown Source)\\ncom.atlassian.diagnostics.internal.concurrent.Gate.ifAccessible(Gate.java:68)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.lambda$alert$1(InitializingMonitor.java:41)\\ncom.atlassian.diagnostics.internal.InitializingMonitor$$Lambda$1729/357799014.accept(Unknown Source)\\njava.util.Optional.ifPresent(Optional.java:159)\\ncom.atlassian.diagnostics.internal.InitializingMonitor.alert(InitializingMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlert(JqlQueryMonitor.java:56)\\ncom.atlassian.jira.diagnostics.jql.JqlQueryMonitor.raiseAlertForSlowQuery(JqlQueryMonitor.java:40)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.raiseAnAlert(AlertingSlowJqlQueryEventListener.java:32)\\ncom.atlassian.jira.diagnostics.jql.AlertingSlowJqlQueryEventListener.handleEvent(AlertingSlowJqlQueryEventListener.java:20)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.event.internal.SingleParameterMethodListenerInvoker.invoke(SingleParameterMethodListenerInvoker.java:42)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.lambda$null$0(AsynchronousAbleEventDispatcher.java:37)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$395/1201283639.run(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher$$Lambda$81/1194869046.execute(Unknown Source)\\ncom.atlassian.event.internal.AsynchronousAbleEventDispatcher.dispatch(AsynchronousAbleEventDispatcher.java:85)\\ncom.atlassian.event.internal.EventPublisherImpl.invokeListeners(EventPublisherImpl.java:227)\\ncom.atlassian.event.internal.EventPublisherImpl.publish(EventPublisherImpl.java:112)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.publishMetricEvent(LuceneSearchProvider.java:236)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.getHits(LuceneSearchProvider.java:222)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:362)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:135)\\ncom.atlassian.jira.issue.search.providers.LuceneSearchProvider.search(LuceneSearchProvider.java:140)\\ncom.atlassian.jira.bc.issue.search.DefaultSearchService.search(DefaultSearchService.java:118)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.plugin.util.ContextClassLoaderSettingInvocationHandler.invoke(ContextClassLoaderSettingInvocationHandler.java:26)\\ncom.sun.proxy.$Proxy597.search(Unknown Source)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\norg.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\\norg.eclipse.gemini.blueprint.service.importer.support.internal.aop.ServiceInvoker.doInvoke(ServiceInvoker.java:56)\\norg.eclipse.gemini.blueprint.service.importer.support.internal.aop.ServiceInvoker.invoke(ServiceInvoker.java:60)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.eclipse.gemini.blueprint.service.util.internal.aop.ServiceTCCLInterceptor.invokeUnprivileged(ServiceTCCLInterceptor.java:70)\\norg.eclipse.gemini.blueprint.service.util.internal.aop.ServiceTCCLInterceptor.invoke(ServiceTCCLInterceptor.java:53)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.eclipse.gemini.blueprint.service.importer.support.LocalBundleContextAdvice.invoke(LocalBundleContextAdvice.java:57)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.doProceed(DelegatingIntroductionInterceptor.java:136)\\norg.springframework.aop.support.DelegatingIntroductionInterceptor.invoke(DelegatingIntroductionInterceptor.java:124)\\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\\norg.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\\ncom.sun.proxy.$Proxy2862.search(Unknown Source)\\ncom.atlassian.jira.gadgets.system.IssueTableResource.createResponse(IssueTableResource.java:476)\\ncom.atlassian.jira.gadgets.system.IssueTableResource.getJqlTable(IssueTableResource.java:299)\\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\\njava.lang.reflect.Method.invoke(Method.java:498)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper$ResponseOutInvoker$1.invoke(DispatchProviderHelper.java:192)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper$1.intercept(DispatchProviderHelper.java:83)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DefaultMethodInvocation.invoke(DefaultMethodInvocation.java:53)\\ncom.atlassian.plugins.rest.common.expand.interceptor.ExpandInterceptor.intercept(ExpandInterceptor.java:41)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DefaultMethodInvocation.invoke(DefaultMethodInvocation.java:53)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper.invokeMethodWithInterceptors(DispatchProviderHelper.java:110)\\ncom.atlassian.plugins.rest.common.interceptor.impl.DispatchProviderHelper$ResponseOutInvoker._dispatch(DispatchProviderHelper.java:190)\\ncom.sun.jersey.server.impl.model.method.dispatch.ResourceJavaMethodDispatcher.dispatch(ResourceJavaMethodDispatcher.java:75)\\ncom.sun.jersey.server.impl.uri.rules.HttpMethodRule.accept(HttpMethodRule.java:302)\\ncom.sun.jersey.server.impl.uri.rules.RightHandPathRule.accept(RightHandPathRule.java:147)\\ncom.sun.jersey.server.impl.uri.rules.ResourceClassRule.accept(ResourceClassRule.java:108)\\ncom.sun.jersey.server.impl.uri.rules.RightHandPathRule.accept(RightHandPathRule.java:147)\\ncom.sun.jersey.server.impl.uri.rules.RootResourceClassesRule.accept(RootResourceClassesRule.java:84)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl._handleRequest(WebApplicationImpl.java:1542)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl._handleRequest(WebApplicationImpl.java:1473)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl.handleRequest(WebApplicationImpl.java:1419)\\ncom.sun.jersey.server.impl.application.WebApplicationImpl.handleRequest(WebApplicationImpl.java:1409)\\ncom.sun.jersey.spi.container.servlet.WebComponent.service(WebComponent.java:409)\\ncom.sun.jersey.spi.container.servlet.ServletContainer.service(ServletContainer.java:558)\\ncom.atlassian.plugins.rest.module.RestDelegatingServletFilter$JerseyOsgiServletContainer.doFilter(RestDelegatingServletFilter.java:159)\\ncom.sun.jersey.spi.container.servlet.ServletContainer.doFilter(ServletContainer.java:829)\\ncom.atlassian.plugins.rest.module.RestDelegatingServletFilter.doFilter(RestDelegatingServletFilter.java:69)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.plugins.rest.module.servlet.RestServletUtilsUpdaterFilter.doFilterInternal(RestServletUtilsUpdaterFilter.java:22)\\ncom.atlassian.plugins.rest.module.servlet.RestServletUtilsUpdaterFilter.doFilter(RestServletUtilsUpdaterFilter.java:34)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.applinks.core.rest.context.ContextFilter.doFilter(ContextFilter.java:24)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.mywork.client.filter.ServingRequestsFilter.doFilter(ServingRequestsFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.jira.plugin.mobile.web.filter.MobileAppRequestFilter.doFilter(MobileAppRequestFilter.java:37)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.jira.plugin.mobile.login.MobileLoginSuccessFilter.doFilter(MobileLoginSuccessFilter.java:54)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.diagnostics.internal.platform.monitor.http.HttpRequestMonitoringFilter.doFilter(HttpRequestMonitoringFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.analytics.client.filter.UniversalAnalyticsFilter.doFilter(UniversalAnalyticsFilter.java:75)\\ncom.atlassian.analytics.client.filter.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:33)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.request.RedirectInterceptingFilter.doFilter(RedirectInterceptingFilter.java:21)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsSiteMeshFixupFilter.doFilter(PrettyUrlsSiteMeshFixupFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsDispatcherFilter.doFilter(PrettyUrlsDispatcherFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsSiteMeshFilter.doFilter(PrettyUrlsSiteMeshFilter.java:80)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsMatcherFilter.doFilter(PrettyUrlsMatcherFilter.java:51)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.labs.botkiller.BotKillerFilter.doFilter(BotKillerFilter.java:36)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MobileAppRequestFilter.doFilter(MobileAppRequestFilter.java:36)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.accesslog.AccessLogFilter.executeRequest(AccessLogFilter.java:93)\\ncom.atlassian.jira.web.filters.accesslog.AccessLogFilter.doFilter(AccessLogFilter.java:79)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.security.xsrf.XsrfTokenAdditionRequestFilter.doFilter(XsrfTokenAdditionRequestFilter.java:46)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.pagebuilder.PageBuilderFilter.doFilter(PageBuilderFilter.java:81)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.CommittedResponseHtmlErrorRecoveryFilter.doFilter(CommittedResponseHtmlErrorRecoveryFilter.java:55)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.mau.AbstractMauRequestTaggingFilter.doFilter(AbstractMauRequestTaggingFilter.java:40)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MauEventFilter.doFilter(MauEventFilter.java:49)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.security.JiraSecurityFilter.lambda$doFilter$0(JiraSecurityFilter.java:66)\\ncom.atlassian.jira.security.JiraSecurityFilter$$Lambda$1325/1937175254.doFilter(Unknown Source)\\ncom.atlassian.seraph.filter.SecurityFilter.doFilter(SecurityFilter.java:242)\\ncom.atlassian.jira.security.JiraSecurityFilter.doFilter(JiraSecurityFilter.java:64)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.security.auth.trustedapps.filter.TrustedApplicationsFilter.doFilter(TrustedApplicationsFilter.java:94)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.seraph.filter.BaseLoginFilter.doFilter(BaseLoginFilter.java:148)\\ncom.atlassian.jira.web.filters.JiraLoginFilter.doFilter(JiraLoginFilter.java:77)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.oauth.serviceprovider.internal.servlet.OAuthFilter.doFilter(OAuthFilter.java:67)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.plugins.rest.module.servlet.RestSeraphFilter.doFilter(RestSeraphFilter.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.johnson.JiraJohnson503Filter.doFilter(JiraJohnson503Filter.java:79)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\norg.tuckey.web.filters.urlrewrite.RuleChain.handleRewrite(RuleChain.java:176)\\norg.tuckey.web.filters.urlrewrite.RuleChain.doRules(RuleChain.java:145)\\norg.tuckey.web.filters.urlrewrite.UrlRewriter.processRequest(UrlRewriter.java:92)\\norg.tuckey.web.filters.urlrewrite.UrlRewriteFilter.doFilter(UrlRewriteFilter.java:394)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.servermetrics.CorrelationIdPopulatorFilter.doFilter(CorrelationIdPopulatorFilter.java:30)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:39)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.analytics.client.filter.JiraAnalyticsFilter.doFilter(JiraAnalyticsFilter.java:40)\\ncom.atlassian.analytics.client.filter.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:33)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.request.RedirectInterceptingFilter.doFilter(RedirectInterceptingFilter.java:21)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.web.servlet.plugin.LocationCleanerFilter.doFilter(LocationCleanerFilter.java:36)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.lambda$doFilter$0(DelegatingPluginFilter.java:57)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter$$Lambda$1310/152137342.doFilter(Unknown Source)\\ncom.atlassian.prettyurls.filter.PrettyUrlsCombinedMatchDispatcherFilter.doFilter(PrettyUrlsCombinedMatchDispatcherFilter.java:56)\\ncom.atlassian.plugin.servlet.filter.DelegatingPluginFilter.doFilter(DelegatingPluginFilter.java:62)\\ncom.atlassian.plugin.servlet.filter.IteratingFilterChain.doFilter(IteratingFilterChain.java:37)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:55)\\ncom.atlassian.plugin.servlet.filter.ServletFilterModuleContainerFilter.doFilter(ServletFilterModuleContainerFilter.java:43)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.steps.ChainedFilterStepRunner.doFilter(ChainedFilterStepRunner.java:74)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.core.filters.cache.AbstractCachingFilter.doFilter(AbstractCachingFilter.java:31)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.core.filters.encoding.AbstractEncodingFilter.doFilter(AbstractEncodingFilter.java:39)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\ncom.atlassian.jira.web.filters.PathMatchingEncodingFilter.doFilter(PathMatchingEncodingFilter.java:39)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.MultipartBoundaryCheckFilter.doFilter(MultipartBoundaryCheckFilter.java:36)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.servermetrics.MetricsCollectorFilter.doFilter(MetricsCollectorFilter.java:25)\\ncom.atlassian.core.filters.AbstractHttpFilter.doFilter(AbstractHttpFilter.java:32)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.jira.web.filters.steps.ChainedFilterStepRunner.doFilter(ChainedFilterStepRunner.java:74)\\ncom.atlassian.jira.web.filters.JiraFirstFilter.doFilter(JiraFirstFilter.java:57)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\ncom.atlassian.gzipfilter.GzipFilter.doFilterInternal(GzipFilter.java:115)\\ncom.atlassian.gzipfilter.GzipFilter.doFilter(GzipFilter.java:92)\\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:493)\\norg.apache.catalina.valves.StuckThreadDetectionValve.invoke(StuckThreadDetectionValve.java:206)\\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:137)\\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\\norg.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:660)\\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:798)\\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:808)\\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1498)\\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\\njava.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\\njava.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\\njava.lang.Thread.run(Thread.java:748)"}],"reason":"LuceneQueryExecutionEvent{queryTermMetrics={issue_assignee:JIRAUSER10000=TermMetric{count=1, isCustomField=false}, resolution:-1=TermMetric{count=1, isCustomField=false}}, numberOfClausesInQuery=2, numberOfCustomFieldsUsed=0, executionTime=9207, numberOfResults=0, collectorType='TopDocs'}"}	5	JQL	JQL-1001	100	jira-node1	\N	not-detected	\N	\N
\.


--
-- Data for Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_ED669C_SEEN_ASSERTIONS" ("ASSERTION_ID", "EXPIRY_TIMESTAMP", "ID") FROM stdin;
\.


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_user (id, user_key, lower_user_name) FROM stdin;
10000	JIRAUSER10000	pengwinn
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_changed_value (id, log_id, name, delta_from, delta_to) FROM stdin;
10000	10001	Permission		Browse Users
10001	10001	Group		jira-software-users
10002	10002	Permission		Manage Group Filter Subscriptions
10003	10002	Group		jira-software-users
10004	10003	Permission		Bulk Change
10005	10003	Group		jira-software-users
10006	10004	Permission		Create Shared Objects
10007	10004	Group		jira-software-users
10008	10005	Organisation	\N	test
10009	10005	Date Purchased	\N	08/Jul/20
10010	10005	License Type	\N	Jira Software (Data Center): Evaluation
10011	10005	Server ID	\N	BXO2-Z644-O93X-COXK
10012	10005	Support Entitlement Number (SEN)	\N	SEN-L15717252
10013	10005	User Limit	\N	Unlimited
10014	10005	jira-software	\N	-1
10015	10006	Organisation	\N	test
10016	10006	Date Purchased	\N	08/Jul/20
10017	10006	License Type	\N	Jira Software (Data Center): Evaluation
10018	10006	Server ID	\N	BXO2-Z644-O93X-COXK
10019	10006	Support Entitlement Number (SEN)	\N	SEN-L15717289
10020	10006	User Limit	\N	Unlimited
10021	10006	jira-software	\N	-1
10022	10007	Username	\N	pengwinn
10023	10007	Full name	\N	pengwinn
10024	10007	Email	\N	pengwinn@localhost
10025	10007	Active / Inactive	\N	Active
10026	10009	Permission		Browse Users
10027	10009	Group		jira-administrators
10028	10010	Permission		Bulk Change
10029	10010	Group		jira-administrators
10030	10011	Permission		Manage Group Filter Subscriptions
10031	10011	Group		jira-administrators
10032	10012	Permission		Create Shared Objects
10033	10012	Group		jira-administrators
10100	10100	Name	\N	TEST: Project Management Workflow
10101	10100	Description	\N	
10102	10100	Status	\N	To Do
10103	10100	Status	\N	In Progress
10104	10100	Status	\N	Done
10105	10100	Transition	\N	Create (To Do)
10106	10100	Transition	\N	Start Progress (To Do -> In Progress)
10107	10100	Transition	\N	Done (To Do -> Done)
10108	10100	Transition	\N	Stop Progress (In Progress -> To Do)
10109	10100	Transition	\N	Done (In Progress -> Done)
10110	10100	Transition	\N	Reopen (Done -> To Do)
10111	10100	Transition	\N	Reopen and start progress (Done -> In Progress)
10112	10101	Name	\N	TEST: Project Management Workflow Scheme
10113	10101	Description	\N	
10114	10104	Name		Open and unassigned (TEST)
10115	10104	Description		\N
10116	10104	Owner		JIRAUSER10000
10117	10104	Shared With	[]	[Project: test (VIEW)]
10118	10104	JQL Query		{project = 10000} AND {statusCategory != "Done"} AND {assignee = EMPTY} order by priority DESC
10119	10105	Name		Due this week (TEST)
10120	10105	Description		\N
10121	10105	Owner		JIRAUSER10000
10122	10105	Shared With	[]	[Project: test (VIEW)]
10123	10105	JQL Query		{project = 10000} AND {duedate >= startOfWeek()} AND {duedate <= endOfWeek()} order by priority DESC
10124	10106	Name		Overdue (TEST)
10125	10106	Description		\N
10126	10106	Owner		JIRAUSER10000
10127	10106	Shared With	[]	[Project: test (VIEW)]
10128	10106	JQL Query		{project = 10000} AND {statusCategory != "Done"} AND {duedate < now()} order by duedate DESC
10129	10107	Name	\N	test
10130	10107	Key	\N	TEST
10131	10107	Description	\N	
10132	10107	URL	\N	
10133	10107	Project Lead	\N	pengwinn
10134	10107	Default Assignee	\N	Unassigned
\.


--
-- Data for Name: audit_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_item (id, log_id, object_type, object_id, object_name, object_parent_id, object_parent_name) FROM stdin;
10000	10008	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory
10001	10013	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory
10100	10102	SCHEME	10100	TEST: Project Management Workflow Scheme	\N	\N
10101	10104	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory
10102	10104	PROJECT	10000	test	\N	\N
10103	10105	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory
10104	10105	PROJECT	10000	test	\N	\N
10105	10106	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory
10106	10106	PROJECT	10000	test	\N	\N
10107	10107	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_log (id, remote_address, created, author_key, summary, category, object_type, object_id, object_name, object_parent_id, object_parent_name, author_type, event_source_name, description, long_description, search_field) FROM stdin;
10000	10.0.0.10	2020-07-09 09:08:30.551+00	\N	Group created	group management	GROUP	\N	jira-software-users	1	Jira Internal Directory	0		\N		10.0.0.10 group created management jira-software-users jira internal directory
10001	10.0.0.10	2020-07-09 09:08:30.796+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions browse users jira-software-users
10002	10.0.0.10	2020-07-09 09:08:30.855+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions manage group filter subscriptions jira-software-users
10003	10.0.0.10	2020-07-09 09:08:30.891+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions bulk change jira-software-users
10004	10.0.0.10	2020-07-09 09:08:30.92+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions create shared objects jira-software-users
10005	10.0.0.10	2020-07-09 09:08:31.023+00	\N	New license added	system	LICENSE	0	SEN-L15717252	0	License SEN	0		\N		10.0.0.10 new license added system sen-l15717252 sen test 08/jul/20 jira software (data center): evaluation bxo2-z644-o93x-coxk unlimited -1
10006	10.0.0.10	2020-07-09 09:14:37.443+00	\N	License updated	system	LICENSE	0	SEN-L15717289	0	License SEN	0		\N		10.0.0.10 license updated system sen-l15717289 sen test 08/jul/20 jira software (data center): evaluation bxo2-z644-o93x-coxk unlimited -1
10007	10.0.0.10	2020-07-09 09:15:09.824+00	\N	User created	user management	USER	JIRAUSER10000	pengwinn	1	Jira Internal Directory	0		\N		10.0.0.10 user created management pengwinn jira internal directory pengwinn@localhost active
10008	10.0.0.10	2020-07-09 09:15:09.996+00	\N	User added to group	group management	GROUP	\N	jira-administrators	1	Jira Internal Directory	0		\N		10.0.0.10 user added to group management jira-administrators jira internal directory pengwinn
10009	10.0.0.10	2020-07-09 09:15:10.45+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions browse users jira-administrators
10010	10.0.0.10	2020-07-09 09:15:10.493+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions bulk change jira-administrators
10011	10.0.0.10	2020-07-09 09:15:10.54+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions manage group filter subscriptions jira-administrators
10012	10.0.0.10	2020-07-09 09:15:10.59+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		10.0.0.10 global permission added permissions create shared objects jira-administrators
10013	10.0.0.10	2020-07-09 09:15:10.628+00	\N	User added to group	group management	GROUP	\N	jira-software-users	1	Jira Internal Directory	0		\N		10.0.0.10 user added to group management jira-software-users jira internal directory pengwinn
10100	10.0.0.10	2020-07-09 09:20:40.283+00	JIRAUSER10000	Workflow created	workflows	WORKFLOW	TEST: Project Management Workflow	TEST: Project Management Workflow	\N	\N	1		\N		pengwinn 10.0.0.10 workflow created workflows test: project management to do in progress done create (to do) start -> progress) done) stop (in reopen (done and
10101	10.0.0.10	2020-07-09 09:20:40.462+00	JIRAUSER10000	Workflow scheme created	workflows	SCHEME	10100	TEST: Project Management Workflow Scheme	\N	\N	1		\N		pengwinn 10.0.0.10 workflow scheme created workflows test: project management
10102	10.0.0.10	2020-07-09 09:20:40.543+00	JIRAUSER10000	Workflow scheme added to project	workflows	PROJECT	10000	test	\N	\N	1		\N		pengwinn 10.0.0.10 workflow scheme added to project workflows test test: management
10103	10.0.0.10	2020-07-09 09:20:44.803+00	JIRAUSER10000	Workflow updated	workflows	WORKFLOW	TEST: Project Management Workflow	TEST: Project Management Workflow	\N	\N	1		\N		pengwinn 10.0.0.10 workflow updated workflows test: project management
10104	10.0.0.10	2020-07-09 09:20:46.153+00	JIRAUSER10000	Filter created	filters	FILTER	10000	Open and unassigned (TEST)	\N	\N	1		\N		pengwinn 10.0.0.10 filter created filters open and unassigned (test) jira internal directory test jirauser10000 [] [project: (view)] {project = 10000} {statuscategory != "done"} {assignee empty} order by priority desc
10105	10.0.0.10	2020-07-09 09:20:46.417+00	JIRAUSER10000	Filter created	filters	FILTER	10001	Due this week (TEST)	\N	\N	1		\N		pengwinn 10.0.0.10 filter created filters due this week (test) jira internal directory test jirauser10000 [] [project: (view)] {project = 10000} and {duedate >= startofweek()} <= endofweek()} order by priority desc
10106	10.0.0.10	2020-07-09 09:20:46.545+00	JIRAUSER10000	Filter created	filters	FILTER	10002	Overdue (TEST)	\N	\N	1		\N		pengwinn 10.0.0.10 filter created filters overdue (test) jira internal directory test jirauser10000 [] [project: (view)] {project = 10000} and {statuscategory != "done"} {duedate < now()} order by duedate desc
10107	10.0.0.10	2020-07-09 09:20:46.747+00	JIRAUSER10000	Project created	projects	PROJECT	10000	test	\N	\N	1		\N		pengwinn 10.0.0.10 project created projects test jira internal directory unassigned
\.


--
-- Data for Name: avatar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avatar (id, filename, contenttype, avatartype, owner, systemavatar) FROM stdin;
10321	development_task.svg	image/svg+xml	issuetype	\N	1
10000	codegeist.png	image/png	project	\N	1
10322	feedback.svg	image/svg+xml	issuetype	\N	1
10001	bird.svg	image/svg+xml	project	\N	1
10323	request_access.svg	image/svg+xml	issuetype	\N	1
10002	jm_black.png	image/png	project	\N	1
10324	default.svg	image/svg+xml	project	\N	1
10003	jm_brown.png	image/png	project	\N	1
10004	jm_orange.png	image/png	project	\N	1
10325	code.svg	image/svg+xml	project	\N	1
10005	jm_red.png	image/png	project	\N	1
10326	coffee.svg	image/svg+xml	project	\N	1
10006	jm_white.png	image/png	project	\N	1
10327	design.svg	image/svg+xml	project	\N	1
10007	jm_yellow.png	image/png	project	\N	1
10328	drill.svg	image/svg+xml	project	\N	1
10008	monster.png	image/png	project	\N	1
10329	food.svg	image/svg+xml	project	\N	1
10009	nature.svg	image/svg+xml	project	\N	1
10330	notes.svg	image/svg+xml	project	\N	1
10010	koala.svg	image/svg+xml	project	\N	1
10331	red-flag.svg	image/svg+xml	project	\N	1
10011	rocket.svg	image/svg+xml	project	\N	1
10332	science.svg	image/svg+xml	project	\N	1
10100	Avatar-1.png	image/png	user	\N	1
10333	support.svg	image/svg+xml	project	\N	1
10334	bull.svg	image/svg+xml	user	\N	1
10101	Avatar-2.png	image/png	user	\N	1
10335	cat.svg	image/svg+xml	user	\N	1
10102	Avatar-3.png	image/png	user	\N	1
10336	dog.svg	image/svg+xml	user	\N	1
10103	Avatar-4.png	image/png	user	\N	1
10104	Avatar-5.png	image/png	user	\N	1
10337	female_1.svg	image/svg+xml	user	\N	1
10105	Avatar-6.png	image/png	user	\N	1
10338	female_2.svg	image/svg+xml	user	\N	1
10106	Avatar-7.png	image/png	user	\N	1
10339	female_3.svg	image/svg+xml	user	\N	1
10107	Avatar-8.png	image/png	user	\N	1
10340	female_4.svg	image/svg+xml	user	\N	1
10108	Avatar-9.png	image/png	user	\N	1
10341	ghost.svg	image/svg+xml	user	\N	1
10109	Avatar-10.png	image/png	user	\N	1
10342	male_1.svg	image/svg+xml	user	\N	1
10110	Avatar-11.png	image/png	user	\N	1
10343	male_2.svg	image/svg+xml	user	\N	1
10111	Avatar-12.png	image/png	user	\N	1
10344	male_3.svg	image/svg+xml	user	\N	1
10112	Avatar-13.png	image/png	user	\N	1
10345	male_4.svg	image/svg+xml	user	\N	1
10113	Avatar-14.png	image/png	user	\N	1
10346	male_5.svg	image/svg+xml	user	\N	1
10114	Avatar-15.png	image/png	user	\N	1
10347	male_6.svg	image/svg+xml	user	\N	1
10115	Avatar-16.png	image/png	user	\N	1
10348	male_8.svg	image/svg+xml	user	\N	1
10116	Avatar-17.png	image/png	user	\N	1
10349	owl.svg	image/svg+xml	user	\N	1
10117	Avatar-18.png	image/png	user	\N	1
10350	pirate.svg	image/svg+xml	user	\N	1
10118	Avatar-19.png	image/png	user	\N	1
10351	robot.svg	image/svg+xml	user	\N	1
10119	Avatar-20.png	image/png	user	\N	1
10352	vampire.svg	image/svg+xml	user	\N	1
10120	Avatar-21.png	image/png	user	\N	1
10121	Avatar-22.png	image/png	user	\N	1
10122	Avatar-default.svg	image/svg+xml	user	\N	1
10123	Avatar-unknown.png	image/png	user	\N	1
10200	cloud.svg	image/svg+xml	project	\N	1
10201	spanner.svg	image/svg+xml	project	\N	1
10202	cd.svg	image/svg+xml	project	\N	1
10203	money.svg	image/svg+xml	project	\N	1
10204	mouse-hand.svg	image/svg+xml	project	\N	1
10205	yeti.svg	image/svg+xml	project	\N	1
10206	power.svg	image/svg+xml	project	\N	1
10207	refresh.svg	image/svg+xml	project	\N	1
10208	phone.svg	image/svg+xml	project	\N	1
10209	settings.svg	image/svg+xml	project	\N	1
10210	storm.svg	image/svg+xml	project	\N	1
10211	plane.svg	image/svg+xml	project	\N	1
10300	genericissue.svg	image/svg+xml	issuetype	\N	1
10303	bug.svg	image/svg+xml	issuetype	\N	1
10304	defect.svg	image/svg+xml	issuetype	\N	1
10306	documentation.svg	image/svg+xml	issuetype	\N	1
10307	epic.svg	image/svg+xml	issuetype	\N	1
10308	exclamation.svg	image/svg+xml	issuetype	\N	1
10309	design_task.svg	image/svg+xml	issuetype	\N	1
10310	improvement.svg	image/svg+xml	issuetype	\N	1
10311	newfeature.svg	image/svg+xml	issuetype	\N	1
10312	remove_feature.svg	image/svg+xml	issuetype	\N	1
10313	requirement.svg	image/svg+xml	issuetype	\N	1
10314	sales.svg	image/svg+xml	issuetype	\N	1
10315	story.svg	image/svg+xml	issuetype	\N	1
10316	subtask.svg	image/svg+xml	issuetype	\N	1
10318	task.svg	image/svg+xml	issuetype	\N	1
10320	question.svg	image/svg+xml	issuetype	\N	1
10500	female_5.svg	image/svg+xml	user	\N	1
10501	female_6.svg	image/svg+xml	user	\N	1
10502	female_7.svg	image/svg+xml	user	\N	1
10503	female_8.svg	image/svg+xml	user	\N	1
10504	female_9.svg	image/svg+xml	user	\N	1
10505	male_7.svg	image/svg+xml	user	\N	1
10506	male_9.svg	image/svg+xml	user	\N	1
10507	pirate_female.svg	image/svg+xml	user	\N	1
10508	princess.svg	image/svg+xml	user	\N	1
10509	spectrum.svg	image/svg+xml	project	\N	1
\.


--
-- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.board (id, jql) FROM stdin;
\.


--
-- Data for Name: boardproject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boardproject (board_id, project_id) FROM stdin;
\.


--
-- Data for Name: changegroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changegroup (id, issueid, author, created) FROM stdin;
\.


--
-- Data for Name: changeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changeitem (id, groupid, fieldtype, field, oldvalue, oldstring, newvalue, newstring) FROM stdin;
\.


--
-- Data for Name: clusteredjob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusteredjob (id, job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
10900	analytics-collection	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	C	\N	\N	0 0 23 * * ?	\N	1594335600000	1	\N
10901	assertionId-cleanup	com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService	I	3600000	1594310268666	\N	\N	1594310268666	1	\N
10906	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	I	300000	1594307057036	\N	\N	1594308257038	5	\\xaced000573720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00017870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c0200007870000000027400116576656e74436f6e73756d65724e616d6574000d636c75737465724c6f636b49647571007e0003000000027400116d61696c4576656e74436f6e73756d6572740059636f6d2e61746c61737369616e2e6a6972612e706c7567696e732e696e666f726d2e6261746368696e672e63726f6e2e4f6e6365506572436c75737465724a6f6252756e6e65722e6d61696c4576656e74436f6e73756d6572
10903	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	I	3600000	1594310341764	\N	\N	1594310341764	1	\N
10905	com.atlassian.jira.plugins.inform.events.cleanup.CleanupJobScheduler	com.atlassian.jira.plugins.inform.events.cleanup.CleanupJobScheduler	C	\N	\N	0 0 0 1/1 * ? *	\N	1594339200000	1	\N
10907	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl.mentions	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	I	60000	1594306817077	\N	\N	1594308257093	25	\\xaced000573720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00017870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c0200007870000000027400116576656e74436f6e73756d65724e616d6574000d636c75737465724c6f636b49647571007e0003000000027400186d61696c4d656e74696f6e4576656e74436f6e73756d6572740060636f6d2e61746c61737369616e2e6a6972612e706c7567696e732e696e666f726d2e6261746368696e672e63726f6e2e4f6e6365506572436c75737465724a6f6252756e6e65722e6d61696c4d656e74696f6e4576656e74436f6e73756d6572
10005	com.atlassian.jira.service.JiraService:10002	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 0 0 * * ?	\N	1594339200000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002712
10204	PluginRequestCheckJob-job	PluginRequestCheckJob-runner	I	3600000	1594286136269	\N	\N	1594310361823	7	\N
10909	applink-status-analytics-job	com.atlassian.applinks.analytics.ApplinkStatusJob	I	86400000	\N	\N	\N	1594393161825	2	\N
10104	com.atlassian.jira.service.JiraService:10200	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 45 8/12 * * ?	\N	1594327500000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000000000027d8
10105	com.atlassian.jira.service.JiraService:10201	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 45 8/12 * * ?	\N	1594327500000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000000000027d9
10203	LocalPluginLicenseNotificationJob-job	LocalPluginLicenseNotificationJob-runner	I	86400000	1594286136235	\N	\N	1594372536262	2	\N
10205	PluginUpdateCheckJob-job	PluginUpdateCheckJob-runner	I	86400000	1594344549477	\N	\N	1594344549477	1	\N
10206	InstanceTopologyJob-job	InstanceTopologyJob-runner	I	86400000	1594353300615	\N	\N	1594353300615	1	\N
10304	com.atlassian.jira.service.JiraService:10001	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 10 9/12 * * ?	\N	1594329000000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002711
10902	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	DailyAlertAnalyticsJob	C	\N	\N	0 19 * * * ?	\N	1594311540000	2	\N
10106	com.atlassian.jira.service.JiraService:10202	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 * * * * ?	\N	1594308240000	280	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000000000027da
10913	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.UpdateGlancesDataJobHandler	I	60000	1594306785210	\N	\N	1594308285232	26	\N
10915	Service Provider Session Remover	com.atlassian.oauth.serviceprovider.internal.ExpiredSessionRemover	I	28800000	1594335559856	\N	\N	1594335559856	1	\N
10916	TruncateAlertsJobRunner	com.atlassian.diagnostics.internal.DefaultMonitoringService$TruncateAlertsJobRunner	I	86400000	1594393160926	\N	\N	1594393160926	1	\N
10912	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.InstallGlancesJobHandler	I	3600000	1594306783550	\N	\N	1594310383569	2	\N
10914	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.ping.RefreshConnectionStatusJobHandler	I	3600000	1594306787645	\N	\N	1594310387645	2	\N
\.


--
-- Data for Name: clusterlockstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusterlockstatus (id, lock_name, locked_by_node, update_time) FROM stdin;
10003	ao-plugin.upgrade.com.atlassian.jira.diagnostics-plugin	\N	1594306719772
10009	ao-plugin.upgrade.com.atlassian.jira.mobile.jira-mobile-rest	\N	1594306730004
10200	com.atlassian.upm.impl.PluginManagerPluginAsynchronousTaskStatusStoreImpl	\N	1594306757219
10006	ao-plugin.upgrade.com.atlassian.jira.mail-plugin	\N	1594306725309
10218	com.atlassian.jira.plugins.inform.batching.cron.OncePerClusterJobRunner.mailEventConsumer	\N	1594307957077
10217	com.atlassian.jira.plugins.inform.batching.cron.OncePerClusterJobRunner.mailMentionEventConsumer	\N	1594308197131
10021	com.atlassian.jira.upgrade.UpgradeService	\N	1594306818527
10001	ao-plugin.upgrade.com.atlassian.jira.plugins.project-templates-plugin	\N	1594306716556
10219	com.atlassian.jira.config.DefaultStatusManager.creationLock	\N	1594286440043
10000	com.atlassian.jira.cluster.zdu.DefaultClusterUpgradeStateManager.clusterUpgradeState	\N	1594308227527
10146	com.atlassian.jira.index.request.DefaultReindexRequestManager.processRequests	\N	1594286133313
10147	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counter	\N	1594293732459
10144	com.atlassian.jira.crowd.embedded.ofbiz.EagerOfBizUserCache.loadUserCacheLock	\N	1594308080634
10201	com.atlassian.upm.request.PluginSettingsPluginRequestStore	\N	1594306761941
10017	ao-plugin.upgrade.com.atlassian.plugins.authentication.atlassian-authentication-plugin	\N	1594306735365
10002	ao-plugin.upgrade.com.atlassian.jira.jira-projects-plugin	\N	1594306718189
10011	ao-plugin.upgrade.com.atlassian.jira.plugins.jira-optimizer-plugin	\N	1594306732046
10007	ao-plugin.upgrade.com.atlassian.whisper.atlassian-whisper-plugin	\N	1594306728937
10022	com.atlassian.jira.config.DefaultReindexMessageManager.messageLock	\N	1594293238941
10004	ao-plugin.upgrade.com.atlassian.plugins.atlassian-nav-links-plugin	\N	1594306722541
10210	sal.upgrade.com.atlassian.upm.atlassian-universal-plugin-manager-plugin	\N	1594306760416
10005	ao-plugin.upgrade.com.atlassian.jira.jira-invite-user-plugin	\N	1594306723224
10008	ao-plugin.upgrade.com.atlassian.jira.plugins.inform.event-plugin	\N	1594306729577
10014	ao-plugin.upgrade.com.atlassian.plugins.base-hipchat-integration-plugin-api	\N	1594306733393
10012	ao-plugin.upgrade.com.atlassian.webhooks.atlassian-webhooks-plugin	\N	1594306732524
10220	com.atlassian.jira.config.DefaultResolutionManager.creationLock	\N	1594286441470
10013	ao-plugin.upgrade.com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	\N	1594306732945
10015	ao-plugin.upgrade.com.atlassian.labs.hipchat.hipchat-for-jira-plugin	\N	1594306734414
10018	ao-plugin.upgrade.com.atlassian.streams.thirdparty-plugin	\N	1594306737260
10221	com.atlassian.jira.bc.workflow.DefaultWorkflowService.overwriteWorkflow	\N	1594286444962
10016	ao-plugin.upgrade.com.atlassian.plugins.atlassian-whitelist-core-plugin	\N	1594306734980
10020	com.atlassian.jira.service.DefaultServiceManager.updateLock	\N	1594294515494
10207	sal.upgrade.com.atlassian.crowd.embedded.admin	\N	1594306760215
10019	ao-plugin.upgrade.com.atlassian.troubleshooting.plugin-jira	\N	1594306738015
10214	sal.upgrade.com.atlassian.jira.jira-mail-plugin	\N	1594306760735
10204	sal.upgrade.com.atlassian.sal.jira	\N	1594306760035
10211	sal.upgrade.com.atlassian.plugins.atlassian-whitelist-core-plugin	\N	1594306760480
10208	sal.upgrade.com.atlassian.labs.hipchat.hipchat-for-jira-plugin	\N	1594306760272
10205	sal.upgrade.com.atlassian.jira.gadgets	\N	1594306760100
10206	sal.upgrade.com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	\N	1594306760164
10209	sal.upgrade.com.atlassian.jirawallboard.atlassian-wallboard-plugin	\N	1594306760344
10010	com.atlassian.jira.upgrade.PluginUpgradeManager	\N	1594306818835
10215	sal.upgrade.com.atlassian.plugins.atlassian-nav-links-plugin	\N	1594306760793
10212	sal.upgrade.com.atlassian.jira.lookandfeel	\N	1594306760547
10213	sal.upgrade.com.atlassian.jira.project-templates-plugin	\N	1594306760656
10216	sal.upgrade.com.atlassian.jira.plugins.jira-workflow-designer	\N	1594306760898
10203	com.atlassian.sal.jira.upgrade	\N	1594306760915
10202	com.atlassian.upm.notification.PluginSettingsNotificationCache	\N	1594306773263
10222	com.atlassian.jira.security.auth.trustedapps.DefaultCurrentApplicationStore.accessLock	\N	1594308098284
10121	com.atlassian.jira.crowd.embedded.ofbiz.EagerOfBizGroupCache.loadGroupCacheLock	\N	1594306942612
\.


--
-- Data for Name: clustermessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clustermessage (id, source_node, destination_node, claimed_by_node, message, message_time) FROM stdin;
10000	jira-node1	ALL	\N	Reschedule Service:-10000	2020-07-09 08:48:03.902+00
10100	jira-node1	ALL	\N	Import Done:-true	2020-07-09 08:48:10.496+00
10200	jira-node1	ALL	\N	Reschedule Service:-10000	2020-07-09 09:03:15.679+00
10201	jira-node1	ALL	\N	Refresh Listeners	2020-07-09 09:04:04.685+00
10202	jira-node1	ALL	\N	Refresh Listeners	2020-07-09 09:04:05.084+00
10203	jira-node1	ALL	\N	Reschedule Service:-10000	2020-07-09 09:13:30.386+00
10204	jira-node1	ALL	\N	Refresh Listeners	2020-07-09 09:14:02.056+00
10205	jira-node1	ALL	\N	Refresh Listeners	2020-07-09 09:14:02.117+00
10206	jira-node1	ALL	\N	jira.UserIndex:-10000	2020-07-09 09:15:09.645+00
10300	jira-node2	ALL	\N	Reschedule Service:-10000	2020-07-09 09:51:33.533+00
10301	jira-node2	ANY	jira-node1	Backup Index	2020-07-09 09:51:40.115+00
10400	jira-node1	jira-node2	\N	Index Backed Up:-IndexSnapshot_10100.tar.sz	2020-07-09 09:51:45.063+00
10302	jira-node2	ALL	\N	Refresh Listeners	2020-07-09 09:52:33.509+00
10500	jira-node2	ALL	\N	Refresh Listeners	2020-07-09 09:53:19.739+00
10600	jira-node1	ALL	\N	Reschedule Service:-10000	2020-07-09 10:10:54.104+00
10700	jira-node2	ALL	\N	Reschedule Service:-10000	2020-07-09 10:11:21.803+00
10800	jira-node1	ALL	\N	Reschedule Service:-10000	2020-07-09 11:20:06.016+00
10801	jira-node1	ANY	jira-node2	Backup Index	2020-07-09 11:20:12.924+00
10701	jira-node2	jira-node1	\N	Index Backed Up:-IndexSnapshot_10200.tar.sz	2020-07-09 11:20:24.016+00
10900	jira-node1	ALL	\N	Refresh Listeners	2020-07-09 11:21:37.004+00
10901	jira-node1	ALL	\N	Refresh Listeners	2020-07-09 11:22:06.918+00
11000	jira-node2	ALL	\N	Reschedule Service:-10000	2020-07-09 11:35:12.671+00
11100	jira-node1	ALL	\N	Reschedule Service:-10000	2020-07-09 12:51:46.251+00
11200	jira-node2	ALL	\N	Reschedule Service:-10000	2020-07-09 14:59:02.17+00
\.


--
-- Data for Name: clusternode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusternode (node_id, node_state, "timestamp", ip, cache_listener_port, node_build_number, node_version) FROM stdin;
jira-node1	OFFLINE	1594303789189	jira-node1	40001	804001	8.4.0
jira-node2	OFFLINE	1594308227370	jira-node2	40001	804001	8.4.0
\.


--
-- Data for Name: clusternodeheartbeat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusternodeheartbeat (node_id, heartbeat_time, database_time) FROM stdin;
jira-node2	0	1594308227385
jira-node1	0	1594303789202
\.


--
-- Data for Name: clusterupgradestate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusterupgradestate (id, database_time, cluster_build_number, cluster_version, state, order_number) FROM stdin;
\.


--
-- Data for Name: columnlayout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.columnlayout (id, username, searchrequest) FROM stdin;
\.


--
-- Data for Name: columnlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.columnlayoutitem (id, columnlayout, fieldidentifier, horizontalposition) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.component (id, project, cname, description, url, lead, assigneetype, archived) FROM stdin;
\.


--
-- Data for Name: configurationcontext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configurationcontext (id, projectcategory, project, customfield, fieldconfigscheme) FROM stdin;
10000	\N	\N	issuetype	10000
10100	\N	\N	priority	10100
10200	\N	10000	issuetype	10200
\.


--
-- Data for Name: customfield; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customfield (id, cfkey, customfieldtypekey, customfieldsearcherkey, cfname, description, defaultvalue, fieldtype, project, issuetype) FROM stdin;
\.


--
-- Data for Name: customfieldoption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customfieldoption (id, customfield, customfieldconfig, parentoptionid, sequence, customvalue, optiontype, disabled) FROM stdin;
\.


--
-- Data for Name: customfieldvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customfieldvalue (id, issue, customfield, updated, parentkey, stringvalue, numbervalue, textvalue, datevalue, valuetype) FROM stdin;
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
1	crowd-embedded	crowd-embedded	2013-02-28 11:57:51.302+00	2013-02-28 11:57:51.302+00	1		CROWD	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application_address (application_id, remote_address, encoded_address_binary, remote_address_mask) FROM stdin;
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type, directory_position) FROM stdin;
1	Jira Internal Directory	jira internal directory	2013-02-28 11:57:51.308+00	2013-02-28 11:57:51.308+00	1	Jira default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	0
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
1	user_encryption_method	atlassian-security
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory_operation (directory_id, operation_type) FROM stdin;
1	CREATE_GROUP
1	CREATE_ROLE
1	CREATE_USER
1	DELETE_GROUP
1	DELETE_ROLE
1	DELETE_USER
1	UPDATE_GROUP
1	UPDATE_GROUP_ATTRIBUTE
1	UPDATE_ROLE
1	UPDATE_ROLE_ATTRIBUTE
1	UPDATE_USER
1	UPDATE_USER_ATTRIBUTE
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, lower_description, group_type, directory_id) FROM stdin;
10000	jira-administrators	jira-administrators	1	0	2013-02-28 11:57:51.326+00	2013-02-28 11:57:51.326+00		\N	GROUP	1
10010	jira-software-users	jira-software-users	1	0	2020-07-09 09:08:30.473+00	2020-07-09 09:08:30.473+00	\N	\N	GROUP	1
\.


--
-- Data for Name: cwd_group_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group_attributes (id, group_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
10000	10000	10000	GROUP_USER	\N	jira-administrators	jira-administrators	pengwinn	pengwinn	1
10001	10010	10000	GROUP_USER	\N	jira-software-users	jira-software-users	pengwinn	pengwinn	1
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user (id, directory_id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, credential, deleted_externally, external_id) FROM stdin;
10000	1	pengwinn	pengwinn	1	2020-07-09 09:15:07.163+00	2020-07-09 09:15:07.163+00			pengwinn	pengwinn	pengwinn	pengwinn	pengwinn@localhost	pengwinn@localhost	{PKCS5S2}+2dVUayH/q/fwlf9+l7yxd3Hp+HCH7sTaMh7QbhTI4Gf3MjvmKMRSxXS3DpGFH6H	\N	be2f4d49-cb7b-4ff4-a7a0-e645368403ec
\.


--
-- Data for Name: cwd_user_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user_attributes (id, user_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
10000	10000	1	requiresPasswordChange	false	false
10001	10000	1	invalidPasswordAttempts	0	0
10002	10000	1	passwordLastChanged	1594286109698	1594286109698
10003	10000	1	password.reset.request.expiry	1594372509876	1594372509876
10004	10000	1	password.reset.request.token	1c17e0496d723a1f80f0344f5571ac23c88fda55	1c17e0496d723a1f80f0344f5571ac23c88fda55
10100	10000	1	login.currentFailedCount	0	0
10200	10000	1	lastAuthenticated	1594308081408	1594308081408
10101	10000	1	login.lastLoginMillis	1594308081977	1594308081977
10201	10000	1	login.previousLoginMillis	1594299857488	1594299857488
10102	10000	1	login.count	182	182
\.


--
-- Data for Name: deadletter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deadletter (id, message_id, last_seen, mail_server_id, folder_name) FROM stdin;
\.


--
-- Data for Name: draftworkflowscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.draftworkflowscheme (id, name, description, workflow_scheme_id, last_modified_date, last_modified_user) FROM stdin;
\.


--
-- Data for Name: draftworkflowschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.draftworkflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
\.


--
-- Data for Name: entity_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_property (id, entity_name, entity_id, property_key, created, updated, json_value) FROM stdin;
10000	ProjectProperty	10000	searchRequests	2020-07-09 09:20:46.662+00	2020-07-09 09:20:46.662+00	{"ids":[10000,10001,10002]}
10001	UserProperty	10000	lastViewedVignette	2020-07-09 09:50:23.637+00	2020-07-09 09:50:23.637+00	{"id":"priority"}
\.


--
-- Data for Name: entity_property_index_document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_property_index_document (id, plugin_key, module_key, entity_key, updated, document) FROM stdin;
\.


--
-- Data for Name: entity_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_translation (id, entity_name, entity_id, locale, trans_name, trans_desc) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.external_entities (id, name, entitytype) FROM stdin;
\.


--
-- Data for Name: externalgadget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.externalgadget (id, gadget_xml) FROM stdin;
\.


--
-- Data for Name: favouriteassociations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favouriteassociations (id, username, entitytype, entityid, sequence) FROM stdin;
\.


--
-- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feature (id, feature_name, feature_type, user_key) FROM stdin;
10001	com.atlassian.jira.projects.issuenavigator	site	
10000	com.atlassian.jira.projects.ProjectCentricNavigation.Switch	site	
10100	mail.batching.enabled	site	\N
10101	com.atlassian.jira.agile.darkfeature.kanplan.enabled	site	
10102	com.atlassian.jira.agile.darkfeature.kanplan.epics.and.versions.enabled	site	
10103	com.atlassian.jira.agile.darkfeature.sprint.goal.enabled	site	
10104	com.atlassian.jira.agile.darkfeature.edit.closed.sprint.enabled	site	
10105	com.atlassian.jira.agile.darkfeature.splitissue	site	
\.


--
-- Data for Name: fieldconfigscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldconfigscheme (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Issue Type Scheme	Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.	issuetype	\N
10100	Default priority scheme	This is default priority scheme used by all projects without any other scheme assigned	priority	\N
10200	TEST: Project Management Issue Type Scheme	\N	issuetype	\N
\.


--
-- Data for Name: fieldconfigschemeissuetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldconfigschemeissuetype (id, issuetype, fieldconfigscheme, fieldconfiguration) FROM stdin;
10100	\N	10000	10000
10200	\N	10100	10100
10301	\N	10200	10200
\.


--
-- Data for Name: fieldconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldconfiguration (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Configuration for Issue Type	Default configuration generated by Jira	issuetype	\N
10100	Default configuration for priority	Default configuration generated by Jira	priority	\N
10200	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
\.


--
-- Data for Name: fieldlayout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayout (id, name, description, layout_type, layoutscheme) FROM stdin;
10000	Default Field Configuration	The default field configuration	default	\N
\.


--
-- Data for Name: fieldlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutitem (id, fieldlayout, fieldidentifier, description, verticalposition, ishidden, isrequired, renderertype) FROM stdin;
10100	10000	issuelinks	\N	\N	false	false	jira-text-renderer
10101	10000	worklog	Allows work to be logged whilst creating, editing or transitioning issues.	\N	false	false	atlassian-wiki-renderer
10102	10000	labels	\N	\N	false	false	jira-text-renderer
10103	10000	comment	\N	\N	false	false	atlassian-wiki-renderer
10104	10000	attachment	\N	\N	false	false	jira-text-renderer
10105	10000	resolution	\N	\N	false	false	jira-text-renderer
10106	10000	timetracking	An estimate of how much work remains until this issue will be resolved.<br>The format of this is ' *w *d *h *m ' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>	\N	false	false	jira-text-renderer
10107	10000	description	\N	\N	false	false	atlassian-wiki-renderer
10108	10000	environment	For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).	\N	false	false	atlassian-wiki-renderer
10109	10000	reporter	\N	\N	false	true	jira-text-renderer
10110	10000	assignee	\N	\N	false	false	jira-text-renderer
10111	10000	fixVersions	\N	\N	false	false	frother-control-renderer
10112	10000	versions	\N	\N	false	false	frother-control-renderer
10113	10000	components	\N	\N	false	false	frother-control-renderer
10114	10000	duedate	\N	\N	false	false	jira-text-renderer
10115	10000	priority	\N	\N	false	false	jira-text-renderer
10116	10000	security	\N	\N	false	false	jira-text-renderer
10117	10000	issuetype	\N	\N	false	true	jira-text-renderer
10118	10000	summary	\N	\N	false	true	jira-text-renderer
10119	10000	archiveddate	\N	\N	false	false	jira-text-renderer
10120	10000	archivedby	\N	\N	false	false	jira-text-renderer
\.


--
-- Data for Name: fieldlayoutscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutscheme (id, name, description) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutschemeassociation (id, issuetype, project, fieldlayoutscheme) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutschemeentity (id, scheme, issuetype, fieldlayout) FROM stdin;
\.


--
-- Data for Name: fieldscreen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreen (id, name, description) FROM stdin;
1	Default Screen	Allows to update all system fields.
2	Workflow Screen	This screen is used in the workflow and enables you to assign issues
3	Resolve Issue Screen	Allows to set resolution, change fix versions and assign an issue.
10000	TEST: Project Management Create Issue Screen	
10001	TEST: Project Management Edit/View Issue Screen	
10002	TEST: Project Management Resolve Issue Screen	
\.


--
-- Data for Name: fieldscreenlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreenlayoutitem (id, fieldidentifier, sequence, fieldscreentab) FROM stdin;
10000	summary	0	10000
10001	issuetype	1	10000
10002	security	2	10000
10003	priority	3	10000
10004	duedate	4	10000
10005	components	5	10000
10006	versions	6	10000
10007	fixVersions	7	10000
10008	assignee	8	10000
10009	reporter	9	10000
10010	environment	10	10000
10011	description	11	10000
10012	timetracking	12	10000
10013	attachment	13	10000
10014	assignee	0	10001
10015	resolution	0	10002
10016	fixVersions	1	10002
10017	assignee	2	10002
10018	worklog	3	10002
10100	labels	14	10000
10200	summary	0	10100
10201	issuetype	1	10100
10202	reporter	2	10100
10203	security	3	10100
10204	attachment	4	10100
10205	duedate	5	10100
10206	description	6	10100
10207	assignee	7	10100
10208	priority	8	10100
10209	labels	9	10100
10210	timetracking	10	10100
10211	summary	0	10101
10212	issuetype	1	10101
10213	reporter	2	10101
10214	components	3	10101
10215	attachment	4	10101
10216	duedate	5	10101
10217	description	6	10101
10218	assignee	7	10101
10219	priority	8	10101
10220	labels	9	10101
10221	timetracking	10	10101
10222	summary	0	10102
10223	issuetype	1	10102
10224	reporter	2	10102
10225	issuelinks	3	10102
10226	resolution	4	10102
\.


--
-- Data for Name: fieldscreenscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreenscheme (id, name, description) FROM stdin;
1	Default Screen Scheme	Default Screen Scheme
10000	TEST: Project Management Screen Scheme	
\.


--
-- Data for Name: fieldscreenschemeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreenschemeitem (id, operation, fieldscreen, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10001	10000
10101	0	10000	10000
\.


--
-- Data for Name: fieldscreentab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreentab (id, name, description, sequence, fieldscreen) FROM stdin;
10000	Field Tab	\N	0	1
10001	Field Tab	\N	0	2
10002	Field Tab	\N	0	3
10100	Field Tab	\N	0	10000
10101	Field Tab	\N	0	10001
10102	Field Tab	\N	0	10002
\.


--
-- Data for Name: fileattachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fileattachment (id, issueid, mimetype, filename, created, filesize, author, zip, thumbnailable) FROM stdin;
10000	10205	image/png	pg_test.png	2020-07-09 11:44:51.036+00	233066	JIRAUSER10000	\N	0
\.


--
-- Data for Name: filtersubscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filtersubscription (id, filter_i_d, username, groupname, last_run, email_on_empty) FROM stdin;
\.


--
-- Data for Name: gadgetuserpreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gadgetuserpreference (id, portletconfiguration, userprefkey, userprefvalue) FROM stdin;
10000	10002	isConfigured	true
10001	10003	keys	__all_projects__
10002	10003	isConfigured	true
10003	10003	title	Your Company Jira
10004	10003	numofentries	5
\.


--
-- Data for Name: genericconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genericconfiguration (id, datatype, datakey, xmlvalue) FROM stdin;
10000	DefaultValue	10000	<string>1</string>
10100	DefaultValue	10200	<string>10000</string>
\.


--
-- Data for Name: globalpermissionentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globalpermissionentry (id, permission, group_id) FROM stdin;
10000	ADMINISTER	jira-administrators
10006	SYSTEM_ADMIN	jira-administrators
10100	USER_PICKER	jira-software-users
10101	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-software-users
10102	BULK_CHANGE	jira-software-users
10103	CREATE_SHARED_OBJECTS	jira-software-users
10104	USER_PICKER	jira-administrators
10105	BULK_CHANGE	jira-administrators
10106	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-administrators
10107	CREATE_SHARED_OBJECTS	jira-administrators
\.


--
-- Data for Name: groupbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groupbase (id, groupname) FROM stdin;
\.


--
-- Data for Name: issue_field_option; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue_field_option (id, option_id, field_key, option_value, properties) FROM stdin;
\.


--
-- Data for Name: issue_field_option_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue_field_option_scope (id, option_id, entity_id, scope_type) FROM stdin;
\.


--
-- Data for Name: issuelink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuelink (id, linktype, source, destination, sequence) FROM stdin;
\.


--
-- Data for Name: issuelinktype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuelinktype (id, linkname, inward, outward, pstyle) FROM stdin;
10100	jira_subtask_link	jira_subtask_inward	jira_subtask_outward	jira_subtask
10000	Blocks	is blocked by	blocks	\N
10001	Cloners	is cloned by	clones	\N
10002	Duplicate	is duplicated by	duplicates	\N
10003	Relates	relates to	relates to	\N
\.


--
-- Data for Name: issuesecurityscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuesecurityscheme (id, name, description, defaultlevel) FROM stdin;
\.


--
-- Data for Name: issuestatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuestatus (id, sequence, pname, description, iconurl, statuscategory) FROM stdin;
1	1	Open	The issue is open and ready for the assignee to start work on it.	/images/icons/statuses/open.png	2
3	3	In Progress	This issue is being actively worked on at the moment by the assignee.	/images/icons/statuses/inprogress.png	4
4	4	Reopened	This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.	/images/icons/statuses/reopened.png	2
5	5	Resolved	A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.	/images/icons/statuses/resolved.png	3
6	6	Closed	The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.	/images/icons/statuses/closed.png	3
10000	7	To Do	\N	/images/icons/status_generic.gif	2
10001	8	Done	\N	/images/icons/status_generic.gif	3
\.


--
-- Data for Name: issuetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuetype (id, sequence, pname, pstyle, description, iconurl, avatar) FROM stdin;
10000	\N	Task		A task that needs to be done.	\N	10318
10001	\N	Sub-task	jira_subtask	The sub-task of the issue	\N	10316
\.


--
-- Data for Name: issuetypescreenscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuetypescreenscheme (id, name, description) FROM stdin;
1	Default Issue Type Screen Scheme	The default issue type screen scheme
10000	TEST: Project Management Issue Type Screen Scheme	
\.


--
-- Data for Name: issuetypescreenschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuetypescreenschemeentity (id, issuetype, scheme, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10000	10000
\.


--
-- Data for Name: jiraaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraaction (id, issueid, author, actiontype, actionlevel, rolelevel, actionbody, created, updateauthor, updated, actionnum) FROM stdin;
\.


--
-- Data for Name: jiradraftworkflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiradraftworkflows (id, parentname, descriptor) FROM stdin;
\.


--
-- Data for Name: jiraeventtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraeventtype (id, template_id, name, description, event_type) FROM stdin;
1	\N	Issue Created	This is the 'issue created' event.	jira.system.event.type
2	\N	Issue Updated	This is the 'issue updated' event.	jira.system.event.type
3	\N	Issue Assigned	This is the 'issue assigned' event.	jira.system.event.type
4	\N	Issue Resolved	This is the 'issue resolved' event.	jira.system.event.type
5	\N	Issue Closed	This is the 'issue closed' event.	jira.system.event.type
6	\N	Issue Commented	This is the 'issue commented' event.	jira.system.event.type
7	\N	Issue Reopened	This is the 'issue reopened' event.	jira.system.event.type
8	\N	Issue Deleted	This is the 'issue deleted' event.	jira.system.event.type
9	\N	Issue Moved	This is the 'issue moved' event.	jira.system.event.type
10	\N	Work Logged On Issue	This is the 'work logged on issue' event.	jira.system.event.type
11	\N	Work Started On Issue	This is the 'work started on issue' event.	jira.system.event.type
12	\N	Work Stopped On Issue	This is the 'work stopped on issue' event.	jira.system.event.type
13	\N	Generic Event	This is the 'generic event' event.	jira.system.event.type
14	\N	Issue Comment Edited	This is the 'issue comment edited' event.	jira.system.event.type
15	\N	Issue Worklog Updated	This is the 'issue worklog updated' event.	jira.system.event.type
16	\N	Issue Worklog Deleted	This is the 'issue worklog deleted' event.	jira.system.event.type
17	\N	Issue Comment Deleted	This is the 'issue comment deleted' event.	jira.system.event.type
18	\N	Issue Archived	This is the 'issue archived' event	jira.system.event.type
19	\N	Issue Restored	This is the 'issue restored' event	jira.system.event.type
\.


--
-- Data for Name: jiraissue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraissue (id, pkey, issuenum, project, reporter, assignee, creator, issuetype, summary, description, environment, priority, resolution, issuestatus, created, updated, duedate, resolutiondate, votes, watches, timeoriginalestimate, timeestimate, timespent, workflow_id, security, fixfor, component, archived, archivedby, archiveddate) FROM stdin;
10000	\N	1	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test1	\N	\N	3	\N	10000	2020-07-09 09:21:38.238+00	2020-07-09 09:21:38.238+00	\N	\N	0	1	\N	\N	\N	10000	\N	\N	\N	N	\N	\N
10001	\N	2	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test2	\N	\N	3	\N	10000	2020-07-09 09:23:44.735+00	2020-07-09 09:23:44.735+00	\N	\N	0	1	\N	\N	\N	10001	\N	\N	\N	N	\N	\N
10002	\N	3	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test3	\N	\N	3	\N	10000	2020-07-09 09:23:59.215+00	2020-07-09 09:23:59.215+00	\N	\N	0	1	\N	\N	\N	10002	\N	\N	\N	N	\N	\N
10003	\N	4	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test4	\N	\N	3	\N	10000	2020-07-09 09:25:43.194+00	2020-07-09 09:25:43.194+00	\N	\N	0	1	\N	\N	\N	10003	\N	\N	\N	N	\N	\N
10004	\N	5	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test5	\N	\N	3	\N	10000	2020-07-09 09:45:01.985+00	2020-07-09 09:45:01.985+00	\N	\N	0	1	\N	\N	\N	10004	\N	\N	\N	N	\N	\N
10005	\N	6	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test6	\N	\N	3	\N	10000	2020-07-09 09:47:21.062+00	2020-07-09 09:47:21.062+00	\N	\N	0	1	\N	\N	\N	10005	\N	\N	\N	N	\N	\N
10006	\N	7	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test7	\N	\N	3	\N	10000	2020-07-09 09:50:02.329+00	2020-07-09 09:50:02.329+00	\N	\N	0	1	\N	\N	\N	10006	\N	\N	\N	N	\N	\N
10100	\N	8	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test8	\N	\N	3	\N	10000	2020-07-09 10:19:38.741+00	2020-07-09 10:19:38.741+00	\N	\N	0	1	\N	\N	\N	10100	\N	\N	\N	N	\N	\N
10101	\N	9	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test9	\N	\N	3	\N	10000	2020-07-09 11:13:33.029+00	2020-07-09 11:13:33.029+00	\N	\N	0	1	\N	\N	\N	10101	\N	\N	\N	N	\N	\N
10102	\N	10	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	10	\N	\N	3	\N	10000	2020-07-09 11:17:59.284+00	2020-07-09 11:17:59.284+00	\N	\N	0	1	\N	\N	\N	10102	\N	\N	\N	N	\N	\N
10103	\N	11	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test11	\N	\N	3	\N	10000	2020-07-09 11:19:57.73+00	2020-07-09 11:19:57.73+00	\N	\N	0	1	\N	\N	\N	10103	\N	\N	\N	N	\N	\N
10104	\N	12	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test12	\N	\N	3	\N	10000	2020-07-09 11:20:33.542+00	2020-07-09 11:20:33.542+00	\N	\N	0	1	\N	\N	\N	10104	\N	\N	\N	N	\N	\N
10105	\N	13	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test13	\N	\N	3	\N	10000	2020-07-09 11:20:45.905+00	2020-07-09 11:20:45.905+00	\N	\N	0	1	\N	\N	\N	10105	\N	\N	\N	N	\N	\N
10106	\N	14	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test14	\N	\N	3	\N	10000	2020-07-09 11:24:37.569+00	2020-07-09 11:24:37.569+00	\N	\N	0	1	\N	\N	\N	10106	\N	\N	\N	N	\N	\N
10107	\N	15	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test15	\N	\N	3	\N	10000	2020-07-09 11:24:47.925+00	2020-07-09 11:24:47.925+00	\N	\N	0	1	\N	\N	\N	10107	\N	\N	\N	N	\N	\N
10108	\N	16	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test16	\N	\N	3	\N	10000	2020-07-09 11:24:53.94+00	2020-07-09 11:24:53.94+00	\N	\N	0	1	\N	\N	\N	10108	\N	\N	\N	N	\N	\N
10109	\N	17	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test17	\N	\N	3	\N	10000	2020-07-09 11:25:04.875+00	2020-07-09 11:25:04.875+00	\N	\N	0	1	\N	\N	\N	10109	\N	\N	\N	N	\N	\N
10200	\N	18	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test18	\N	\N	3	\N	10000	2020-07-09 11:26:14.309+00	2020-07-09 11:26:14.309+00	\N	\N	0	1	\N	\N	\N	10200	\N	\N	\N	N	\N	\N
10201	\N	19	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test19	\N	\N	3	\N	10000	2020-07-09 11:29:15.411+00	2020-07-09 11:29:15.411+00	\N	\N	0	1	\N	\N	\N	10201	\N	\N	\N	N	\N	\N
10202	\N	20	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test20	\N	\N	3	\N	10000	2020-07-09 11:33:03.095+00	2020-07-09 11:33:03.095+00	\N	\N	0	1	\N	\N	\N	10202	\N	\N	\N	N	\N	\N
10203	\N	21	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test21	\N	\N	3	\N	10000	2020-07-09 11:38:32.958+00	2020-07-09 11:38:32.958+00	\N	\N	0	1	\N	\N	\N	10203	\N	\N	\N	N	\N	\N
10205	\N	23	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test22	\N	\N	3	\N	10000	2020-07-09 11:44:52.62+00	2020-07-09 11:44:52.62+00	\N	\N	0	1	\N	\N	\N	10205	\N	\N	\N	N	\N	\N
10300	\N	24	10000	JIRAUSER10000	\N	JIRAUSER10000	10000	test24	\N	\N	3	\N	10000	2020-07-09 15:22:06.492+00	2020-07-09 15:22:06.492+00	\N	\N	0	1	\N	\N	\N	10300	\N	\N	\N	N	\N	\N
\.


--
-- Data for Name: jiraperms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraperms (id, permtype, projectid, groupname) FROM stdin;
\.


--
-- Data for Name: jiraworkflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraworkflows (id, workflowname, creatorname, descriptor, islocked) FROM stdin;
10000	classic default workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">The classic Jira default workflow</meta>\n  <initial-actions>\n    <action id="1" name="Create Issue">\n      <meta name="opsbar-sequence">0</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name="permission">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="Finished" status="Open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id="2" name="Close Issue" view="resolveissue">\n      <meta name="opsbar-sequence">60</meta>\n      <meta name="jira.i18n.submit">closeissue.close</meta>\n      <meta name="jira.i18n.description">closeissue.desc</meta>\n      <meta name="jira.i18n.title">closeissue.title</meta>\n      <restrict-to>\n        <conditions type="AND">\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Closed" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="3" name="Reopen Issue" view="commentassign">\n      <meta name="opsbar-sequence">80</meta>\n      <meta name="jira.i18n.submit">issue.operations.reopen.issue</meta>\n      <meta name="jira.i18n.description">issue.operations.reopen.description</meta>\n      <meta name="jira.i18n.title">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Reopened" step="5">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="4" name="Start Progress">\n      <meta name="opsbar-sequence">20</meta>\n      <meta name="jira.i18n.title">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Underway" step="3">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="5" name="Resolve Issue" view="resolveissue">\n      <meta name="opsbar-sequence">40</meta>\n      <meta name="jira.i18n.submit">resolveissue.resolve</meta>\n      <meta name="jira.i18n.description">resolveissue.desc.line1</meta>\n      <meta name="jira.i18n.title">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Resolved" step="4">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id="1" name="Open">\n      <meta name="jira.status.id">1</meta>\n      <actions>\n<common-action id="4" />\n<common-action id="5" />\n<common-action id="2" />\n      </actions>\n    </step>\n    <step id="3" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n        <action id="301" name="Stop Progress">\n          <meta name="opsbar-sequence">20</meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Assigned" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="field.name">resolution</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="4" name="Resolved">\n      <meta name="jira.status.id">5</meta>\n      <actions>\n<common-action id="3" />\n        <action id="701" name="Close Issue" view="commentassign">\n          <meta name="opsbar-sequence">60</meta>\n          <meta name="jira.i18n.submit">closeissue.close</meta>\n          <meta name="jira.i18n.description">closeissue.desc</meta>\n          <meta name="jira.i18n.title">closeissue.title</meta>\n          <meta name="jira.description">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name="permission">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Closed" step="6">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="5" name="Reopened">\n      <meta name="jira.status.id">4</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n<common-action id="4" />\n      </actions>\n    </step>\n    <step id="6" name="Closed">\n      <meta name="jira.status.id">6</meta>\n      <meta name="jira.issue.editable">false</meta>\n      <actions>\n<common-action id="3" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
10100	TEST: Project Management Workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description"></meta>\n  <meta name="jira.update.author.key">JIRAUSER10000</meta>\n  <meta name="jira.updated.date">1594286444769</meta>\n  <initial-actions>\n    <action id="1" name="Create">\n      <meta name="jira.i18n.submit">common.forms.create</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="permission">Create Issue</arg>\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="null" status="open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">1</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <steps>\n    <step id="1" name="To Do">\n      <meta name="jira.status.id">10000</meta>\n      <actions>\n        <action id="11" name="Start Progress">\n          <meta name="jira.i18n.submit">startprogress.title</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">startprogress.title</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="2">\n              <post-functions>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="21" name="Done">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="3">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value">10000</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="2" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n        <action id="31" name="Stop Progress">\n          <meta name="jira.i18n.submit">stopprogress.title</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="41" name="Done">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="3">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value">10000</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="3" name="Done">\n      <meta name="jira.status.id">10001</meta>\n      <actions>\n        <action id="51" name="Reopen">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopen.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopen.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="61" name="Reopen and start progress">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="2">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
\.


--
-- Data for Name: jiraworkflowstatuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraworkflowstatuses (id, status, parentname) FROM stdin;
\.


--
-- Data for Name: jquartz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: jquartz_calendars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: jquartz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
\.


--
-- Data for Name: jquartz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, is_volatile, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_stateful, is_nonconcurrent, is_update_data, requests_recovery) FROM stdin;
\.


--
-- Data for Name: jquartz_job_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_volatile, is_stateful, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: jquartz_job_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_job_listeners (job_name, job_group, job_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_locks (sched_name, lock_name) FROM stdin;
\N	TRIGGER_ACCESS
\N	JOB_ACCESS
\N	CALENDAR_ACCESS
\N	STATE_ACCESS
\N	MISFIRE_ACCESS
\.


--
-- Data for Name: jquartz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: jquartz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: jquartz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: jquartz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: jquartz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_trigger_listeners (trigger_name, trigger_group, trigger_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, is_volatile, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.label (id, fieldid, issue, label) FROM stdin;
\.


--
-- Data for Name: licenserolesdefault; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licenserolesdefault (id, license_role_name) FROM stdin;
10000	jira-software
\.


--
-- Data for Name: licenserolesgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licenserolesgroup (id, license_role_name, group_id, primary_group) FROM stdin;
10000	jira-software	jira-software-users	Y
10001	jira-software	jira-administrators	N
\.


--
-- Data for Name: listenerconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listenerconfig (id, clazz, listenername) FROM stdin;
10000	com.atlassian.jira.event.listeners.mail.MailListener	Mail Listener
10001	com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener	Issue Assignment Listener
10400	com.atlassian.jira.event.listeners.search.IssueIndexListener	Issue Index Listener
\.


--
-- Data for Name: mailserver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mailserver (id, name, description, mailfrom, prefix, smtp_port, protocol, server_type, servername, jndilocation, mailusername, mailpassword, istlsrequired, timeout, socks_port, socks_host) FROM stdin;
\.


--
-- Data for Name: managedconfigurationitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.managedconfigurationitem (id, item_id, item_type, managed, access_level, source, description_key) FROM stdin;
\.


--
-- Data for Name: membershipbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.membershipbase (id, user_name, group_name) FROM stdin;
\.


--
-- Data for Name: moved_issue_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moved_issue_key (id, old_issue_key, issue_id) FROM stdin;
\.


--
-- Data for Name: nodeassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nodeassociation (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type, sequence) FROM stdin;
10000	Project	0	PermissionScheme	ProjectScheme	\N
10000	Project	10000	NotificationScheme	ProjectScheme	\N
10000	Project	10100	WorkflowScheme	ProjectScheme	\N
10000	Project	10000	IssueTypeScreenScheme	ProjectScheme	\N
\.


--
-- Data for Name: nodeindexcounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nodeindexcounter (id, node_id, sending_node_id, index_operation_id) FROM stdin;
10300	jira-node1	jira-node2	10229
10100	jira-node2	jira-node1	10318
10000	jira-node1	jira-node1	10318
10200	jira-node2	jira-node2	10402
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification (id, scheme, event, event_type_id, template_id, notif_type, notif_parameter) FROM stdin;
10000	10000	\N	1	\N	Current_Assignee	\N
10001	10000	\N	1	\N	Current_Reporter	\N
10002	10000	\N	1	\N	All_Watchers	\N
10003	10000	\N	2	\N	Current_Assignee	\N
10004	10000	\N	2	\N	Current_Reporter	\N
10005	10000	\N	2	\N	All_Watchers	\N
10006	10000	\N	3	\N	Current_Assignee	\N
10007	10000	\N	3	\N	Current_Reporter	\N
10008	10000	\N	3	\N	All_Watchers	\N
10009	10000	\N	4	\N	Current_Assignee	\N
10010	10000	\N	4	\N	Current_Reporter	\N
10011	10000	\N	4	\N	All_Watchers	\N
10012	10000	\N	5	\N	Current_Assignee	\N
10013	10000	\N	5	\N	Current_Reporter	\N
10014	10000	\N	5	\N	All_Watchers	\N
10015	10000	\N	6	\N	Current_Assignee	\N
10016	10000	\N	6	\N	Current_Reporter	\N
10017	10000	\N	6	\N	All_Watchers	\N
10018	10000	\N	7	\N	Current_Assignee	\N
10019	10000	\N	7	\N	Current_Reporter	\N
10020	10000	\N	7	\N	All_Watchers	\N
10021	10000	\N	8	\N	Current_Assignee	\N
10022	10000	\N	8	\N	Current_Reporter	\N
10023	10000	\N	8	\N	All_Watchers	\N
10024	10000	\N	9	\N	Current_Assignee	\N
10025	10000	\N	9	\N	Current_Reporter	\N
10026	10000	\N	9	\N	All_Watchers	\N
10027	10000	\N	10	\N	Current_Assignee	\N
10028	10000	\N	10	\N	Current_Reporter	\N
10029	10000	\N	10	\N	All_Watchers	\N
10030	10000	\N	11	\N	Current_Assignee	\N
10031	10000	\N	11	\N	Current_Reporter	\N
10032	10000	\N	11	\N	All_Watchers	\N
10033	10000	\N	12	\N	Current_Assignee	\N
10034	10000	\N	12	\N	Current_Reporter	\N
10035	10000	\N	12	\N	All_Watchers	\N
10036	10000	\N	13	\N	Current_Assignee	\N
10037	10000	\N	13	\N	Current_Reporter	\N
10038	10000	\N	13	\N	All_Watchers	\N
10100	10000	\N	14	\N	Current_Assignee	\N
10101	10000	\N	14	\N	Current_Reporter	\N
10102	10000	\N	14	\N	All_Watchers	\N
10103	10000	\N	15	\N	Current_Assignee	\N
10104	10000	\N	15	\N	Current_Reporter	\N
10105	10000	\N	15	\N	All_Watchers	\N
10106	10000	\N	16	\N	Current_Assignee	\N
10107	10000	\N	16	\N	Current_Reporter	\N
10108	10000	\N	16	\N	All_Watchers	\N
10200	10000	\N	18	\N	Current_Assignee	\N
10201	10000	\N	18	\N	Current_Reporter	\N
10202	10000	\N	18	\N	All_Watchers	\N
10203	10000	\N	19	\N	Current_Assignee	\N
10204	10000	\N	19	\N	Current_Reporter	\N
10205	10000	\N	19	\N	All_Watchers	\N
\.


--
-- Data for Name: notificationinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notificationinstance (id, notificationtype, source, emailaddress, messageid) FROM stdin;
\.


--
-- Data for Name: notificationscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notificationscheme (id, name, description) FROM stdin;
10000	Default Notification Scheme	\N
\.


--
-- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthconsumer (id, created, consumername, consumer_key, consumerservice, public_key, private_key, description, callback, signature_method, shared_secret) FROM stdin;
10100	2020-07-09 11:12:10.473+00	Jira	jira:356d419a-5f76-473d-85d4-28339327e6d2	__HOST_SERVICE__	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn+MHhXaZaOWDMQbU05Y/iO4LbxDJs58dDj5d7EhJvWytAczDN5P6wP56/W5l8q5mGLzitn/5VAM7HCJaqsoUeN8YlaReFWUqrfkoNrSYi3X76aKfYzfrTblmNbttbDZRwyPwFTjIZXrEHkw+oRP7FfUzenUNkQCbltKYbxCTSwBI2n/EOFUVJiZNMMNvQBxlW9i4TfZciTakaeDND0uO2Zzhqni+jyEYiwo47ERisGwx8ZfwMywfP+lpM7TbnTQAsSSxA6Xp7BjD7RyG3tqonDDTQPHv+FEDUXnfjq7ZLGDnaQsZqEWCzdWM6FqOanSJPFiM4pwFw3wgjjQvsFhC1wIDAQAB	MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCf4weFdplo5YMxBtTTlj+I7gtvEMmznx0OPl3sSEm9bK0BzMM3k/rA/nr9bmXyrmYYvOK2f/lUAzscIlqqyhR43xiVpF4VZSqt+Sg2tJiLdfvpop9jN+tNuWY1u21sNlHDI/AVOMhlesQeTD6hE/sV9TN6dQ2RAJuW0phvEJNLAEjaf8Q4VRUmJk0ww29AHGVb2LhN9lyJNqRp4M0PS47ZnOGqeL6PIRiLCjjsRGKwbDHxl/AzLB8/6WkztNudNACxJLEDpensGMPtHIbe2qicMNNA8e/4UQNRed+OrtksYOdpCxmoRYLN1YzoWo5qdIk8WIzinAXDfCCONC+wWELXAgMBAAECggEAO4l6v4QOVDVCyPrWPYPxXLfnohAKS8ywMSGgL+ArNVJGiikJeKSt9zfL7Jszc07lzchoU7ULzvD1DeDtCjP9s5S/vtlZ/3WQkv/4rYZKV4QzrihUWcn04Rhsqw2EDYucnqG/QOfIF6HDbdTObYTXNrH73VnBF4G2bk81XAY8Eu0NcGIIjf/ZwMjxBFg/LnYB49H873DsULQqGkp9nkjSEnPZ7qN+ZpBpDQYpolaJ+SH0ZFMTDTaVVexEtAKQQpx2hnKRVQmn/1eUno9yLIj4wDPwrGES3amahZONOAq9k6/zmsOIj3ZJqdY9pUXQ+Npht2MwZkc58Mu6qLxjyjB0oQKBgQDRb8ABufz0Fad848/8K2wUUKaT5H6jz2S5miZfGVT/Qk4uhixMxQr2Ns4ZYid+ws0ObnieSWX4coT2TO8SY0osBeStljxBY/PtKDd+5oa+Xayxae0yTO6twtjZQWTgnVefNx0Jfo9VNnIlqpvNlS3swoVAUXIa6b4IMvxGohesFQKBgQDDbx5UGHXW9LB5zo2d5NdrgGRx2xOmFBJWv+cpAwd3mOx3crUf5zgq//HeE306XrSbPjqkh7IRWvMg3beERegOdbJ7xhXlBzRH3ylAPTGT9iCX1DsWYwohs+j1D3tXXRZhjXRX4jkqnGHwqpiLuaw2U2wUMuy8puk8b/TvqImyOwKBgBH9FDPRwr1AQuOCObICFMVl6/jV7l6piJA8gkE2zssh6c8rLRDm97sQGAGsIZJMrwonSOrniP+e7natQveEWbGQTATw23oOWLws8R9QM5CUQSn33Cyu2O1JyBBZAo4cVZNSS4cuPKdoBsPfdIRi5M/qIUHV/QP8wZq4rlxuvbPFAoGBAIjieJywcUE5K651VU3Fbnk2eaQhrTaDEoE+cpuQKpfDPcVAS8rnubisgm1ouyq6EMg3ov2AqeFsEaTwhsyX5jzShUwaZ1V+YUkB7rO26NXY6+VMWoKIph0LFV0oFd0QL0/usxGnOyE0XYkjBCvBxfRbI/VV4ekVA4I4bJe8NY3nAoGAKDq4k170mojnCsOlYe3bwH8lHgxR1lKO6+oHPbmnIuMAVi+Uz0MPMzjv1pIAxjSqs+8DLHWXFjUhDjHs+1PiDbi5xoRg85Z+yj+9JaDQza157OCvQRoGXZGaRYeVrIN1SIq3pAa+SA8swuhLPEErodjcJcFaxxh4ZGj8o/F76oc=	Atlassian Jira at http://10.0.0.10	\N	RSA_SHA1	\N
\.


--
-- Data for Name: oauthconsumertoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthconsumertoken (id, created, token_key, token, token_secret, token_type, consumer_key) FROM stdin;
\.


--
-- Data for Name: oauthspconsumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthspconsumer (id, created, consumer_key, consumername, public_key, description, callback, two_l_o_allowed, executing_two_l_o_user, two_l_o_impersonation_allowed, three_l_o_allowed) FROM stdin;
\.


--
-- Data for Name: oauthsptoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthsptoken (id, created, token, token_secret, token_type, consumer_key, username, ttl, spauth, callback, spverifier, spversion, session_handle, session_creation_time, session_last_renewal_time, session_time_to_live) FROM stdin;
\.


--
-- Data for Name: optionconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optionconfiguration (id, fieldid, optionid, fieldconfig, sequence) FROM stdin;
10200	priority	1	10100	1
10201	priority	2	10100	2
10202	priority	3	10100	3
10203	priority	4	10100	4
10204	priority	5	10100	5
10300	issuetype	10000	10200	0
10301	issuetype	10001	10200	1
\.


--
-- Data for Name: os_currentstep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_currentstep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
10000	10000	1	0		2020-07-09 09:21:38.205+00	\N	\N	open	\N
10001	10001	1	0		2020-07-09 09:23:44.686+00	\N	\N	open	\N
10002	10002	1	0		2020-07-09 09:23:59.174+00	\N	\N	open	\N
10003	10003	1	0		2020-07-09 09:25:43.157+00	\N	\N	open	\N
10004	10004	1	0		2020-07-09 09:45:01.962+00	\N	\N	open	\N
10005	10005	1	0		2020-07-09 09:47:21.032+00	\N	\N	open	\N
10006	10006	1	0		2020-07-09 09:50:02.313+00	\N	\N	open	\N
10100	10100	1	0		2020-07-09 10:19:38.687+00	\N	\N	open	\N
10101	10101	1	0		2020-07-09 11:13:32.984+00	\N	\N	open	\N
10102	10102	1	0		2020-07-09 11:17:59.203+00	\N	\N	open	\N
10103	10103	1	0		2020-07-09 11:19:57.686+00	\N	\N	open	\N
10104	10104	1	0		2020-07-09 11:20:33.503+00	\N	\N	open	\N
10105	10105	1	0		2020-07-09 11:20:45.873+00	\N	\N	open	\N
10106	10106	1	0		2020-07-09 11:24:37.557+00	\N	\N	open	\N
10107	10107	1	0		2020-07-09 11:24:47.911+00	\N	\N	open	\N
10108	10108	1	0		2020-07-09 11:24:53.93+00	\N	\N	open	\N
10109	10109	1	0		2020-07-09 11:25:04.86+00	\N	\N	open	\N
10200	10200	1	0		2020-07-09 11:26:14.263+00	\N	\N	open	\N
10201	10201	1	0		2020-07-09 11:29:15.386+00	\N	\N	open	\N
10202	10202	1	0		2020-07-09 11:33:03.074+00	\N	\N	open	\N
10203	10203	1	0		2020-07-09 11:38:32.944+00	\N	\N	open	\N
10205	10205	1	0		2020-07-09 11:44:52.602+00	\N	\N	open	\N
10300	10300	1	0		2020-07-09 15:22:06.386+00	\N	\N	open	\N
\.


--
-- Data for Name: os_currentstep_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_currentstep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_historystep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_historystep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_historystep_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_historystep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_wfentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_wfentry (id, name, initialized, state) FROM stdin;
10000	TEST: Project Management Workflow	\N	1
10001	TEST: Project Management Workflow	\N	1
10002	TEST: Project Management Workflow	\N	1
10003	TEST: Project Management Workflow	\N	1
10004	TEST: Project Management Workflow	\N	1
10005	TEST: Project Management Workflow	\N	1
10006	TEST: Project Management Workflow	\N	1
10100	TEST: Project Management Workflow	\N	1
10101	TEST: Project Management Workflow	\N	1
10102	TEST: Project Management Workflow	\N	1
10103	TEST: Project Management Workflow	\N	1
10104	TEST: Project Management Workflow	\N	1
10105	TEST: Project Management Workflow	\N	1
10106	TEST: Project Management Workflow	\N	1
10107	TEST: Project Management Workflow	\N	1
10108	TEST: Project Management Workflow	\N	1
10109	TEST: Project Management Workflow	\N	1
10200	TEST: Project Management Workflow	\N	1
10201	TEST: Project Management Workflow	\N	1
10202	TEST: Project Management Workflow	\N	1
10203	TEST: Project Management Workflow	\N	1
10205	TEST: Project Management Workflow	\N	1
10300	TEST: Project Management Workflow	\N	1
\.


--
-- Data for Name: permissionscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissionscheme (id, name, description) FROM stdin;
0	Default Permission Scheme	This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
\.


--
-- Data for Name: permissionschemeattribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissionschemeattribute (id, scheme, attribute_key, attribute_value) FROM stdin;
\.


--
-- Data for Name: pluginstate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pluginstate (pluginkey, pluginenabled) FROM stdin;
\.


--
-- Data for Name: pluginversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pluginversion (id, pluginname, pluginkey, pluginversion, created) FROM stdin;
10000	Jira Projects Plugin	com.atlassian.jira.jira-projects-plugin	5.1.12	2020-07-09 08:48:06.371+00
10001	Atlassian OAuth Consumer Plugin	com.atlassian.oauth.consumer	4.0.2	2020-07-09 08:48:06.408+00
10002	Atlassian Jira - Plugins - My Jira Home	com.atlassian.jira.jira-my-home-plugin	8.4.0	2020-07-09 08:48:06.413+00
10003	Project Creation Plugin SPI for JIRA	com.atlassian.plugins.jira-project-creation	4.0.0-74bdd7a6fa	2020-07-09 08:48:06.417+00
10004	Atlassian Embedded Crowd - Administration Plugin	com.atlassian.crowd.embedded.admin	2.3.4-j11-2	2020-07-09 08:48:06.42+00
10005	Analytics Client Plugin	com.atlassian.analytics.analytics-client	5.7.2	2020-07-09 08:48:06.424+00
10006	Jira Index Analyzer	com.atlassian.jira.plugins.jira-index-analyzer-plugin	8.4.0	2020-07-09 08:48:06.428+00
10007	Jira Help Tips plugin	com.atlassian.plugins.helptips.jira-help-tips	8.4.0	2020-07-09 08:48:06.432+00
10008	Atlassian Navigation Links Plugin	com.atlassian.plugins.atlassian-nav-links-plugin	5.0.0	2020-07-09 08:48:06.435+00
10009	JIRA Core Romanian (Romania) Language Pack	tac.jira core.languages.ro_RO	8.6.0.v20190821055628	2020-07-09 08:48:06.439+00
10010	Atlassian Jira - Plugins - Issue Web Link	com.atlassian.jira.jira-issue-link-web-plugin	8.4.0	2020-07-09 08:48:06.443+00
10011	JIRA Core Slovak (Slovakia) Language Pack	tac.jira core.languages.sk_SK	8.6.0.v20190821055628	2020-07-09 08:48:06.446+00
10012	Atlassian Hipchat Integration Plugin Core	com.atlassian.plugins.base-hipchat-integration-plugin-api	8.4.1	2020-07-09 08:48:06.449+00
10013	Whisper Messages Plugin	whisper.messages	1.0	2020-07-09 08:48:06.453+00
10014	Project Role Actors Plugin	com.atlassian.jira.plugin.system.projectroleactors	1.0	2020-07-09 08:48:06.459+00
10015	Atlassian Jira - Plugins - OAuth Service Provider SPI	com.atlassian.jira.oauth.serviceprovider	8.4.0	2020-07-09 08:48:06.462+00
10016	Keyboard Shortcuts Plugin	jira.keyboard.shortcuts	1.0	2020-07-09 08:48:06.466+00
10017	Bitbucket Importer Plugin for JIM	com.atlassian.jira.plugins.jira-importers-bitbucket-plugin	3.1.1	2020-07-09 08:48:06.47+00
10018	Atlassian Remote Event Common Plugin	com.atlassian.plugins.atlassian-remote-event-common-plugin	6.1.0	2020-07-09 08:48:06.473+00
10019	Jira GitHub Issue Importer	com.atlassian.jira.plugins.jira-importers-github-plugin	3.1.0	2020-07-09 08:48:06.476+00
10020	JIRA Password Policy Plugin	com.atlassian.jira.plugins.jira-password-policy-plugin	2.1.0	2020-07-09 08:48:06.488+00
10021	ROME: RSS/Atom syndication and publishing tools	com.springsource.com.sun.syndication-0.9.0	0.9.0	2020-07-09 08:48:06.496+00
10022	JIRA iCalendar Plugin	com.atlassian.jira.extra.jira-ical-feed	1.5.0	2020-07-09 08:48:06.5+00
10023	Jira Drag and Drop Attachment Plugin	com.atlassian.jira.plugins.jira-dnd-attachment-plugin	5.0.2	2020-07-09 08:48:06.507+00
10024	Atlassian Jira - Plugins - Post setup announcements plugin	com.atlassian.jira.jira-postsetup-announcements-plugin	8.4.0	2020-07-09 08:48:06.512+00
10025	Streams Inline Actions Plugin	com.atlassian.streams.actions	8.1.3	2020-07-09 08:48:06.516+00
10026	JIRA Core Swedish (Sweden) Language Pack	tac.jira core.languages.sv_SE	8.6.0.v20190821055628	2020-07-09 08:48:06.519+00
10027	Comment Panel Plugin	com.atlassian.jira.plugin.system.comment-panel	1.0	2020-07-09 08:48:06.522+00
10028	Atlassian Remote Event Consumer Plugin	com.atlassian.plugins.atlassian-remote-event-consumer-plugin	6.1.0	2020-07-09 08:48:06.525+00
10029	scala-2.11-provider-plugin	com.atlassian.scala.plugins.scala-2.11-provider-plugin	0.13	2020-07-09 08:48:06.529+00
10030	JIRA Workflow Transition Tabs	com.atlassian.jira.plugin.system.workfloweditor.transition.tabs	1.0	2020-07-09 08:48:06.533+00
10031	Jira inform - batching plugin	com.atlassian.jira.plugins.inform.batching-plugin	1.3.2	2020-07-09 08:48:06.537+00
10032	JIRA Core Czech (Czech Republic) Language Pack	tac.jira core.languages.cs_CZ	8.6.0.v20190821055628	2020-07-09 08:48:06.541+00
10033	Renderer Plugin	com.atlassian.jira.plugin.system.jirarenderers	1.0	2020-07-09 08:48:06.544+00
10034	Atlassian Gadgets OAuth Service Provider Plugin	com.atlassian.gadgets.oauth.serviceprovider	4.3.10	2020-07-09 08:48:06.547+00
10035	JIRA Core Japanese (Japan) Language Pack	tac.jira core.languages.ja_JP	8.6.0.v20190821055628	2020-07-09 08:48:06.551+00
10036	JIRA Core Italian (Italy) Language Pack	tac.jira core.languages.it_IT	8.6.0.v20190821055628	2020-07-09 08:48:06.554+00
10037	JIRA Core Polish (Poland) Language Pack	tac.jira core.languages.pl_PL	8.6.0.v20190821055628	2020-07-09 08:48:06.557+00
10038	Atlassian Jira - Plugins - Admin Navigation Component	com.atlassian.jira.jira-admin-navigation-plugin	8.4.0	2020-07-09 08:48:06.56+00
10039	JIRA Core German (Germany) Language Pack	tac.jira core.languages.de_DE	8.6.0.v20190821055628	2020-07-09 08:48:06.563+00
10040	Atlassian Plugins - Web Resources - Implementation Plugin	com.atlassian.plugins.atlassian-plugins-webresource-plugin	4.1.2	2020-07-09 08:48:06.567+00
10041	Preset Filters Sections	jira.webfragments.preset.filters	1.0	2020-07-09 08:48:06.57+00
10042	Atlassian Jira - Plugins - Project Config Plugin	com.atlassian.jira.jira-project-config-plugin	8.4.0	2020-07-09 08:48:06.573+00
10043	Crowd System Password Encoders	crowd.system.passwordencoders	1.0	2020-07-09 08:48:06.577+00
10044	Atlassian UI Plugin	com.atlassian.auiplugin	8.5.0	2020-07-09 08:48:06.58+00
10045	Atlassian Jira - Plugins - Share Content Component	com.atlassian.jira.jira-share-plugin	8.4.0	2020-07-09 08:48:06.584+00
10046	Atlassian Jira - Plugins - Statistics plugin	com.atlassian.jira.jira-statistics-plugin	8.4.0	2020-07-09 08:48:06.591+00
10047	Atlassian Jira - Plugins - Remote Jira Link	com.atlassian.jira.jira-issue-link-remote-jira-plugin	8.4.0	2020-07-09 08:48:06.594+00
10048	Functional Extensions Guava Inter-Ops	io.atlassian.fugue.guava-4.7.2	4.7.2	2020-07-09 08:48:06.598+00
10049	Remote Link Aggregator Plugin	com.atlassian.plugins.remote-link-aggregator-plugin	3.0.0	2020-07-09 08:48:06.605+00
10050	Atlassian HealthCheck Common Module	com.atlassian.healthcheck.atlassian-healthcheck	6.0.0	2020-07-09 08:48:06.609+00
10051	Workbox - Common Plugin	com.atlassian.mywork.mywork-common-plugin	7.0.1	2020-07-09 08:48:06.613+00
10052	Jira Workflow Sharing Plugin	com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin	2.2.3	2020-07-09 08:48:06.616+00
10053	Entity property conditions	system.entity.property.conditions	1.0	2020-07-09 08:48:06.619+00
10054	org.osgi:org.osgi.service.cm	org.osgi.service.cm-1.5.0.201505202024	1.5.0.201505202024	2020-07-09 08:48:06.623+00
10055	Atlassian Jira - Plugins - APDEX	com.atlassian.jira.jira-apdex-plugin	8.4.0	2020-07-09 08:48:06.626+00
10056	JQL Functions	jira.jql.function	1.0	2020-07-09 08:48:06.629+00
10057	Atlassian Soy - Plugin	com.atlassian.soy.soy-template-plugin	5.0.0	2020-07-09 08:48:06.632+00
10058	Mobile Plugin for Jira	com.atlassian.jira.mobile.jira-mobile-rest	1.0.4	2020-07-09 08:48:06.635+00
10059	atlassian-failure-cache-plugin	com.atlassian.atlassian-failure-cache-plugin	2.0.0	2020-07-09 08:48:06.647+00
10060	Atlassian Jira - Plugins - View Issue Panels	com.atlassian.jira.jira-view-issue-plugin	8.4.0	2020-07-09 08:48:06.651+00
10061	JIRA Footer	jira.footer	1.0	2020-07-09 08:48:06.655+00
10062	Applinks - Plugin - Core	com.atlassian.applinks.applinks-plugin	6.0.4	2020-07-09 08:48:06.658+00
10063	Atlassian Whitelist API Plugin	com.atlassian.plugins.atlassian-whitelist-api-plugin-4.0.7	4.0.7	2020-07-09 08:48:06.662+00
10064	Jira inform - batchers	com.atlassian.jira.plugins.inform.batchers	1.3.2	2020-07-09 08:48:06.665+00
10065	jira-optimizer-plugin	com.atlassian.jira.plugins.jira-optimizer-plugin	2.0.13	2020-07-09 08:48:06.668+00
10066	Analytics Whitelist Plugin	com.atlassian.analytics.analytics-whitelist	3.68	2020-07-09 08:48:06.671+00
10067	Atlassian Jira - Plugins - Invite User	com.atlassian.jira.jira-invite-user-plugin	2.2.6	2020-07-09 08:48:06.674+00
10068	Applinks - Plugin - Basic Authentication	com.atlassian.applinks.applinks-basicauth-plugin	6.0.4	2020-07-09 08:48:06.678+00
10069	Atlassian Jira - Plugins - Quick Search	com.atlassian.jira.plugins.jira-quicksearch-plugin	8.4.0	2020-07-09 08:48:06.681+00
10070	User Profile Links	jira.webfragments.user.profile.links	1.0	2020-07-09 08:48:06.684+00
10071	Admin Menu Sections	jira.webfragments.admin	1.0	2020-07-09 08:48:06.687+00
10072	wiki-editor	com.atlassian.jira.plugins.jira-wiki-editor	4.1.6	2020-07-09 08:48:06.691+00
10073	Atlassian OAuth Service Provider SPI	com.atlassian.oauth.atlassian-oauth-service-provider-spi	4.0.2	2020-07-09 08:48:06.694+00
10074	Top Navigation Bar	jira.top.navigation.bar	1.0	2020-07-09 08:48:06.697+00
10075	Apache Apache HttpClient OSGi bundle	org.apache.httpcomponents.httpclient-4.5.5	4.5.5	2020-07-09 08:48:06.701+00
10076	Applinks - Plugin - Trusted Apps	com.atlassian.applinks.applinks-trustedapps-plugin	6.0.4	2020-07-09 08:48:06.704+00
10077	Wiki Renderer Macros Plugin	com.atlassian.jira.plugin.system.renderers.wiki.macros	1.0	2020-07-09 08:48:06.707+00
10078	Issue Views Plugin	jira.issueviews	1.0	2020-07-09 08:48:06.71+00
10079	JIRA Core Icelandic (Iceland) Language Pack	tac.jira core.languages.is_IS	8.6.0.v20190821055628	2020-07-09 08:48:06.714+00
10080	Streams SPI	com.atlassian.streams.streams-spi	8.1.3	2020-07-09 08:48:06.717+00
10081	Jira inform - event plugin	com.atlassian.jira.plugins.inform.event-plugin	1.3.2	2020-07-09 08:48:06.72+00
10082	Applinks - Plugin - CORS	com.atlassian.applinks.applinks-cors-plugin	6.0.4	2020-07-09 08:48:06.724+00
10083	Streams Third Party Provider Plugin	com.atlassian.streams.streams-thirdparty-plugin	8.1.3	2020-07-09 08:48:06.728+00
10084	Atlassian OAuth Service Provider Plugin	com.atlassian.oauth.serviceprovider	4.0.2	2020-07-09 08:48:06.731+00
10085	Atlassian Jira - Plugins - Common AppLinks Based Issue Link Plugin	com.atlassian.jira.jira-issue-link-applinks-common-plugin	8.4.0	2020-07-09 08:48:06.735+00
10086	Functional Extensions	io.atlassian.fugue-4.7.2	4.7.2	2020-07-09 08:48:06.738+00
10087	jira-webresources-plugin	jira.webresources	1.0	2020-07-09 08:48:06.742+00
10088	Embedded Gadgets Plugin	com.atlassian.gadgets.embedded	4.3.10	2020-07-09 08:48:06.746+00
10089	Atlassian Jira - Plugins - Core Reports	com.atlassian.jira.jira-core-reports-plugin	8.4.0	2020-07-09 08:48:06.75+00
10090	Streams Plugin	com.atlassian.streams	8.1.3	2020-07-09 08:48:06.753+00
10091	Browse Project Operations Sections	jira.webfragments.browse.project.links	1.0	2020-07-09 08:48:06.756+00
10092	Jira Issue Collector Plugin	com.atlassian.jira.collector.plugin.jira-issue-collector-plugin	3.1.0	2020-07-09 08:48:06.768+00
10093	Atlassian Whitelist Core Plugin	com.atlassian.plugins.atlassian-whitelist-core-plugin	4.0.7	2020-07-09 08:48:06.778+00
10094	JIRA Core Russian (Russia) Language Pack	tac.jira core.languages.ru_RU	8.6.0.v20190821055628	2020-07-09 08:48:06.782+00
10095	ICU4J	com.atlassian.bundles.icu4j-3.8.0.1	3.8.0.1	2020-07-09 08:48:06.785+00
10096	Streams Core Plugin	com.atlassian.streams.core	8.1.3	2020-07-09 08:48:06.788+00
10097	Atlassian Jira - Plugins - WebHooks Plugin	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	8.4.0	2020-07-09 08:48:06.791+00
10098	Issue Operations Plugin	com.atlassian.jira.plugin.system.issueoperations	1.0	2020-07-09 08:48:06.795+00
10099	Gadget Directory Plugin	com.atlassian.gadgets.directory	4.3.10	2020-07-09 08:48:06.798+00
10100	Attach Image for JIRA	com.atlassian.plugins.jira-html5-attach-images	4.0.0	2020-07-09 08:48:06.801+00
10101	Jira Monitoring Plugin	com.atlassian.jira.jira-monitoring-plugin	05.7.3	2020-07-09 08:48:06.816+00
10102	Atlassian Hipchat Integration Plugin	com.atlassian.plugins.base-hipchat-integration-plugin	8.4.1	2020-07-09 08:48:06.819+00
10103	Atlassian Jira - Plugins - Project Centric Issue Navigator	com.atlassian.jira.jira-projects-issue-navigator	9.1.14	2020-07-09 08:48:06.823+00
10104	jira-importers-plugin	com.atlassian.jira.plugins.jira-importers-plugin	9.1.0	2020-07-09 08:48:06.826+00
10105	Atlassian Plugins - JavaScript libraries	com.atlassian.plugin.jslibs	1.4.1	2020-07-09 08:48:06.83+00
10106	Jira Time Zone Detection plugin	com.atlassian.jira.jira-tzdetect-plugin	3.0.3	2020-07-09 08:48:06.833+00
10107	Hipchat for Jira	com.atlassian.labs.hipchat.hipchat-for-jira-plugin	8.4.1	2020-07-09 08:48:06.836+00
10108	Atlassian Jira - Plugins - Diagnostics Plugin	com.atlassian.jira.diagnostics	8.4.0	2020-07-09 08:48:06.839+00
10109	JIRA Core Dutch (Netherlands) Language Pack	tac.jira core.languages.nl_NL	8.6.0.v20190821055628	2020-07-09 08:48:06.843+00
10110	JIRA Core Estonian (Estonia) Language Pack	tac.jira core.languages.et_EE	8.6.0.v20190821055628	2020-07-09 08:48:06.847+00
10111	JSON Library	com.atlassian.bundles.json-20070829.0.0.1	20070829.0.0.1	2020-07-09 08:48:06.85+00
10112	JDOM DOM Processor	com.springsource.org.jdom-1.0.0	1.0.0	2020-07-09 08:48:06.854+00
10113	JIRA Core Chinese (China) Language Pack	tac.jira core.languages.zh_CN	8.6.0.v20190821055628	2020-07-09 08:48:06.859+00
10114	Atlassian Jira - Plugins - Feedback Plugin	com.atlassian.feedback.jira-feedback-plugin	8.4.0	2020-07-09 08:48:06.863+00
10115	ActiveObjects Plugin - OSGi Bundle	com.atlassian.activeobjects.activeobjects-plugin	3.0.1	2020-07-09 08:48:06.867+00
10116	Atlassian Jira - Plugins - Header Plugin	com.atlassian.jira.jira-header-plugin	8.4.0	2020-07-09 08:48:06.87+00
10117	Issue Tab Panels Plugin	com.atlassian.jira.plugin.system.issuetabpanels	1.0	2020-07-09 08:48:06.874+00
10118	JIRA Feature Keys	jira.feature.keys	1.0	2020-07-09 08:48:06.877+00
10119	JIRA Streams Inline Actions Plugin	com.atlassian.streams.jira.inlineactions	8.1.3	2020-07-09 08:48:06.88+00
10120	Atlassian Jira - Plugins - Application Properties	com.atlassian.jira.jira-application-properties-plugin	8.4.0	2020-07-09 08:48:06.884+00
10121	Atlassian Jira - Plugins - Gadgets Plugin	com.atlassian.jira.gadgets	8.4.0	2020-07-09 08:48:06.889+00
10122	Atlassian Jira - Plugins - Analytics whitelist	com.atlassian.jira.jira-analytics-whitelist-plugin	8.4.0	2020-07-09 08:48:06.893+00
10123	jira-inline-issue-create-plugin	com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin	2.0.16	2020-07-09 08:48:06.896+00
10124	Functional Extensions Scala Inter-Ops	io.atlassian.fugue.scala-4.7.2	4.7.2	2020-07-09 08:48:06.91+00
10125	Workbox - JIRA Provider Plugin	com.atlassian.mywork.mywork-jira-provider-plugin	7.0.1	2020-07-09 08:48:06.919+00
10126	JIRA Core Korean (South Korea) Language Pack	tac.jira core.languages.ko_KR	8.6.0.v20190821055628	2020-07-09 08:48:06.923+00
10127	Content Link Resolvers Plugin	com.atlassian.jira.plugin.wiki.contentlinkresolvers	1.0	2020-07-09 08:48:06.927+00
10128	Atlassian Application Manager plugin	com.atlassian.upm.upm-application-plugin	4.0.5	2020-07-09 08:48:06.931+00
10129	JIRA Core Spanish (Spain) Language Pack	tac.jira core.languages.es_ES	8.6.0.v20190821055628	2020-07-09 08:48:06.935+00
10130	Atlassian JIRA - Plugins - Credits Plugin	com.atlassian.jira.jira-credits-plugin	8.4.0	2020-07-09 08:48:06.939+00
10131	Jira Mobile	com.atlassian.jira.mobile	3.2.8	2020-07-09 08:48:06.942+00
10132	Atlassian Jira - Plugins - Onboarding	com.atlassian.jira.jira-onboarding-assets-plugin	8.4.0	2020-07-09 08:48:06.945+00
10133	Atlassian JIRA - Admin Helper Plugin	com.atlassian.jira.plugins.jira-admin-helper-plugin	5.0.1	2020-07-09 08:48:06.948+00
10134	Atlassian browser metrics plugin	com.atlassian.plugins.browser.metrics.browser-metrics-plugin	7.0.1	2020-07-09 08:48:06.96+00
10135	Atlassian Jira - Plugins - Global Issue Navigator	com.atlassian.jira.jira-issue-nav-plugin	9.1.14	2020-07-09 08:48:06.964+00
10136	User Navigation Bar Sections	jira.webfragments.user.navigation.bar	1.0	2020-07-09 08:48:06.967+00
10137	Atlassian Troubleshooting and Support Tools	com.atlassian.troubleshooting.plugin-jira	1.19.1	2020-07-09 08:48:06.971+00
10138	Neko HTML	com.atlassian.bundles.nekohtml-1.9.12.1	1.9.12.1	2020-07-09 08:48:06.974+00
10139	JIRA Global Permissions	jira.system.global.permissions	1.0	2020-07-09 08:48:06.977+00
10140	Atlassian Template Renderer API	com.atlassian.templaterenderer.api	4.0.0	2020-07-09 08:48:06.98+00
10141	JIRA Core Danish (Denmark) Language Pack	tac.jira core.languages.da_DK	8.6.0.v20190821055628	2020-07-09 08:48:06.985+00
10142	Atlassian JIRA - Plugins - File viewer plugin	com.atlassian.jira.jira-fileviewer-plugin	8.0.0	2020-07-09 08:48:06.996+00
10143	Atlassian Pretty URLs Plugin	com.atlassian.prettyurls.atlassian-pretty-urls-plugin	3.0.0	2020-07-09 08:48:07.003+00
10144	JIRA Attachment Archive File Processors	jira.system.attachment.processors	1.0	2020-07-09 08:48:07.007+00
10145	Atlassian Jira - Plugins - Admin Upgrades	com.atlassian.jira.jira-admin-updates-plugin	8.4.0	2020-07-09 08:48:07.01+00
10146	jira-ui	com.atlassian.jira.plugins.jira-ui	0.2.1	2020-07-09 08:48:07.013+00
10147	Atlassian Universal Plugin Manager Plugin	com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4.0.5	2020-07-09 08:48:07.016+00
10148	SAML for Atlassian Data Center	com.atlassian.plugins.authentication.atlassian-authentication-plugin	3.1.1	2020-07-09 08:48:07.025+00
10149	Atlassian Whitelist UI Plugin	com.atlassian.plugins.atlassian-whitelist-ui-plugin	4.0.7	2020-07-09 08:48:07.032+00
10150	JIRA Core Portuguese (Brazil) Language Pack	tac.jira core.languages.pt_BR	8.6.0.v20190821055628	2020-07-09 08:48:07.038+00
10151	Atlassian Jira - Plugins - Frontend Features	com.atlassian.jira.jira-frontend-plugin	8.4.0	2020-07-09 08:48:07.042+00
10152	Redmine Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-redmine-plugin	2.2.0	2020-07-09 08:48:07.045+00
10153	Atlassian JIRA - Plugins - Quick Edit Plugin	com.atlassian.jira.jira-quick-edit-plugin	4.0.0	2020-07-09 08:48:07.049+00
10154	Soy Function Plugin	com.atlassian.jira.plugin.system.soyfunction	1.0	2020-07-09 08:48:07.061+00
10155	Universal Plugin Manager - Role-Based Licensing Implementation Plugin	com.atlassian.upm.role-based-licensing-plugin	4.0.5	2020-07-09 08:48:07.065+00
10156	Jira Core Project Templates Plugin	com.atlassian.jira-core-project-templates	7.0.3	2020-07-09 08:48:07.069+00
10157	Atlassian OAuth Admin Plugin	com.atlassian.oauth.admin	4.0.2	2020-07-09 08:48:07.072+00
10158	Atlassian REST - Module Types	com.atlassian.plugins.rest.atlassian-rest-module	6.0.2	2020-07-09 08:48:07.076+00
10159	Crowd REST API	crowd-rest-application-management	1.0	2020-07-09 08:48:07.079+00
10160	jira-issue-nav-components	com.atlassian.jira.jira-issue-nav-components	9.1.14	2020-07-09 08:48:07.083+00
10161	jquery	com.atlassian.plugins.jquery	2.2.4.7	2020-07-09 08:48:07.088+00
10162	Atlassian Jira - Plugins - Auditing Plugin [Audit Log]	com.atlassian.jira.plugins.jira-auditing-plugin	8.4.0	2020-07-09 08:48:07.094+00
10163	JIRA Remote Link Aggregator Plugin	com.atlassian.plugins.jira-remote-link-aggregator-plugin	3.0.0	2020-07-09 08:48:07.1+00
10164	Streams API	com.atlassian.streams.streams-api	8.1.3	2020-07-09 08:48:07.105+00
10165	Atlassian Jira - Plugins - Atlassian Notifications Plugin	com.atlassian.jira.jira-whisper-plugin	8.4.0	2020-07-09 08:48:07.109+00
10166	Atlassian HTTP Client, Apache HTTP components impl	com.atlassian.httpclient.atlassian-httpclient-plugin	2.0.0	2020-07-09 08:48:07.113+00
10167	Asana Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-asana-plugin	2.1.0	2020-07-09 08:48:07.116+00
10168	Atlassian Awareness Capability	com.atlassian.plugins.atlassian-awareness-capability	0.0.6	2020-07-09 08:48:07.122+00
10169	Atlassian Plugins - Web Resources REST	com.atlassian.plugins.atlassian-plugins-webresource-rest	4.1.2	2020-07-09 08:48:07.139+00
10170	Custom Field Types & Searchers	com.atlassian.jira.plugin.system.customfieldtypes	1.0	2020-07-09 08:48:07.143+00
10171	Project Creation Capability Product REST Plugin	com.atlassian.plugins.atlassian-project-creation-plugin	4.0.0-74bdd7a6fa	2020-07-09 08:48:07.147+00
10172	Atlassian Jira - Plugins - REST Plugin	com.atlassian.jira.rest	8.4.0	2020-07-09 08:48:07.151+00
10173	Atlassian Spring Scanner Runtime	com.atlassian.plugin.atlassian-spring-scanner-runtime	2.1.7	2020-07-09 08:48:07.154+00
10174	Opensocial Plugin	com.atlassian.gadgets.opensocial	4.3.10	2020-07-09 08:48:07.157+00
10175	Atlassian Jira - Plugins - Confluence Link	com.atlassian.jira.jira-issue-link-confluence-plugin	8.4.0	2020-07-09 08:48:07.161+00
10176	ROME, RSS and atOM utilitiEs for Java	rome.rome-1.0	1.0	2020-07-09 08:48:07.164+00
10177	User Format	jira.user.format	1.0	2020-07-09 08:48:07.168+00
10178	JIRA Core Finnish (Finland) Language Pack	tac.jira core.languages.fi_FI	8.6.0.v20190821055628	2020-07-09 08:48:07.172+00
10179	View Project Operations Sections	jira.webfragments.view.project.operations	1.0	2020-07-09 08:48:07.175+00
10180	atlassian-servlet-plugin	com.atlassian.web.atlassian-servlet-plugin	5.2.0	2020-07-09 08:48:07.182+00
10181	Apache Apache HttpCore OSGi bundle	org.apache.httpcomponents.httpcore-4.4.9	4.4.9	2020-07-09 08:48:07.186+00
10182	Crowd REST API	crowd-rest-plugin	1.0	2020-07-09 08:48:07.189+00
10183	Atlassian OAuth Consumer SPI	com.atlassian.oauth.atlassian-oauth-consumer-spi	4.0.2	2020-07-09 08:48:07.193+00
10184	Atlassian Jira - Plugins - Post-Upgrade Landing Page	com.atlassian.jira.plugins.jira-post-upgrade-landing-page-plugin	8.4.0	2020-07-09 08:48:07.197+00
10185	JIRA Core Hungarian (Hungary) Language Pack	tac.jira core.languages.hu_HU	8.6.0.v20190821055628	2020-07-09 08:48:07.2+00
10186	Atlassian Spring Scanner Annotations	com.atlassian.plugin.atlassian-spring-scanner-annotation	2.1.7	2020-07-09 08:48:07.203+00
10187	jackson-module-scala-2.10-provider	com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin	0.5	2020-07-09 08:48:07.207+00
10188	User anonymization in Jira Core	com.atlassian.jira.user.anonymize	1.0	2020-07-09 08:48:07.21+00
10189	Rich Text Editor for JIRA	com.atlassian.jira.plugins.jira-editor-plugin	4.1.6	2020-07-09 08:48:07.213+00
10190	Web Resources Plugin Jira Core	jira.core	1.0	2020-07-09 08:48:07.216+00
10191	Workflow Plugin	com.atlassian.jira.plugin.system.workflow	1.0	2020-07-09 08:48:07.219+00
10192	jira-importers-trello-plugin	com.atlassian.jira.plugins.jira-importers-trello-plugin	3.1.0	2020-07-09 08:48:07.222+00
10193	Icon Types Plugin	jira.icontypes	1.0	2020-07-09 08:48:07.226+00
10194	JIRA Core Norwegian (Norway) Language Pack	tac.jira core.languages.no_NO	8.6.0.v20190821055628	2020-07-09 08:48:07.229+00
10195	Atlassian WebHooks Plugin	com.atlassian.webhooks.atlassian-webhooks-plugin	3.3.0	2020-07-09 08:48:07.232+00
10196	Help Paths Plugin	jira.help.paths	1.0	2020-07-09 08:48:07.235+00
10197	Jira Base URL Plugin	com.atlassian.jira.jira-baseurl-plugin	3.2.0	2020-07-09 08:48:07.238+00
10198	Atlassian Jira - Plugins - Look And Feel Logo Upload Plugin	com.atlassian.jira.lookandfeel	8.4.0	2020-07-09 08:48:07.242+00
10199	Issue Status Plugin	com.atlassian.plugins.issue-status-plugin	2.0.2	2020-07-09 08:48:07.246+00
10200	Gadget Spec Publisher Plugin	com.atlassian.gadgets.publisher	4.3.10	2020-07-09 08:48:07.249+00
10201	Atlassian Jira - Plugins - OAuth Consumer SPI	com.atlassian.jira.oauth.consumer	8.4.0	2020-07-09 08:48:07.263+00
10202	JIRA Core French (France) Language Pack	tac.jira core.languages.fr_FR	8.6.0.v20190821055628	2020-07-09 08:48:07.275+00
10203	Renderer Component Factories Plugin	com.atlassian.jira.plugin.wiki.renderercomponentfactories	1.0	2020-07-09 08:48:07.279+00
10204	Atlassian LESS Transformer Plugin	com.atlassian.plugins.less-transformer-plugin	4.0.0	2020-07-09 08:48:07.283+00
10205	Pocketknife Feature Flags Plugin	com.atlassian.pocketknife.featureflags-plugin	0.5.4	2020-07-09 08:48:07.287+00
10206	Functional Optics Library	io.atlassian.fugue.optics-4.7.2	4.7.2	2020-07-09 08:48:07.29+00
10207	Functional Extensions Retry Inter-Ops	io.atlassian.fugue.retry-4.7.2	4.7.2	2020-07-09 08:48:07.293+00
10208	Atlassian Front-End Runtime Plugin	com.atlassian.frontend.atlassian-frontend-runtime-plugin	0.3.0	2020-07-09 08:48:07.309+00
10209	Atlassian Bot Session Killer	com.atlassian.labs.atlassian-bot-killer	1.7.9	2020-07-09 08:48:07.314+00
10210	User Profile Panels	jira.user.profile.panels	1.0	2020-07-09 08:48:07.32+00
10211	scala-2.10-provider-plugin	com.atlassian.scala.plugins.scala-2.10-provider-plugin	0.14	2020-07-09 08:48:07.327+00
10212	Atlassian Jira - Plugins - ActiveObjects SPI	com.atlassian.jira.jira-activeobjects-spi-plugin	8.4.0	2020-07-09 08:48:07.334+00
10213	JIRA Project Permissions	jira.system.project.permissions	1.0	2020-07-09 08:48:07.338+00
10214	Wallboard Plugin	com.atlassian.jirawallboard.atlassian-wallboard-plugin	3.0.2	2020-07-09 08:48:07.341+00
10215	Atlassian Jira - Plugins - User Profile Plugin	com.atlassian.jira.jira-user-profile-plugin	4.0.3	2020-07-09 08:48:07.344+00
10216	Project Templates Plugin	com.atlassian.jira.project-templates-plugin	7.0.3	2020-07-09 08:48:07.348+00
10217	Atlassian Notifications	com.atlassian.whisper.atlassian-whisper-plugin	2.0.6	2020-07-09 08:48:07.351+00
10218	Filter Deletion Warning Plugin	jira.filter.deletion.warning	1.0	2020-07-09 08:48:07.354+00
10219	English (United States) Language Pack	com.atlassian.jira.jira-languages.en_US	8.4.0	2020-07-09 08:48:07.357+00
10220	Atlassian Jira - Plugins - LESS integration	com.atlassian.jira.jira-less-integration	8.4.0	2020-07-09 08:48:07.36+00
10221	Atlassian Jira - Plugins - SAL Plugin	com.atlassian.sal.jira	8.4.0	2020-07-09 08:48:07.364+00
10222	Atlassian Diagnostics - Plugin	com.atlassian.diagnostics.atlassian-diagnostics-plugin	1.1.10	2020-07-09 08:48:07.368+00
10223	Atlassian Template Renderer Velocity 1.6 Plugin	com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	4.0.0	2020-07-09 08:48:07.372+00
10224	Atlassian Jira - Plugins - Mail Plugin	com.atlassian.jira.jira-mail-plugin	11.0.1	2020-07-09 08:48:07.376+00
10225	Atlassian Jira - Plugins - Closure Template Renderer	com.atlassian.jira.jira-soy-plugin	8.4.0	2020-07-09 08:48:07.38+00
10226	Jira Workflow Designer Plugin	com.atlassian.jira.plugins.jira-workflow-designer	8.0.6	2020-07-09 08:48:07.387+00
10227	Gadget Dashboard Plugin	com.atlassian.gadgets.dashboard	4.3.10	2020-07-09 08:48:07.391+00
10228	Atlassian - Administration - Quick Search - JIRA	com.atlassian.administration.atlassian-admin-quicksearch-jira	2.3.3	2020-07-09 08:48:07.395+00
10229	Web Panel Plugin	jira.webpanels	1.0	2020-07-09 08:48:07.407+00
10230	Applinks - Plugin - OAuth	com.atlassian.applinks.applinks-oauth-plugin	6.0.4	2020-07-09 08:48:07.419+00
10231	JIRA browser metrics integration plugin	com.atlassian.jira.plugins.jira-browser-metrics	2.0.14	2020-07-09 08:48:07.431+00
10232	JIRA Activity Stream Plugin	com.atlassian.streams.streams-jira-plugin	8.1.3	2020-07-09 08:48:07.44+00
10233	English (United Kingdom) Language Pack	com.atlassian.jira.jira-languages.en_UK	8.4.0	2020-07-09 08:48:07.455+00
10234	Static Assets (CDN) Plugin	com.atlassian.plugins.static-assets-url	1.0.5	2020-07-09 08:48:07.467+00
10235	JIRA Usage Hints	jira.usage.hints	1.0	2020-07-09 08:48:07.479+00
\.


--
-- Data for Name: portalpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.portalpage (id, username, pagename, description, sequence, fav_count, layout, ppversion) FROM stdin;
10000	\N	System Dashboard	\N	0	0	AA	0
\.


--
-- Data for Name: portletconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.portletconfiguration (id, portalpage, portlet_id, column_number, positionseq, gadget_xml, color, dashboard_module_complete_key) FROM stdin;
10000	10000	\N	0	0	\N	\N	com.atlassian.jira.gadgets:introduction-dashboard-item
10002	10000	\N	1	0	rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml	\N	\N
10003	10000	\N	1	1	rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml	\N	\N
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priority (id, sequence, pname, description, iconurl, status_color) FROM stdin;
1	1	Highest	This problem will block progress.	/images/icons/priorities/highest.png	#ff7452
2	2	High	Serious problem that could block progress.	/images/icons/priorities/high.png	#ff8f73
3	3	Medium	Has the potential to affect progress.	/images/icons/priorities/medium.png	#ffab00
4	4	Low	Minor problem or easily worked around.	/images/icons/priorities/low.png	#0065ff
5	5	Lowest	Trivial problem with little or no impact on progress.	/images/icons/priorities/lowest.png	#2684ff
\.


--
-- Data for Name: productlicense; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productlicense (id, license) FROM stdin;
10001	AAABjQ0ODAoPeNp9kl9PwjAUxd/3KZr4og9bxkQRkiXq1gcQNsPQEONLHReobN1y26J8e7sNA8qfpC83veeeX8/txWSpyUBnxO0St91rtXtehwThhHiu51oLBBDLoiwBnSFPQUigM654IXwaTej4edxPqBXp/AMwnr9IQOnbLSsohGKpilgO/oqttOBixnN2v8gZz5y0yK1Pjsw50D1rTJdMQsgU+BWA7XZst2ttrSebEuqZQTwa0XHQfxj+XtHvkuNmT3dnzi8HHRnbEyAJ4BqwH/qP09iz327bbTvuXk/tIJ4+NZQlFjOdKqcqbFnM1RdDcMxYvgZfoYZzbYaIBSAUYNOa6A+ZIi/rCHfi09ke2cCxGMwLjYlgIj0RxRnGgzVsfUwow36Y0Mgetm46rY53123GHDyKRv6RtuNuiWJYKecsk2DFuGCCS9bkAVJZAUJd/f8DWQP1ahirXu9PMjVMiVxuNxLCLuWBsSfJ1p5cVvCkob967xG6ZpmuDRvog72eCX2fYF+3m9nUP6bmLJgwLgIVAIG+b5nGsRn5dGqow6suZmjYh4IKAhUAlPZZ+2Vw7uhE0eOW9wljj2Qdghw=X02jb
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (id, pname, url, lead, description, pkey, pcounter, assigneetype, avatar, originalkey, projecttype) FROM stdin;
10000	test		JIRAUSER10000		TEST	24	3	10324	TEST	business
\.


--
-- Data for Name: project_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_key (id, project_id, project_key) FROM stdin;
10000	10000	TEST
\.


--
-- Data for Name: projectcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectcategory (id, cname, description) FROM stdin;
\.


--
-- Data for Name: projectchangedtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectchangedtime (project_id, issue_changed_time) FROM stdin;
\.


--
-- Data for Name: projectrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectrole (id, name, description) FROM stdin;
10002	Administrators	A project role that represents administrators in a project
\.


--
-- Data for Name: projectroleactor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectroleactor (id, pid, projectroleid, roletype, roletypeparameter) FROM stdin;
10002	\N	10002	atlassian-group-role-actor	jira-administrators
10100	10000	10002	atlassian-group-role-actor	jira-administrators
\.


--
-- Data for Name: projectversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectversion (id, project, vname, description, sequence, released, archived, url, startdate, releasedate) FROM stdin;
\.


--
-- Data for Name: propertydata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertydata (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertydate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertydate (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertydecimal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertydecimal (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertyentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertyentry (id, entity_name, entity_id, property_key, propertytype) FROM stdin;
6	jira.properties	1	jira.avatar.user.anonymous.id	5
7	jira.properties	1	jira.scheme.default.issue.type	5
9	jira.properties	1	jira.whitelist.disabled	1
10	jira.properties	1	jira.whitelist.rules	6
11	jira.properties	1	jira.option.timetracking	1
12	jira.properties	1	jira.timetracking.estimates.legacy.behaviour	1
13	jira.properties	1	jira.version	5
14	jira.properties	1	jira.downgrade.minimum.version	5
15	jira.properties	1	jira.option.allowunassigned	1
16	jira.properties	1	jira.path.index.use.default.directory	1
21	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47	6
22	jira.properties	1	jira.onboarding.app_user.id.threshold	5
23	jira.properties	1	post.migration.page.displayed	1
1	jira.properties	1	jira.version.patched	5
2	jira.properties	1	jira.avatar.issuetype.subtask.default.id	5
3	jira.properties	1	jira.avatar.default.id	5
4	jira.properties	1	jira.avatar.issuetype.default.id	5
5	jira.properties	1	jira.avatar.user.default.id	5
10100	jira.properties	1	webwork.i18n.encoding	5
10101	jira.properties	1	jira.sid.key	5
10102	jira.properties	1	AO_550953_#	5
10103	jira.properties	1	AO_4AEACD_#	5
10104	jira.properties	1	AO_587B34_#	5
10105	jira.properties	1	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue	3
10106	ServiceConfig	10200	RETENTION_PERIOD	5
10107	ServiceConfig	10201	RETENTION_PERIOD	5
10108	jira.properties	1	jira.monitoring.jmx.enabled	1
10109	jira.properties	1	jvm.system.timezone	5
10110	jira.properties	1	jira.webresource.superbatch.flushcounter	5
10111	jira.properties	1	jira.i18n.language.index	5
10112	jira.properties	1	jira.scheme.default.priority	5
10115	com.atlassian.jira.user.flag.FlagDismissalServiceImpl	1	com.atlassian.jira.flag.resets	6
10200	jira.properties	1	jira.webresource.flushcounter	5
10201	jira.properties	1	jira.mail.send.disabled	1
10202	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedBy	5
10203	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedDate	5
10204	jira.properties	1	jira.title	5
10300	jira.properties	1	com.atlassian.jira.upgrade.untranslatedkeyfixer.disabled	5
10301	jira.properties	1	jira.baseurl	5
10302	jira.properties	1	jira.mode	5
10303	jira.properties	1	jira.path.attachments	5
10304	jira.properties	1	jira.path.attachments.use.default.directory	1
10305	jira.properties	1	jira.option.allowattachments	1
10306	ServiceConfig	10001	USE_DEFAULT_DIRECTORY	5
10307	jira.properties	1	jira.path.backup	5
10308	jira.properties	1	jira.setup	5
10309	jira.properties	1	jira.initial.build.number	5
10310	jira.properties	1	jira.option.user.externalmanagement	1
10311	jira.properties	1	jira.option.voting	1
10312	jira.properties	1	jira.option.watching	1
10313	jira.properties	1	jira.option.issuelinking	1
10314	jira.properties	1	jira.option.emailvisible	5
10400	jira.properties	1	jira.option.allowsubtasks	1
10401	jira.properties	1	com.atlassian.analytics.client.configuration..analytics_enabled	5
10402	jira.properties	1	com.atlassian.analytics.client.configuration.uuid	5
10403	jira.properties	1	com.atlassian.analytics.client.configuration.serverid	5
10404	jira.properties	1	jira-header-plugin.studio-tab-migration-complete	5
10405	jira.properties	1	com.atlassian.upm:notifications:notification-plugin.request	5
10406	jira.properties	1	com.atlassian.analytics.client.configuration..policy_acknowledged	5
10407	jira.properties	1	com.atlassian.upm:notifications:notification-edition.mismatch	5
10408	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.expired	5
10409	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	5
10410	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.expired	5
10411	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	5
10412	jira.properties	1	com.atlassian.upm:notifications:notification-license.expired	5
10413	jira.properties	1	com.atlassian.upm:notifications:notification-license.nearlyexpired	5
10414	jira.properties	1	com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects	5
10415	jira.properties	1	com.atlassian.sal.jira:build	5
10416	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled	5
10417	jira.properties	1	com.atlassian.jira.gadgets:build	5
10418	jira.properties	1	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build	5
10419	jira.properties	1	com.atlassian.crowd.embedded.admin:build	5
10420	jira.properties	1	com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build	5
10421	jira.properties	1	com.atlassian.jirawallboard.atlassian-wallboard-plugin:build	5
10422	jira.properties	1	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5
10423	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-core-plugin:build	5
10424	jira.properties	1	com.atlassian.jira.lookandfeel:isDefaultFavicon	5
10425	jira.properties	1	com.atlassian.jira.lookandfeel:usingCustomFavicon	5
10426	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconURL	5
10427	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL	5
10428	jira.properties	1	com.atlassian.jira.lookandfeel:faviconWidth	5
10429	jira.properties	1	com.atlassian.jira.lookandfeel:faviconHeight	5
10430	jira.properties	1	com.atlassian.jira.lookandfeel:build	5
10431	jira.properties	1	com.atlassian.jira.project-templates-plugin:build	5
10432	jira.properties	1	com.atlassian.jira.jira-mail-plugin:build	5
10433	jira.properties	1	com.atlassian.plugins.custom_apps.hasCustomOrder	5
10434	jira.properties	1	com.atlassian.plugins.atlassian-nav-links-plugin:build	5
10435	jira.properties	1	com.atlassian.jira.plugins.jira-workflow-designer:build	5
10437	jira.properties	1	com.atlassian.upm:notifications:notification-update	5
10438	ApplicationUser	10000	jira.onboarding.first.use.flow.started	5
10439	jira.properties	1	com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all	6
10440	ApplicationUser	10000	newsletter.signup.first.view	3
10441	ApplicationUser	10000	com.atlassian.jira.flag.dismissals	6
10442	ApplicationUser	10000	jira.onboarding.first.use.flow.current.sequence	5
10443	ApplicationUser	10000	jira.onboarding.first.use.flow.completed	1
10444	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8e9606a59280ca2ae4aed4b6958478af	6
10445	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.draft.layout.v5:8e9606a59280ca2ae4aed4b6958478af	6
10446	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout.v5:8e9606a59280ca2ae4aed4b6958478af	6
10447	ApplicationUser	10000	user.search.filter.id	6
10448	ApplicationUser	10000	user.search.jql	6
10449	ApplicationUser	10000	last-visited-item.10000	5
10450	Project	10000	firstIssueCreated	1
10451	ApplicationUser	10000	user.last.issue.type.id	5
10452	ApplicationUser	10000	jira.editor.user.mode	5
10453	ApplicationUser	10000	jira.quick.edit.show.welcome.screen	1
10454	ApplicationUser	10000	jira.quick.create.use	1
10455	ApplicationUser	10000	jira.quick.create.fields	6
10456	ApplicationUser	10000	jira.onboarding.first.use.flow.resolved	1
10457	user.format.mapping	1	avatarFullNameHover	5
10458	jira.properties	1	org.apache.shindig.common.crypto.BlobCrypter:key	5
10459	jira.properties	1	jira.trustedapp.key.private.data	6
10460	jira.properties	1	jira.trustedapp.key.public.data	6
10461	jira.properties	1	jira.trustedapp.uid	5
10462	ApplicationUser	10000	jira.user.suppressedTips.qs-onboarding-tip	1
10463	user.format.mapping	1	profileLinkWithAvatar	5
10464	user.format.mapping	1	avatarWithHover	5
10500	jira.properties	1	com.atlassian.analytics.client.configuration..logged_base_analytics_data	5
10436	jira.properties	1	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	6
10600	user.format.mapping	1	profileLink	5
10700	jira.properties	1	com.atlassian.whisper.plugin:ETag:messages	5
10701	jira.properties	1	com.atlassian.whisper.plugin:ETag:usermessages	5
10702	jira.properties	1	com.atlassian.whisper.plugin:last-successful-fetch-time	5
\.


--
-- Data for Name: propertynumber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertynumber (id, propertyvalue) FROM stdin;
10105	3
9	0
11	1
12	0
15	1
16	1
23	1
10201	0
10304	1
10305	1
10310	0
10311	1
10312	1
10313	1
10400	1
10440	1594286252378
10443	1
10450	1
10456	1
10462	1
10108	0
10453	1
10454	0
\.


--
-- Data for Name: propertystring; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertystring (id, propertyvalue) FROM stdin;
2	10316
3	10011
4	10300
5	10122
6	10123
7	10000
22	0
10100	UTF-8
10101	BXO2-Z644-O93X-COXK
10102	1
10103	1
10104	4
10111	english-moderate-stemming
10112	10100
10306	true
10202	
10203	1594284490332
10106	2880m
10107	2880m
10300	true
10500	true
10110	5
10204	Jira
10301	http://10.0.0.10
10302	private
10303	/opt/jira-home-shared/data/attachments
10307	/opt/jira-home-shared/export
10308	true
10309	804001
10314	show
10401	true
10402	5624cdc3-f627-442c-b3de-bacc705ac58a
10403	BXO2-Z644-O93X-COXK
10404	migrated
10407	#java.util.List\n
10408	#java.util.List\n
10409	#java.util.List\n
10410	#java.util.List\n
10411	#java.util.List\n
10412	#java.util.List\n
10413	#java.util.List\n
10415	2
10417	1
10418	3
10419	3
10420	1
10421	6086
10422	5
10416	true
10423	4
10424	false
10425	false
10426	/favicon.ico
10427	/images/64jira.png
10428	64
10429	64
10200	6411e0087192541a09d88223fb51a6a0
10430	1
10431	2001
10432	2
10433	false
10434	1
10435	1
10438	cyoaFirstUseFlow
10442	cyoa:return
10452	"wysiwyg"
10457	jira.user.format:avatar-and-full-name-with-hover-format
10458	Of66sn8nJrmqup13AH6ZnaovNsWoLdI10nfnEDecudo=
10461	jira:12915804
10463	jira.user.format:profile-link-with-avatar
10464	jira.user.format:avatar-with-hover
10449	com.atlassian.jira.jira-projects-issue-navigator:sidebar-issue-navigator
10600	jira.user.format:profile-link-user-format
10700	W/"da39a3ee5e6b4b0d3255bfef95601890afd80709"
10701	W/"da39a3ee5e6b4b0d3255bfef95601890afd80709"
10702	1594302726773
10109	GMT
10406	true
10414	true
10405	#java.util.List\n
10437	#java.util.List\ncom.atlassian.troubleshooting.plugin-jira
1	804001
13	8.4.0
14	7.1.2
10451	10000
\.


--
-- Data for Name: propertytext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertytext (id, propertyvalue) FROM stdin;
10	http://www.atlassian.com/*\n
21	{\n    "edgeMap": {\n        "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1801.0,\n                    "y": 115.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1801.0,\n                "y": 115.0\n            },\n            "endStepId": 4,\n            "id": "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1776.85,\n                "y": 355.25\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.25,\n                "y": 154.25\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "483797F1-1BF4-5E0F-86C6-4D19CE6023A2": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1551.0,\n                "y": 104.0\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "517D7F32-20FB-309E-8639-4D19CE2ACB54": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                }\n            ],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1631.25,\n                "y": 479.5\n            },\n            "lineType": "poly",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "startStepId": 3\n        },\n        "58BD4605-5FB9-84EA-6952-4D19CE7B454B": {\n            "actionId": 1,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1470.0,\n                    "y": 16.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "58BD4605-5FB9-84EA-6952-4D19CE7B454B",\n            "label": "Create Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1475.5,\n                "y": 48.5\n            },\n            "lineType": "straight",\n            "startNodeId": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1470.0,\n                "y": 16.0\n            },\n            "startStepId": 1\n        },\n        "92D3DEFD-13AC-06A7-E5D8-4D19CE537791": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1439.5,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1390.0,\n                    "y": 434.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                }\n            ],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1390.0,\n                "y": 434.0\n            },\n            "endStepId": 3,\n            "id": "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1323.65,\n                "y": 193.75\n            },\n            "lineType": "poly",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1439.5,\n                "y": 116.0\n            },\n            "startStepId": 1\n        },\n        "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1677.0,\n                    "y": 227.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                },\n                {\n                    "positiveController": null,\n                    "x": 1773.5,\n                    "y": 425.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                }\n            ],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1773.5,\n                "y": 425.0\n            },\n            "endStepId": 5,\n            "id": "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1703.85,\n                "y": 218.5\n            },\n            "lineType": "poly",\n            "startNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1677.0,\n                "y": 227.0\n            },\n            "startStepId": 6\n        },\n        "C9EA1792-2332-8B56-A04D-4D19CD725367": {\n            "actionId": 301,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1465.0,\n                    "y": 436.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "C9EA1792-2332-8B56-A04D-4D19CD725367",\n            "label": "Stop Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1407.8,\n                "y": 308.5\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1465.0,\n                "y": 436.0\n            },\n            "startStepId": 3\n        },\n        "CAF37138-6321-E03A-8E41-4D19CDD7DC78": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1764.5,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1677.65,\n                "y": 365.0\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1764.5,\n                "y": 430.0\n            },\n            "startStepId": 5\n        },\n        "E1F8462A-8B0A-87EA-4F70-4D19CE423C83": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1488.0,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.0,\n                "y": 345.0\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1488.0,\n                "y": 430.0\n            },\n            "startStepId": 3\n        },\n        "E27D8EB8-8E49-430B-8FCB-4D19CE127171": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1840.0,\n                    "y": 130.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1846.5,\n                    "y": 428.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1846.5,\n                "y": 428.0\n            },\n            "endStepId": 5,\n            "id": "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1814.05,\n                "y": 169.5\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1840.0,\n                "y": 130.0\n            },\n            "startStepId": 4\n        },\n        "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "endStepId": 3,\n            "id": "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1607.25,\n                "y": 423.5\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1": {\n            "actionId": 701,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1635.75,\n                "y": 152.25\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "startStepId": 4\n        }\n    },\n    "nodeMap": {\n        "0740FFFA-2AA1-C90A-38ED-4D19CD61899B": {\n            "id": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "inLinkIds": [\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791"\n            ],\n            "isInitialAction": false,\n            "label": "In Progress",\n            "outLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 146.0,\n                "x": 1373.0,\n                "y": 419.0\n            },\n            "stepId": 3\n        },\n        "15174530-AE75-04E0-1D9D-4D19CD200835": {\n            "id": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "inLinkIds": [],\n            "isInitialAction": true,\n            "label": "Create Issue",\n            "outLinkIds": [\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 157.0,\n                "x": 1405.0,\n                "y": 0.0\n            },\n            "stepId": 1\n        },\n        "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34": {\n            "id": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "inLinkIds": [\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "isInitialAction": false,\n            "label": "Closed",\n            "outLinkIds": [\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 120.0,\n                "x": 1569.0,\n                "y": 210.0\n            },\n            "stepId": 6\n        },\n        "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D": {\n            "id": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "inLinkIds": [\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2"\n            ],\n            "isInitialAction": false,\n            "label": "Resolved",\n            "outLinkIds": [\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171"\n            ],\n            "rect": {\n                "height": 44.0,\n                "positiveController": null,\n                "width": 137.0,\n                "x": 1709.0,\n                "y": 97.0\n            },\n            "stepId": 4\n        },\n        "778534F4-7595-88B6-45E1-4D19CD518712": {\n            "id": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "inLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "isInitialAction": false,\n            "label": "Open",\n            "outLinkIds": [\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 106.0,\n                "x": 1429.5,\n                "y": 97.0\n            },\n            "stepId": 1\n        },\n        "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB": {\n            "id": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "inLinkIds": [\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "isInitialAction": false,\n            "label": "Reopened",\n            "outLinkIds": [\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 142.0,\n                "x": 1749.5,\n                "y": 418.0\n            },\n            "stepId": 5\n        }\n    },\n    "rootIds": [\n        "15174530-AE75-04E0-1D9D-4D19CD200835"\n    ],\n    "width": 1136\n}\n
10115	{"com.atlassian.jira.reindex.required":1594284489927}
10439	database.setup=AWAITS;app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCE;mail.properties.setup=ANNOUNCE
10444	{\n  "annotations": [],\n  "width": 1375,\n  "rootIds": ["0D45CF1F-C6AE-B393-21B3-5A05591D1737"],\n  "nodeMap": {\n    "4E4B73B1-3C40-5FAC-264E-5A05595F62A5": {\n      "stepId": 2,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 151.0,\n        "x": 1927.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5"\n      ],\n      "outLinkIds": [\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E"\n      ],\n      "id": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "label": "In Progress"\n    },\n    "0D45CF1F-C6AE-B393-21B3-5A05591D1737": {\n      "stepId": 1,\n      "isInitialAction": true,\n      "rect": {\n        "height": 42.0,\n        "width": 117.0,\n        "x": 1512.0,\n        "y": 0.0,\n        "positiveController": null\n      },\n      "inLinkIds": [],\n      "outLinkIds": ["A56BC718-F21C-4688-A750-5A055A19265A"],\n      "id": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "label": "Create"\n    },\n    "3A048B99-FC9B-EADD-9590-5A0559B773A9": {\n      "stepId": 3,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 109.0,\n        "x": 1518.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "outLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA"\n      ],\n      "id": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "label": "Done"\n    },\n    "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257": {\n      "stepId": 1,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 114.0,\n        "x": 1512.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "A56BC718-F21C-4688-A750-5A055A19265A"\n      ],\n      "outLinkIds": [\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "id": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "label": "To Do"\n    }\n  },\n  "edgeMap": {\n    "1B7EC8D6-8966-9F61-6207-5A055A09D24C": {\n      "actionId": 21,\n      "startStepId": 1,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 1572.0,\n        "y": 122.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1573.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1572.0,\n          "y": 122.0,\n          "positiveController": null\n        },\n        {\n          "x": 1573.0,\n          "y": 354.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1567.0,\n        "y": 219.6,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "1B7EC8D6-8966-9F61-6207-5A055A09D24C",\n      "label": "Done"\n    },\n    "5841480E-F84E-DBF7-3509-5A0559D9CADA": {\n      "actionId": 61,\n      "startStepId": 3,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1627.0,\n        "y": 361.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1953.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1627.0,\n          "y": 361.0,\n          "positiveController": null\n        },\n        {\n          "x": 1953.0,\n          "y": 257.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1658.0,\n        "y": 287.0,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n      "label": "Reopen and start progress"\n    },\n    "321335A8-A6FA-C691-F3DF-5A0559C94B79": {\n      "actionId": 51,\n      "startStepId": 3,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1528.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1527.0,\n        "y": 120.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1528.0,\n          "y": 354.0,\n          "positiveController": null\n        },\n        {\n          "x": 1527.0,\n          "y": 120.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1437.0,\n        "y": 219.1,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n      "label": "Reopen"\n    },\n    "40B3F1B0-322B-BC82-F68C-5A0559E9885E": {\n      "actionId": 41,\n      "startStepId": 2,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 2056.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1608.0,\n        "y": 394.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 2056.0,\n          "y": 257.0,\n          "positiveController": null\n        },\n        {\n          "x": 1608.0,\n          "y": 394.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1788.5,\n        "y": 325.25,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n      "label": "Done"\n    },\n    "A56BC718-F21C-4688-A750-5A055A19265A": {\n      "actionId": 1,\n      "startStepId": 1,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1557.0,\n        "y": 40.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1557.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1557.0,\n          "y": 40.0,\n          "positiveController": null\n        },\n        {\n          "x": 1557.0,\n          "y": 80.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1537.0,\n        "y": 50.6,\n        "positiveController": null\n      },\n      "startNodeId": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "A56BC718-F21C-4688-A750-5A055A19265A",\n      "label": "Create"\n    },\n    "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7": {\n      "actionId": 31,\n      "startStepId": 2,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1951.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1623.0,\n        "y": 114.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1951.0,\n          "y": 215.0,\n          "positiveController": null\n        },\n        {\n          "x": 1623.0,\n          "y": 114.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1709.5,\n        "y": 168.75,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n      "label": "Stop Progress"\n    },\n    "407198C8-F439-AEEC-73FE-5A0559F98EB5": {\n      "actionId": 11,\n      "startStepId": 1,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1626.0,\n        "y": 89.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 2053.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1626.0,\n          "y": 89.0,\n          "positiveController": null\n        },\n        {\n          "x": 2053.0,\n          "y": 215.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1809.5,\n        "y": 131.5,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n      "label": "Start Progress"\n    }\n  }\n}
10445	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
10446	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
10447	\N
10448	project = TEST AND resolution = Unresolved ORDER BY priority DESC, updated DESC
10441	{"com.atlassian.jira.tzdetect.7200000,10800000":1594286294213}
10455	summary,description,priority,versions,components
10459	MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCYU6fS8R2jHek0Rs3JSt6EYvLmyuIMTsCIHWUJzZu6tXAp9dKOfFmvryU4sJcdh6ow/iQjI+2Q6L9ha+BvSYW7ZnlDr+Y7g/NJsIw1fxX6ZzBTFPJNBp89Y47nJa0/K8EKTiue/6GIX6L6YflTX5hOOHUI5S2umbamfq0UVds65tbidy3aYHuA9CBnmZxvy2eS0oz2RzN32q48c35K3Z1yRPJlnOmIb6vI25ZUXS4ydSmIxV9I39KDHEvZ/tZP9/JM9TkzbMu0jGYUmSXB4991MTaET7Jptd8o8uMELkkerLXDa6MLHIf4sXSNoW/ILqd6pxuIhNBsI5hSLnIzTnbxAgMBAAECggEBAJXy8+gBFw21qhWeBYG7w+RKi5aJ7Y/0Di9v0ECgOEbJyQplRMqiup7pKRjvLTMSk4T7CJPXEEtv8sVyLlMe6xiZPZJWG6xGrj3CH6Oh4P7IiZefrQ4KEMObt9bvDeZ7qeH9JY+1UUwv6P3VaFycZA/MH9mL0TZpdpXbaYH1KoSFoUC0fPFKkey9j4DiDOkmaKwlyUTR8ri0cwqEA67NCShZ1E+vMUMqRQNJ4ABZeel5X1lLTGr/i7uIy8nujkpLo7jcL3zBn3hPSypyS7vwK0xXmwNd53dpJMmj/PTBX58u37n0P3UP7AdAvQjdCUQBqTZk/kDFJ+MdQ9JQBTuOPIECgYEA7esplHSQ4yhTXf5MHhxhh+KpJ9g9ARMKxubAy+K5yqaKpHSMs8B+mAYvLekbvAoUK3anikgkUpuyk4FIRQlUiPlYgbd3H5Pd3tBETAVyM1HX8gXwoZGUg+Lqyn70L6TtQxRKQYJSKfMNJQwHom4/6/xUFvi7maRx0GgrHZByFdkCgYEAo+dBzKSczFbiT92SGm9uZ/WgQDIIzUiBu4PLq+llHX6NN0cSEDuvnkIF7H5L+/eW7pWgMbiVgX6vF/nBIThwzUQW1quEa8fdMBB2USj5CUzBq/BfQso1KicmB2w59o3G6ZLu1lfNaxy5spmZiiy1QtaXMA+uYwYNk3D0Mq24QtkCgYB9V9pFExBODK23JEU3y936OAjELCEfksenuGQ0RhN51znNoHWMMcrADuoGNvxcmba8mztzF8TDHLH9Eixf6qV1sF/Xny+MHFvUikahAnGC5ghtwoFerZLf1Mm7uxysiShSobrpPl5JKXpwXSEcixb0HbCzlYFIVaF8mZS1c6cXKQKBgADXHq896M/jYiWmrSkViStfRwMNPp5O0Nt1QYYQHESacX7nDmCm7a+SBxW/UARqsItomPmoSJvxWlR1I1hYQbvLrZJMLtGepLOqYfDolN5HVnbbNKHTB5K/wKIpG+L3tx1bc34F1TfHXexcfT0IHaXKE9xbODmpvkgTPC1GVruBAoGBAKy0GDlBUmZVn/gYTRXJi9D6hGljbnJ+VI8aFSctz0x8WLNx4tLG5J4cSFdYnPWUaRcuyf8o8cdzT/e6uK9zj/+lwM+rfwxLxnhNZ5ZbzoGi1ruITHHNfojabFAiQk+ua8z/mNzPqxiPzy/iWYv9QTChhJ2H0KDxbA0FqPqcVs4d
10460	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmFOn0vEdox3pNEbNyUrehGLy5sriDE7AiB1lCc2burVwKfXSjnxZr68lOLCXHYeqMP4kIyPtkOi/YWvgb0mFu2Z5Q6/mO4PzSbCMNX8V+mcwUxTyTQafPWOO5yWtPyvBCk4rnv+hiF+i+mH5U1+YTjh1COUtrpm2pn6tFFXbOubW4nct2mB7gPQgZ5mcb8tnktKM9kczd9quPHN+St2dckTyZZzpiG+ryNuWVF0uMnUpiMVfSN/SgxxL2f7WT/fyTPU5M2zLtIxmFJklwePfdTE2hE+yabXfKPLjBC5JHqy1w2ujCxyH+LF0jaFvyC6neqcbiITQbCOYUi5yM0528QIDAQAB
10436	#java.util.List\n{"userKey":"JIRA","date":1594306757668,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594299122062,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594294537648,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594293617885,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594289507910,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594289480173,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594288306803,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1594286148586,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}
\.


--
-- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_calendars (id, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_cron_triggers (id, trigger_id, cronexperssion) FROM stdin;
\.


--
-- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_fired_triggers (id, entry_id, trigger_id, trigger_listener, fired_time, trigger_state) FROM stdin;
\.


--
-- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_job_details (id, job_name, job_group, class_name, is_durable, is_stateful, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: qrtz_job_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_job_listeners (id, job, job_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_simple_triggers (id, trigger_id, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: qrtz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_trigger_listeners (id, trigger_id, trigger_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_triggers (id, trigger_name, trigger_group, job, next_fire, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr) FROM stdin;
\.


--
-- Data for Name: reindex_component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reindex_component (id, request_id, affected_index, entity_type) FROM stdin;
10100	10000	ISSUE	NONE
10101	10000	COMMENT	NONE
10102	10000	CHANGEHISTORY	NONE
10103	10000	WORKLOG	NONE
\.


--
-- Data for Name: reindex_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reindex_request (id, type, request_time, start_time, completion_time, status, execution_node_id, query) FROM stdin;
10000	IMMEDIATE	2020-07-09 08:48:09.243+00	2020-07-09 09:15:33.441+00	2020-07-09 09:15:35.077+00	COMPLETE	\N	\N
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.remembermetoken (id, created, token, username) FROM stdin;
10000	2020-07-09 09:56:32.603+00	eee496751f012e46225ceb1578888395d580ef77	JIRAUSER10000
10100	2020-07-09 10:00:10.64+00	10c85dc2ff504b334749701f33c5bfa27cf1a54f	JIRAUSER10000
\.


--
-- Data for Name: remotelink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.remotelink (id, issueid, globalid, title, summary, url, iconurl, icontitle, relationship, resolved, statusname, statusdescription, statusiconurl, statusicontitle, statusiconlink, statuscategorykey, statuscategorycolorname, applicationtype, applicationname) FROM stdin;
\.


--
-- Data for Name: replicatedindexoperation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.replicatedindexoperation (id, index_time, node_id, affected_index, entity_type, affected_ids, operation, filename) FROM stdin;
10000	2020-07-09 09:04:05.211+00	jira-node1	ALL	NONE		FULL_REINDEX_START	
10001	2020-07-09 09:04:06.878+00	jira-node1	ALL	NONE		FULL_REINDEX_END	IndexSnapshot_10000.tar.sz
10002	2020-07-09 09:14:02.185+00	jira-node1	ALL	NONE		FULL_REINDEX_START	
10003	2020-07-09 09:14:03.071+00	jira-node1	ALL	NONE		FULL_REINDEX_END	IndexSnapshot_10001.tar.sz
10004	2020-07-09 09:15:33.568+00	jira-node1	ALL	NONE		FULL_REINDEX_START	
10005	2020-07-09 09:15:34.461+00	jira-node1	ALL	NONE		FULL_REINDEX_END	IndexSnapshot_10002.tar.sz
10100	2020-07-09 09:20:46.2+00	jira-node1	SHAREDENTITY	SEARCH_REQUEST	10000	UPDATE	
10101	2020-07-09 09:20:46.438+00	jira-node1	SHAREDENTITY	SEARCH_REQUEST	10001	UPDATE	
10102	2020-07-09 09:20:46.582+00	jira-node1	SHAREDENTITY	SEARCH_REQUEST	10002	UPDATE	
10103	2020-07-09 09:21:39.501+00	jira-node1	ISSUE	NONE	10000	UPDATE_WITH_RELATED	
10104	2020-07-09 09:21:39.702+00	jira-node1	ISSUE	NONE	10000	UPDATE	
10105	2020-07-09 09:21:39.907+00	jira-node1	ISSUE	NONE	10000	UPDATE_WITH_RELATED	
10106	2020-07-09 09:23:45.976+00	jira-node1	ISSUE	NONE	10001	UPDATE_WITH_RELATED	
10107	2020-07-09 09:23:46.461+00	jira-node1	ISSUE	NONE	10001	UPDATE	
10108	2020-07-09 09:23:46.703+00	jira-node1	ISSUE	NONE	10001	UPDATE_WITH_RELATED	
10109	2020-07-09 09:23:59.504+00	jira-node1	ISSUE	NONE	10002	UPDATE_WITH_RELATED	
10110	2020-07-09 09:23:59.667+00	jira-node1	ISSUE	NONE	10002	UPDATE	
10111	2020-07-09 09:23:59.74+00	jira-node1	ISSUE	NONE	10002	UPDATE_WITH_RELATED	
10112	2020-07-09 09:25:43.552+00	jira-node1	ISSUE	NONE	10003	UPDATE_WITH_RELATED	
10113	2020-07-09 09:25:43.646+00	jira-node1	ISSUE	NONE	10003	UPDATE	
10114	2020-07-09 09:25:43.783+00	jira-node1	ISSUE	NONE	10003	UPDATE_WITH_RELATED	
10115	2020-07-09 09:45:02.351+00	jira-node1	ISSUE	NONE	10004	UPDATE_WITH_RELATED	
10116	2020-07-09 09:45:02.511+00	jira-node1	ISSUE	NONE	10004	UPDATE	
10117	2020-07-09 09:45:02.597+00	jira-node1	ISSUE	NONE	10004	UPDATE_WITH_RELATED	
10118	2020-07-09 09:47:21.348+00	jira-node1	ISSUE	NONE	10005	UPDATE_WITH_RELATED	
10119	2020-07-09 09:47:21.454+00	jira-node1	ISSUE	NONE	10005	UPDATE	
10120	2020-07-09 09:47:21.514+00	jira-node1	ISSUE	NONE	10005	UPDATE_WITH_RELATED	
10121	2020-07-09 09:50:02.613+00	jira-node1	ISSUE	NONE	10006	UPDATE_WITH_RELATED	
10122	2020-07-09 09:50:02.759+00	jira-node1	ISSUE	NONE	10006	UPDATE	
10123	2020-07-09 09:50:02.847+00	jira-node1	ISSUE	NONE	10006	UPDATE_WITH_RELATED	
10200	2020-07-09 10:19:41.66+00	jira-node2	ISSUE	NONE	10100	UPDATE_WITH_RELATED	
10201	2020-07-09 10:19:41.847+00	jira-node2	ISSUE	NONE	10100	UPDATE_WITH_RELATED	
10202	2020-07-09 10:19:42.7+00	jira-node2	ISSUE	NONE	10100	UPDATE	
10203	2020-07-09 11:13:33.756+00	jira-node2	ISSUE	NONE	10101	UPDATE_WITH_RELATED	
10204	2020-07-09 11:13:33.897+00	jira-node2	ISSUE	NONE	10101	UPDATE_WITH_RELATED	
10205	2020-07-09 11:13:34.135+00	jira-node2	ISSUE	NONE	10101	UPDATE	
10206	2020-07-09 11:18:00.122+00	jira-node2	ISSUE	NONE	10102	UPDATE_WITH_RELATED	
10207	2020-07-09 11:18:00.28+00	jira-node2	ISSUE	NONE	10102	UPDATE_WITH_RELATED	
10208	2020-07-09 11:18:00.489+00	jira-node2	ISSUE	NONE	10102	UPDATE	
10209	2020-07-09 11:19:58.251+00	jira-node2	ISSUE	NONE	10103	UPDATE_WITH_RELATED	
10210	2020-07-09 11:19:58.336+00	jira-node2	ISSUE	NONE	10103	UPDATE_WITH_RELATED	
10211	2020-07-09 11:19:58.456+00	jira-node2	ISSUE	NONE	10103	UPDATE	
10212	2020-07-09 11:20:34.287+00	jira-node2	ISSUE	NONE	10104	UPDATE_WITH_RELATED	
10213	2020-07-09 11:20:34.394+00	jira-node2	ISSUE	NONE	10104	UPDATE_WITH_RELATED	
10214	2020-07-09 11:20:34.584+00	jira-node2	ISSUE	NONE	10104	UPDATE	
10215	2020-07-09 11:20:46.222+00	jira-node2	ISSUE	NONE	10105	UPDATE_WITH_RELATED	
10216	2020-07-09 11:20:46.331+00	jira-node2	ISSUE	NONE	10105	UPDATE_WITH_RELATED	
10217	2020-07-09 11:20:46.435+00	jira-node2	ISSUE	NONE	10105	UPDATE	
10218	2020-07-09 11:24:37.823+00	jira-node2	ISSUE	NONE	10106	UPDATE_WITH_RELATED	
10219	2020-07-09 11:24:37.92+00	jira-node2	ISSUE	NONE	10106	UPDATE	
10220	2020-07-09 11:24:37.98+00	jira-node2	ISSUE	NONE	10106	UPDATE_WITH_RELATED	
10221	2020-07-09 11:24:48.104+00	jira-node2	ISSUE	NONE	10107	UPDATE_WITH_RELATED	
10222	2020-07-09 11:24:48.159+00	jira-node2	ISSUE	NONE	10107	UPDATE	
10223	2020-07-09 11:24:48.208+00	jira-node2	ISSUE	NONE	10107	UPDATE_WITH_RELATED	
10224	2020-07-09 11:24:54.08+00	jira-node2	ISSUE	NONE	10108	UPDATE_WITH_RELATED	
10225	2020-07-09 11:24:54.175+00	jira-node2	ISSUE	NONE	10108	UPDATE	
10226	2020-07-09 11:24:54.246+00	jira-node2	ISSUE	NONE	10108	UPDATE_WITH_RELATED	
10227	2020-07-09 11:25:05.003+00	jira-node2	ISSUE	NONE	10109	UPDATE_WITH_RELATED	
10228	2020-07-09 11:25:05.093+00	jira-node2	ISSUE	NONE	10109	UPDATE	
10229	2020-07-09 11:25:05.147+00	jira-node2	ISSUE	NONE	10109	UPDATE_WITH_RELATED	
10300	2020-07-09 11:26:14.923+00	jira-node1	ISSUE	NONE	10200	UPDATE_WITH_RELATED	
10301	2020-07-09 11:26:15.47+00	jira-node1	ISSUE	NONE	10200	UPDATE	
10302	2020-07-09 11:26:15.634+00	jira-node1	ISSUE	NONE	10200	UPDATE_WITH_RELATED	
10303	2020-07-09 11:29:15.632+00	jira-node1	ISSUE	NONE	10201	UPDATE_WITH_RELATED	
10304	2020-07-09 11:29:15.707+00	jira-node1	ISSUE	NONE	10201	UPDATE	
10305	2020-07-09 11:29:15.762+00	jira-node1	ISSUE	NONE	10201	UPDATE_WITH_RELATED	
10306	2020-07-09 11:33:03.494+00	jira-node1	ISSUE	NONE	10202	UPDATE_WITH_RELATED	
10307	2020-07-09 11:33:03.594+00	jira-node1	ISSUE	NONE	10202	UPDATE	
10308	2020-07-09 11:33:03.722+00	jira-node1	ISSUE	NONE	10202	UPDATE_WITH_RELATED	
10309	2020-07-09 11:38:33.163+00	jira-node1	ISSUE	NONE	10203	UPDATE_WITH_RELATED	
10310	2020-07-09 11:38:33.249+00	jira-node1	ISSUE	NONE	10203	UPDATE	
10311	2020-07-09 11:38:33.34+00	jira-node1	ISSUE	NONE	10203	UPDATE_WITH_RELATED	
10312	2020-07-09 11:41:07.968+00	jira-node1	ISSUE	NONE	10204	UPDATE_WITH_RELATED	
10313	2020-07-09 11:41:08.033+00	jira-node1	ISSUE	NONE	10204	UPDATE	
10314	2020-07-09 11:41:08.087+00	jira-node1	ISSUE	NONE	10204	UPDATE_WITH_RELATED	
10315	2020-07-09 11:41:47.611+00	jira-node1	ISSUE	NONE	10204	DELETE	
10316	2020-07-09 11:44:53.044+00	jira-node1	ISSUE	NONE	10205	UPDATE_WITH_RELATED	
10317	2020-07-09 11:44:53.129+00	jira-node1	ISSUE	NONE	10205	UPDATE	
10318	2020-07-09 11:44:53.178+00	jira-node1	ISSUE	NONE	10205	UPDATE_WITH_RELATED	
10400	2020-07-09 15:22:11.81+00	jira-node2	ISSUE	NONE	10300	UPDATE_WITH_RELATED	
10401	2020-07-09 15:22:12.097+00	jira-node2	ISSUE	NONE	10300	UPDATE_WITH_RELATED	
10402	2020-07-09 15:22:12.47+00	jira-node2	ISSUE	NONE	10300	UPDATE	
\.


--
-- Data for Name: resolution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resolution (id, sequence, pname, description, iconurl) FROM stdin;
10000	1	Done	Work has been completed on this issue.	\N
10001	2	Won't Do	This issue won't be actioned.	\N
10002	3	Duplicate	The problem is a duplicate of an existing issue.	\N
\.


--
-- Data for Name: rundetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rundetails (id, job_id, start_time, run_duration, run_outcome, info_message) FROM stdin;
12703	JiraPluginScheduler:com.atlassian.troubleshooting.healthcheck.scheduler.HealthCheckSchedulerImpl:job	2020-07-09 15:00:19.116+00	6716	S	
10002	com.atlassian.jira.service.JiraService:10200	2020-07-09 08:48:10.366+00	87	S	
10001	com.atlassian.jira.service.JiraService:10201	2020-07-09 08:48:10.391+00	64	S	
12433	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	2020-07-09 13:51:46.052+00	441	S	Removed 0 temporary attachments
12832	com.atlassian.jira.service.JiraService:10000	2020-07-09 15:23:00+00	1	S	
12705	00357cbf-fa50-43e7-ae41-b33b82ec5d50	2020-07-09 14:59:22.167+00	92277	S	
12436	JiraPluginScheduler:com.atlassian.jira.plugins.workflow.sharing.file.FileCleaningJob	2020-07-09 13:52:03.387+00	207	S	
12706	com.atlassian.troubleshooting.jira.scheduler.CustomisationsCheckScheduler:job	2020-07-09 14:59:21.889+00	94453	S	
12833	com.atlassian.jira.service.JiraService:10202	2020-07-09 15:23:00.002+00	26	S	
10908	da9eae8f-fa2b-43e3-a6ee-2358ae695146	2020-07-09 10:11:27.752+00	161390	S	
12834	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl.mentions	2020-07-09 15:23:17.093+00	53	S	
10505	f0d85ec0-4c61-4097-b0bf-90687fe4f7c2	2020-07-09 09:51:49.887+00	108	S	
10910	c119616d-74ae-41ad-946b-082565670db6	2020-07-09 10:14:27.307+00	1735	S	
12709	com.atlassian.jira.apdex.impl.SendAnalyticsJobRunner	2020-07-09 15:01:00+00	593	S	
12835	com.atlassian.troubleshooting.jira.healthcheck.scheduler.impl.HeartbeatSchedulerImpl id=healthCheckScheduler	2020-07-09 15:23:21.641+00	4	S	
10824	05809696-cd53-44ee-954a-78878df9e7ac	2020-07-09 10:14:54.424+00	2824	S	
12442	com.atlassian.whisper.plugin.fetch.FetchJob	2020-07-09 13:52:03.456+00	3329	S	
11604	e6c17c4b-6fa0-4a32-8261-0971a62f8ad3	2020-07-09 11:35:42.139+00	97	S	
12836	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	2020-07-09 15:23:45.232+00	95	S	
10826	d5aa9846-40bd-4e85-bc50-e06b412499be	2020-07-09 10:11:55.19+00	190302	S	
12717	99c2e7a2-d813-4be9-b4eb-644d5317f729	2020-07-09 15:02:21.888+00	1527	S	
10102	c535d054-3dd8-49b1-831c-d14b7df5458b	2020-07-09 09:13:33.398+00	30	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
11703	03196948-423d-4a66-a941-dc48f7b64294	2020-07-09 11:35:42.251+00	72400	S	
10108	com.atlassian.jira.service.JiraService:10001	2020-07-09 09:14:03.445+00	12755	S	
11305	d0de34c3-6584-4e37-9f15-e89d351505a0	2020-07-09 11:20:24.596+00	190	S	
10608	19769d0a-8597-4c31-bd63-4ed894a0ad54	2020-07-09 09:51:49.928+00	163085	S	
10203	LocalPluginLicenseNotificationJob-job	2020-07-09 09:15:36.262+00	2941	S	
10426	79e6c661-f262-4cf9-bc00-6ca479d141fb	2020-07-09 09:54:49.55+00	9	U	Job runner key 'com.atlassian.jira.startup.AnalyticsLauncher.Start' is not registered
10706	d2d27c10-7cde-4eae-9fb3-9a7f891cc94f	2020-07-09 10:11:27.717+00	379	S	
12007	7f84b3d9-e975-469c-ace0-79a84fdc7fed	2020-07-09 12:52:05.846+00	71	S	
10805	44f14645-b064-4a72-a275-ea7a9d54d8e8	2020-07-09 10:11:55.025+00	565	S	
10806	com.atlassian.jira.cache.monitor.CacheStatisticsMonitor	2020-07-09 10:11:54.082+00	1861	S	
12810	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	2020-07-09 15:19:00.001+00	107	S	
12811	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	2020-07-09 15:19:17.038+00	50	S	
12012	f72d226c-ed51-4686-8361-45ec56473088	2020-07-09 12:52:05.863+00	49301	S	
11710	e0ce1710-b943-4d9d-906e-4861beed9138	2020-07-09 11:38:42.028+00	1186	S	
12814	com.atlassian.jira.cache.EhCacheCompactor	2020-07-09 15:19:21.668+00	2	S	Purged 0 expired entries from a total of 22 entries in 19 caches.
12815	CaesiumSchedulerService.RefreshJob	2020-07-09 15:19:21.822+00	5	S	
11405	e66095e1-ef8f-4b17-a4e9-d59b285a906a	2020-07-09 11:20:24.632+00	96065	S	
12600	com.atlassian.jira.user.UserHistoryDatabaseCompactor	2020-07-09 14:59:21.647+00	6	S	
12603	BundledUpdateCheckJob-job	2020-07-09 14:59:21.824+00	30	S	
12604	applink-status-analytics-job	2020-07-09 14:59:21.825+00	93	S	
12606	02d74c8b-951d-4488-a12c-97a26a1192f5	2020-07-09 14:59:22.126+00	69	S	
12607	PluginRequestCheckJob-job	2020-07-09 14:59:21.823+00	401	S	
12608	JiraPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2020-07-09 14:59:29.52+00	5955	S	
12609	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	2020-07-09 14:59:43.569+00	204	S	
11511	91d8fc9a-3ba3-4ce5-a976-4b93007dbc30	2020-07-09 11:23:24.104+00	25601	S	
12427	assertionId-cleanup	2020-07-09 13:50:42.634+00	17	S	
12114	a9468cda-97a2-4a8d-9cf0-1ebc946d3399	2020-07-09 12:55:05.633+00	1406	S	
12611	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	2020-07-09 14:59:47.645+00	19	S	
12700	com.atlassian.jira.upgrade.UpgradeService	2020-07-09 15:00:15.365+00	3621	S	
\.


--
-- Data for Name: schemeissuesecurities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schemeissuesecurities (id, scheme, security, sec_type, sec_parameter) FROM stdin;
\.


--
-- Data for Name: schemeissuesecuritylevels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schemeissuesecuritylevels (id, name, description, scheme) FROM stdin;
\.


--
-- Data for Name: schemepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schemepermissions (id, scheme, permission, perm_type, perm_parameter, permission_key) FROM stdin;
10025	0	32	projectrole	10002	MANAGE_WATCHERS
10026	0	34	projectrole	10002	EDIT_ALL_COMMENTS
10027	0	35	applicationRole		EDIT_OWN_COMMENTS
10028	0	36	projectrole	10002	DELETE_ALL_COMMENTS
10029	0	37	applicationRole		DELETE_OWN_COMMENTS
10030	0	38	projectrole	10002	DELETE_ALL_ATTACHMENTS
10031	0	39	applicationRole		DELETE_OWN_ATTACHMENTS
10033	0	29	applicationRole		VIEW_DEV_TOOLS
10101	\N	44	group	jira-administrators	\N
10200	0	45	applicationRole		VIEW_READONLY_WORKFLOW
10300	0	46	applicationRole		TRANSITION_ISSUES
10000	\N	0	group	jira-administrators	\N
10004	0	23	projectrole	10002	ADMINISTER_PROJECTS
10005	0	10	applicationRole		BROWSE_PROJECTS
10006	0	11	applicationRole		CREATE_ISSUES
10007	0	15	applicationRole		ADD_COMMENTS
10008	0	19	applicationRole		CREATE_ATTACHMENTS
10009	0	13	applicationRole		ASSIGN_ISSUES
10010	0	17	applicationRole		ASSIGNABLE_USER
10011	0	14	applicationRole		RESOLVE_ISSUES
10012	0	21	applicationRole		LINK_ISSUES
10013	0	12	applicationRole		EDIT_ISSUES
10014	0	16	projectrole	10002	DELETE_ISSUES
10015	0	18	applicationRole		CLOSE_ISSUES
10016	0	25	applicationRole		MOVE_ISSUES
10017	0	28	applicationRole		SCHEDULE_ISSUES
10018	0	30	projectrole	10002	MODIFY_REPORTER
10019	0	20	applicationRole		WORK_ON_ISSUES
10020	0	43	projectrole	10002	DELETE_ALL_WORKLOGS
10021	0	42	applicationRole		DELETE_OWN_WORKLOGS
10022	0	41	projectrole	10002	EDIT_ALL_WORKLOGS
10023	0	40	applicationRole		EDIT_OWN_WORKLOGS
10024	0	31	applicationRole		VIEW_VOTERS_AND_WATCHERS
\.


--
-- Data for Name: searchrequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.searchrequest (id, filtername, authorname, description, username, groupname, projectid, reqcontent, fav_count, filtername_lower) FROM stdin;
10000	Open and unassigned (TEST)	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = 10000 and statusCategory != Done and assignee = EMPTY ORDER BY priority desc	0	open and unassigned (test)
10001	Due this week (TEST)	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = 10000 and duedate >= startOfWeek() and duedate <= endOfWeek() ORDER BY priority desc	0	due this week (test)
10002	Overdue (TEST)	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = 10000 and statusCategory != Done and duedate < now() ORDER BY duedate desc	0	overdue (test)
\.


--
-- Data for Name: sequence_value_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sequence_value_item (seq_name, seq_id) FROM stdin;
ApplicationUser	10100
User	10100
Membership	10100
LicenseRoleDefault	10100
ReindexComponent	10200
TaskIdSequence	10100
UserAttribute	10300
FieldLayoutItem	10200
RememberMeToken	10200
EventType	10000
FieldLayout	10100
GadgetUserPreference	10100
IssueLinkType	10200
NotificationScheme	10100
PortalPage	10100
PortletConfiguration	10100
Priority	10000
ProjectRole	10100
SchemePermissions	10400
OSPropertyEntry	10800
UpgradeTaskHistory	10100
Feature	10200
UpgradeTaskHistoryAuditLog	10100
Project	10100
ServiceConfig	10300
ProjectKey	10100
PluginVersion	10300
UpgradeHistory	10200
ClusteredJob	11000
ClusterMessage	11300
ReindexRequest	10100
ClusterLockStatus	11600
Avatar	10600
Notification	10300
UpgradeVersionHistory	10100
ProjectRoleActor	10200
IssueType	10100
RunDetails	12900
OSWorkflowEntry	10400
OSCurrentStep	10400
Issue	10400
ReplicatedIndexOperation	10500
UserHistoryItem	10400
ProductLicense	10100
Group	10110
LicenseRoleGroup	10100
GlobalPermissionEntry	10200
FieldConfiguration	10300
FieldConfigScheme	10300
FieldConfigSchemeIssueType	10400
OptionConfiguration	10400
ConfigurationContext	10300
GenericConfiguration	10200
Status	10100
Workflow	10200
AuditLog	10200
AuditChangedValue	10200
WorkflowScheme	10200
WorkflowSchemeEntity	10200
AuditItem	10200
FieldScreen	10100
FieldScreenTab	10200
FieldScreenLayoutItem	10300
FieldScreenScheme	10100
FieldScreenSchemeItem	10200
IssueTypeScreenScheme	10100
IssueTypeScreenSchemeEntity	10200
Resolution	10100
DraftWorkflow	10100
SearchRequest	10100
SharePermissions	10200
EntityProperty	10100
OAuthConsumer	10200
IndexBackupSequence	10300
ListenerConfig	10500
NodeIndexCounter	10400
FileAttachment	10100
\.


--
-- Data for Name: serviceconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.serviceconfig (id, delaytime, clazz, servicename, cron_expression) FROM stdin;
10000	60000	com.atlassian.jira.service.services.mail.MailQueueService	Mail Queue Service	0 * * * * ?
10002	86400000	com.atlassian.jira.service.services.auditing.AuditLogCleaningService	Audit log cleaning service	0 0 0 * * ?
10200	43200000	com.atlassian.jira.service.services.index.ReplicatedIndexCleaningService	Replicated index flush service	0 45 8/12 * * ?
10201	43200000	com.atlassian.jira.service.services.cluster.ClusterMessageCleaningService	Cluster messaging flush service	0 45 8/12 * * ?
10202	60000	com.atlassian.jira.service.services.cluster.NodeStateCheckerService	Cluster node state check service	0 * * * * ?
10001	43200000	com.atlassian.jira.service.services.export.ExportService	Backup Service	0 10 9/12 * * ?
\.


--
-- Data for Name: sharepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sharepermissions (id, entityid, entitytype, sharetype, param1, param2, rights) FROM stdin;
10000	10000	PortalPage	global	\N	\N	1
10100	10000	SearchRequest	project	10000	\N	1
10101	10001	SearchRequest	project	10000	\N	1
10102	10002	SearchRequest	project	10000	\N	1
\.


--
-- Data for Name: tempattachmentsmonitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tempattachmentsmonitor (temporary_attachment_id, form_token, file_name, content_type, file_size, created_time) FROM stdin;
\.


--
-- Data for Name: trackback_ping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trackback_ping (id, issue, url, title, blogname, excerpt, created) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trustedapp (id, application_id, name, public_key, ip_match, url_match, timeout, created, created_by, updated, updated_by) FROM stdin;
\.


--
-- Data for Name: upgradehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradehistory (id, upgradeclass, targetbuild, status, downgradetaskrequired) FROM stdin;
10000	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100	70100	complete	Y
10100	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101	70101	complete	N
10101	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102	70102	complete	N
10102	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001	71001	complete	N
10103	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72001	72001	complete	N
10104	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72002	72002	complete	N
10105	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build73002	73002	complete	N
\.


--
-- Data for Name: upgradetaskhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradetaskhistory (id, upgrade_task_factory_key, build_number, status, upgrade_type) FROM stdin;
10000	com.atlassian.jira.plugins.inform.batching-plugin	1	COMPLETED	SERVER
10007	host	73010	COMPLETED	SERVER
10008	host	73011	COMPLETED	SERVER
10009	host	74002	COMPLETED	SERVER
10010	host	75002	COMPLETED	SERVER
10011	host	75003	COMPLETED	SERVER
10012	host	75004	COMPLETED	SERVER
10013	host	75005	COMPLETED	SERVER
10014	host	76001	COMPLETED	SERVER
10015	host	77001	COMPLETED	SERVER
10016	host	710001	COMPLETED	SERVER
10017	host	711001	COMPLETED	SERVER
10018	host	712001	COMPLETED	SERVER
10019	host	800000	COMPLETED	SERVER
10020	host	800003	COMPLETED	SERVER
10021	host	800004	COMPLETED	SERVER
10022	host	800005	COMPLETED	SERVER
10023	host	800006	COMPLETED	SERVER
10024	host	800007	COMPLETED	SERVER
10025	host	800009	COMPLETED	SERVER
10026	host	801000	COMPLETED	SERVER
10027	host	804000	COMPLETED	SERVER
\.


--
-- Data for Name: upgradetaskhistoryauditlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradetaskhistoryauditlog (id, upgrade_task_factory_key, build_number, status, upgrade_type, timeperformed, action) FROM stdin;
10000	com.atlassian.jira.plugins.inform.batching-plugin	1	COMPLETED	SERVER	2020-07-09 08:47:53.688+00	upgrade
10001	host	70101	COMPLETED	SERVER	2020-07-09 08:48:07.991+00	upgrade
10002	host	70102	COMPLETED	SERVER	2020-07-09 08:48:08.068+00	upgrade
10003	host	71001	COMPLETED	SERVER	2020-07-09 08:48:08.114+00	upgrade
10004	host	72001	COMPLETED	SERVER	2020-07-09 08:48:08.146+00	upgrade
10005	host	72002	COMPLETED	SERVER	2020-07-09 08:48:08.294+00	upgrade
10006	host	73002	COMPLETED	SERVER	2020-07-09 08:48:08.323+00	upgrade
10007	host	73010	COMPLETED	SERVER	2020-07-09 08:48:08.4+00	upgrade
10008	host	73011	COMPLETED	SERVER	2020-07-09 08:48:08.425+00	upgrade
10009	host	74002	COMPLETED	SERVER	2020-07-09 08:48:08.489+00	upgrade
10010	host	75002	COMPLETED	SERVER	2020-07-09 08:48:08.524+00	upgrade
10011	host	75003	COMPLETED	SERVER	2020-07-09 08:48:08.55+00	upgrade
10012	host	75004	COMPLETED	SERVER	2020-07-09 08:48:08.601+00	upgrade
10013	host	75005	COMPLETED	SERVER	2020-07-09 08:48:08.642+00	upgrade
10014	host	76001	COMPLETED	SERVER	2020-07-09 08:48:08.813+00	upgrade
10015	host	77001	COMPLETED	SERVER	2020-07-09 08:48:08.875+00	upgrade
10016	host	710001	COMPLETED	SERVER	2020-07-09 08:48:09.021+00	upgrade
10017	host	711001	COMPLETED	SERVER	2020-07-09 08:48:09.09+00	upgrade
10018	host	712001	COMPLETED	SERVER	2020-07-09 08:48:09.122+00	upgrade
10019	host	800000	COMPLETED	SERVER	2020-07-09 08:48:09.142+00	upgrade
10020	host	800003	COMPLETED	SERVER	2020-07-09 08:48:09.23+00	upgrade
10021	host	800004	COMPLETED	SERVER	2020-07-09 08:48:09.318+00	upgrade
10022	host	800005	COMPLETED	SERVER	2020-07-09 08:48:09.391+00	upgrade
10023	host	800006	COMPLETED	SERVER	2020-07-09 08:48:09.447+00	upgrade
10024	host	800007	COMPLETED	SERVER	2020-07-09 08:48:09.489+00	upgrade
10025	host	800009	COMPLETED	SERVER	2020-07-09 08:48:09.571+00	upgrade
10026	host	801000	COMPLETED	SERVER	2020-07-09 08:48:09.739+00	upgrade
10027	host	804000	COMPLETED	SERVER	2020-07-09 08:48:09.768+00	upgrade
\.


--
-- Data for Name: upgradeversionhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradeversionhistory (id, timeperformed, targetbuild, targetversion) FROM stdin;
10000	2020-07-09 08:48:09.814+00	804000	8.4.0
\.


--
-- Data for Name: userassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userassociation (source_name, sink_node_id, sink_node_entity, association_type, sequence, created) FROM stdin;
JIRAUSER10000	10000	Issue	WatchIssue	\N	2020-07-09 09:21:39.575+00
JIRAUSER10000	10001	Issue	WatchIssue	\N	2020-07-09 09:23:46.085+00
JIRAUSER10000	10002	Issue	WatchIssue	\N	2020-07-09 09:23:59.538+00
JIRAUSER10000	10003	Issue	WatchIssue	\N	2020-07-09 09:25:43.577+00
JIRAUSER10000	10004	Issue	WatchIssue	\N	2020-07-09 09:45:02.409+00
JIRAUSER10000	10005	Issue	WatchIssue	\N	2020-07-09 09:47:21.368+00
JIRAUSER10000	10006	Issue	WatchIssue	\N	2020-07-09 09:50:02.63+00
JIRAUSER10000	10100	Issue	WatchIssue	\N	2020-07-09 10:19:41.945+00
JIRAUSER10000	10101	Issue	WatchIssue	\N	2020-07-09 11:13:33.926+00
JIRAUSER10000	10102	Issue	WatchIssue	\N	2020-07-09 11:18:00.295+00
JIRAUSER10000	10103	Issue	WatchIssue	\N	2020-07-09 11:19:58.367+00
JIRAUSER10000	10104	Issue	WatchIssue	\N	2020-07-09 11:20:34.42+00
JIRAUSER10000	10105	Issue	WatchIssue	\N	2020-07-09 11:20:46.354+00
JIRAUSER10000	10106	Issue	WatchIssue	\N	2020-07-09 11:24:37.846+00
JIRAUSER10000	10107	Issue	WatchIssue	\N	2020-07-09 11:24:48.116+00
JIRAUSER10000	10108	Issue	WatchIssue	\N	2020-07-09 11:24:54.099+00
JIRAUSER10000	10109	Issue	WatchIssue	\N	2020-07-09 11:25:05.024+00
JIRAUSER10000	10200	Issue	WatchIssue	\N	2020-07-09 11:26:14.984+00
JIRAUSER10000	10201	Issue	WatchIssue	\N	2020-07-09 11:29:15.653+00
JIRAUSER10000	10202	Issue	WatchIssue	\N	2020-07-09 11:33:03.514+00
JIRAUSER10000	10203	Issue	WatchIssue	\N	2020-07-09 11:38:33.175+00
JIRAUSER10000	10205	Issue	WatchIssue	\N	2020-07-09 11:44:53.06+00
JIRAUSER10000	10300	Issue	WatchIssue	\N	2020-07-09 15:22:12.15+00
\.


--
-- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userbase (id, username, password_hash) FROM stdin;
\.


--
-- Data for Name: userhistoryitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userhistoryitem (id, entitytype, entityid, username, lastviewed, data) FROM stdin;
10001	Issue	10000	JIRAUSER10000	1594286568077	\N
10102	Issue	10102	JIRAUSER10000	1594293480889	\N
10003	Issue	10001	JIRAUSER10000	1594286627286	\N
10004	Issue	10002	JIRAUSER10000	1594286639838	\N
10103	Issue	10103	JIRAUSER10000	1594293598684	\N
10005	Issue	10003	JIRAUSER10000	1594286763545	\N
10104	Issue	10104	JIRAUSER10000	1594293634842	\N
10006	Issue	10004	JIRAUSER10000	1594287917037	\N
10007	Issue	10005	JIRAUSER10000	1594288041629	\N
10105	Issue	10105	JIRAUSER10000	1594293646652	\N
10008	Issue	10006	JIRAUSER10000	1594288232971	\N
10106	Issue	10106	JIRAUSER10000	1594293878099	\N
10107	Issue	10107	JIRAUSER10000	1594293888290	\N
10108	Issue	10108	JIRAUSER10000	1594293894429	\N
10109	Issue	10109	JIRAUSER10000	1594293905232	\N
10200	Issue	10200	JIRAUSER10000	1594293976093	\N
10201	Issue	10201	JIRAUSER10000	1594294155872	\N
10100	Issue	10100	JIRAUSER10000	1594289985047	\N
10202	Issue	10202	JIRAUSER10000	1594294383912	\N
10101	Issue	10101	JIRAUSER10000	1594293214375	\N
10204	Issue	10204	JIRAUSER10000	1594294906703	\N
10203	Issue	10203	JIRAUSER10000	1594295070438	\N
10205	Issue	10205	JIRAUSER10000	1594295115559	\N
10002	Dashboard	10000	JIRAUSER10000	1594308085292	\N
10300	Issue	10300	JIRAUSER10000	1594308133059	\N
10000	Project	10000	JIRAUSER10000	1594308133291	\N
\.


--
-- Data for Name: userpickerfilter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userpickerfilter (id, customfield, customfieldconfig, enabled) FROM stdin;
\.


--
-- Data for Name: userpickerfiltergroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userpickerfiltergroup (id, userpickerfilter, groupname) FROM stdin;
\.


--
-- Data for Name: userpickerfilterrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userpickerfilterrole (id, userpickerfilter, projectroleid) FROM stdin;
\.


--
-- Data for Name: versioncontrol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versioncontrol (id, vcsname, vcsdescription, vcstype) FROM stdin;
\.


--
-- Data for Name: votehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.votehistory (id, issueid, votes, "timestamp") FROM stdin;
\.


--
-- Data for Name: workflowscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflowscheme (id, name, description) FROM stdin;
10000	classic	classic
10100	TEST: Project Management Workflow Scheme	
\.


--
-- Data for Name: workflowschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
10000	10000	classic default workflow	0
10100	10100	TEST: Project Management Workflow	0
\.


--
-- Data for Name: worklog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worklog (id, issueid, author, grouplevel, rolelevel, worklogbody, created, updateauthor, updated, startdate, timeworked) FROM stdin;
\.


--
-- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"', 1, false);


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_21D670_WHITELIST_RULES_ID_seq"', 2, true);


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"', 1, false);


--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"', 1, false);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_3B1893_LOOP_DETECTION_ID_seq"', 1, false);


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"', 10, true);


--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_PROPERTIES_ID_seq"', 1, true);


--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"', 10, true);


--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_TASK_MONITOR_ID_seq"', 1, false);


--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"', 1, false);


--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_550953_SHORTCUT_ID_seq"', 2, true);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_587B34_PROJECT_CONFIG_ID_seq"', 1, false);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);


--
-- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_733371_EVENT_ID_seq"', 25, true);


--
-- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_733371_EVENT_PARAMETER_ID_seq"', 519, true);


--
-- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_733371_EVENT_RECIPIENT_ID_seq"', 1, false);


--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_97EDAB_USERINVITATION_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"', 1, true);


--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_C16815_ALERT_AO_ID_seq"', 5, true);


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"', 1, false);


--
-- Name: AO_0A5972_NOTIFICATION_SETTING AO_0A5972_NOTIFICATION_SETTING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_0A5972_NOTIFICATION_SETTING"
    ADD CONSTRAINT "AO_0A5972_NOTIFICATION_SETTING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_0A5972_PUSH_REGISTRATION AO_0A5972_PUSH_REGISTRATION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_0A5972_PUSH_REGISTRATION"
    ADD CONSTRAINT "AO_0A5972_PUSH_REGISTRATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_0AC321_RECOMMENDATION_AO AO_0AC321_RECOMMENDATION_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_0AC321_RECOMMENDATION_AO"
    ADD CONSTRAINT "AO_0AC321_RECOMMENDATION_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21D670_WHITELIST_RULES AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_AO AO_21F425_MESSAGE_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO AO_21F425_MESSAGE_MAPPING_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_MAPPING_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_USER_PROPERTY_AO AO_21F425_USER_PROPERTY_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO"
    ADD CONSTRAINT "AO_21F425_USER_PROPERTY_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_3B1893_LOOP_DETECTION AO_3B1893_LOOP_DETECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION"
    ADD CONSTRAINT "AO_3B1893_LOOP_DETECTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS AO_4789DD_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_4789DD_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_PROPERTIES AO_4789DD_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_PROPERTIES"
    ADD CONSTRAINT "AO_4789DD_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_READ_NOTIFICATIONS AO_4789DD_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_4789DD_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_TASK_MONITOR AO_4789DD_TASK_MONITOR_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT "AO_4789DD_TASK_MONITOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4AEACD_WEBHOOK_DAO AO_4AEACD_WEBHOOK_DAO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO"
    ADD CONSTRAINT "AO_4AEACD_WEBHOOK_DAO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_550953_SHORTCUT AO_550953_SHORTCUT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_550953_SHORTCUT"
    ADD CONSTRAINT "AO_550953_SHORTCUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_587B34_GLANCE_CONFIG AO_587B34_GLANCE_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_GLANCE_CONFIG"
    ADD CONSTRAINT "AO_587B34_GLANCE_CONFIG_pkey" PRIMARY KEY ("ROOM_ID");


--
-- Name: AO_587B34_PROJECT_CONFIG AO_587B34_PROJECT_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT "AO_587B34_PROJECT_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_733371_EVENT_PARAMETER AO_733371_EVENT_PARAMETER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
    ADD CONSTRAINT "AO_733371_EVENT_PARAMETER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_733371_EVENT_RECIPIENT AO_733371_EVENT_RECIPIENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
    ADD CONSTRAINT "AO_733371_EVENT_RECIPIENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_733371_EVENT AO_733371_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT"
    ADD CONSTRAINT "AO_733371_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_97EDAB_USERINVITATION AO_97EDAB_USERINVITATION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION"
    ADD CONSTRAINT "AO_97EDAB_USERINVITATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE AO_B9A0F0_APPLIED_TEMPLATE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE"
    ADD CONSTRAINT "AO_B9A0F0_APPLIED_TEMPLATE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C16815_ALERT_AO AO_C16815_ALERT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_C16815_ALERT_AO"
    ADD CONSTRAINT "AO_C16815_ALERT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS AO_ED669C_SEEN_ASSERTIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT "AO_ED669C_SEEN_ASSERTIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: app_user pk_app_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT pk_app_user PRIMARY KEY (id);


--
-- Name: audit_changed_value pk_audit_changed_value; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_changed_value
    ADD CONSTRAINT pk_audit_changed_value PRIMARY KEY (id);


--
-- Name: audit_item pk_audit_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_item
    ADD CONSTRAINT pk_audit_item PRIMARY KEY (id);


--
-- Name: audit_log pk_audit_log; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT pk_audit_log PRIMARY KEY (id);


--
-- Name: avatar pk_avatar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avatar
    ADD CONSTRAINT pk_avatar PRIMARY KEY (id);


--
-- Name: board pk_board; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.board
    ADD CONSTRAINT pk_board PRIMARY KEY (id);


--
-- Name: boardproject pk_boardproject; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boardproject
    ADD CONSTRAINT pk_boardproject PRIMARY KEY (board_id, project_id);


--
-- Name: changegroup pk_changegroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changegroup
    ADD CONSTRAINT pk_changegroup PRIMARY KEY (id);


--
-- Name: changeitem pk_changeitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changeitem
    ADD CONSTRAINT pk_changeitem PRIMARY KEY (id);


--
-- Name: clusteredjob pk_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusteredjob
    ADD CONSTRAINT pk_clusteredjob PRIMARY KEY (id);


--
-- Name: clusterlockstatus pk_clusterlockstatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusterlockstatus
    ADD CONSTRAINT pk_clusterlockstatus PRIMARY KEY (id);


--
-- Name: clustermessage pk_clustermessage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clustermessage
    ADD CONSTRAINT pk_clustermessage PRIMARY KEY (id);


--
-- Name: clusternode pk_clusternode; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusternode
    ADD CONSTRAINT pk_clusternode PRIMARY KEY (node_id);


--
-- Name: clusternodeheartbeat pk_clusternodeheartbeat; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusternodeheartbeat
    ADD CONSTRAINT pk_clusternodeheartbeat PRIMARY KEY (node_id);


--
-- Name: clusterupgradestate pk_clusterupgradestate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusterupgradestate
    ADD CONSTRAINT pk_clusterupgradestate PRIMARY KEY (id);


--
-- Name: columnlayout pk_columnlayout; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.columnlayout
    ADD CONSTRAINT pk_columnlayout PRIMARY KEY (id);


--
-- Name: columnlayoutitem pk_columnlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.columnlayoutitem
    ADD CONSTRAINT pk_columnlayoutitem PRIMARY KEY (id);


--
-- Name: component pk_component; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT pk_component PRIMARY KEY (id);


--
-- Name: configurationcontext pk_configurationcontext; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurationcontext
    ADD CONSTRAINT pk_configurationcontext PRIMARY KEY (id);


--
-- Name: customfield pk_customfield; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customfield
    ADD CONSTRAINT pk_customfield PRIMARY KEY (id);


--
-- Name: customfieldoption pk_customfieldoption; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customfieldoption
    ADD CONSTRAINT pk_customfieldoption PRIMARY KEY (id);


--
-- Name: customfieldvalue pk_customfieldvalue; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customfieldvalue
    ADD CONSTRAINT pk_customfieldvalue PRIMARY KEY (id);


--
-- Name: cwd_application pk_cwd_application; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT pk_cwd_application PRIMARY KEY (id);


--
-- Name: cwd_application_address pk_cwd_application_address; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT pk_cwd_application_address PRIMARY KEY (application_id, remote_address);


--
-- Name: cwd_directory pk_cwd_directory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT pk_cwd_directory PRIMARY KEY (id);


--
-- Name: cwd_directory_attribute pk_cwd_directory_attribute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT pk_cwd_directory_attribute PRIMARY KEY (directory_id, attribute_name);


--
-- Name: cwd_directory_operation pk_cwd_directory_operation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT pk_cwd_directory_operation PRIMARY KEY (directory_id, operation_type);


--
-- Name: cwd_group pk_cwd_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT pk_cwd_group PRIMARY KEY (id);


--
-- Name: cwd_group_attributes pk_cwd_group_attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_attributes
    ADD CONSTRAINT pk_cwd_group_attributes PRIMARY KEY (id);


--
-- Name: cwd_membership pk_cwd_membership; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT pk_cwd_membership PRIMARY KEY (id);


--
-- Name: cwd_user pk_cwd_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT pk_cwd_user PRIMARY KEY (id);


--
-- Name: cwd_user_attributes pk_cwd_user_attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_attributes
    ADD CONSTRAINT pk_cwd_user_attributes PRIMARY KEY (id);


--
-- Name: deadletter pk_deadletter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deadletter
    ADD CONSTRAINT pk_deadletter PRIMARY KEY (id);


--
-- Name: draftworkflowscheme pk_draftworkflowscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.draftworkflowscheme
    ADD CONSTRAINT pk_draftworkflowscheme PRIMARY KEY (id);


--
-- Name: draftworkflowschemeentity pk_draftworkflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.draftworkflowschemeentity
    ADD CONSTRAINT pk_draftworkflowschemeentity PRIMARY KEY (id);


--
-- Name: entity_property pk_entity_property; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_property
    ADD CONSTRAINT pk_entity_property PRIMARY KEY (id);


--
-- Name: entity_property_index_document pk_entity_property_index_docum; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_property_index_document
    ADD CONSTRAINT pk_entity_property_index_docum PRIMARY KEY (id);


--
-- Name: entity_translation pk_entity_translation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_translation
    ADD CONSTRAINT pk_entity_translation PRIMARY KEY (id);


--
-- Name: external_entities pk_external_entities; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_entities
    ADD CONSTRAINT pk_external_entities PRIMARY KEY (id);


--
-- Name: externalgadget pk_externalgadget; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.externalgadget
    ADD CONSTRAINT pk_externalgadget PRIMARY KEY (id);


--
-- Name: favouriteassociations pk_favouriteassociations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favouriteassociations
    ADD CONSTRAINT pk_favouriteassociations PRIMARY KEY (id);


--
-- Name: feature pk_feature; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feature
    ADD CONSTRAINT pk_feature PRIMARY KEY (id);


--
-- Name: fieldconfigscheme pk_fieldconfigscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldconfigscheme
    ADD CONSTRAINT pk_fieldconfigscheme PRIMARY KEY (id);


--
-- Name: fieldconfigschemeissuetype pk_fieldconfigschemeissuetype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldconfigschemeissuetype
    ADD CONSTRAINT pk_fieldconfigschemeissuetype PRIMARY KEY (id);


--
-- Name: fieldconfiguration pk_fieldconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldconfiguration
    ADD CONSTRAINT pk_fieldconfiguration PRIMARY KEY (id);


--
-- Name: fieldlayout pk_fieldlayout; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayout
    ADD CONSTRAINT pk_fieldlayout PRIMARY KEY (id);


--
-- Name: fieldlayoutitem pk_fieldlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutitem
    ADD CONSTRAINT pk_fieldlayoutitem PRIMARY KEY (id);


--
-- Name: fieldlayoutscheme pk_fieldlayoutscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutscheme
    ADD CONSTRAINT pk_fieldlayoutscheme PRIMARY KEY (id);


--
-- Name: fieldlayoutschemeassociation pk_fieldlayoutschemeassociatio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutschemeassociation
    ADD CONSTRAINT pk_fieldlayoutschemeassociatio PRIMARY KEY (id);


--
-- Name: fieldlayoutschemeentity pk_fieldlayoutschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutschemeentity
    ADD CONSTRAINT pk_fieldlayoutschemeentity PRIMARY KEY (id);


--
-- Name: fieldscreen pk_fieldscreen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreen
    ADD CONSTRAINT pk_fieldscreen PRIMARY KEY (id);


--
-- Name: fieldscreenlayoutitem pk_fieldscreenlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreenlayoutitem
    ADD CONSTRAINT pk_fieldscreenlayoutitem PRIMARY KEY (id);


--
-- Name: fieldscreenscheme pk_fieldscreenscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreenscheme
    ADD CONSTRAINT pk_fieldscreenscheme PRIMARY KEY (id);


--
-- Name: fieldscreenschemeitem pk_fieldscreenschemeitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreenschemeitem
    ADD CONSTRAINT pk_fieldscreenschemeitem PRIMARY KEY (id);


--
-- Name: fieldscreentab pk_fieldscreentab; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreentab
    ADD CONSTRAINT pk_fieldscreentab PRIMARY KEY (id);


--
-- Name: fileattachment pk_fileattachment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fileattachment
    ADD CONSTRAINT pk_fileattachment PRIMARY KEY (id);


--
-- Name: filtersubscription pk_filtersubscription; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filtersubscription
    ADD CONSTRAINT pk_filtersubscription PRIMARY KEY (id);


--
-- Name: gadgetuserpreference pk_gadgetuserpreference; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gadgetuserpreference
    ADD CONSTRAINT pk_gadgetuserpreference PRIMARY KEY (id);


--
-- Name: genericconfiguration pk_genericconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genericconfiguration
    ADD CONSTRAINT pk_genericconfiguration PRIMARY KEY (id);


--
-- Name: globalpermissionentry pk_globalpermissionentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globalpermissionentry
    ADD CONSTRAINT pk_globalpermissionentry PRIMARY KEY (id);


--
-- Name: groupbase pk_groupbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groupbase
    ADD CONSTRAINT pk_groupbase PRIMARY KEY (id);


--
-- Name: issue_field_option pk_issue_field_option; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_field_option
    ADD CONSTRAINT pk_issue_field_option PRIMARY KEY (id);


--
-- Name: issue_field_option_scope pk_issue_field_option_scope; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_field_option_scope
    ADD CONSTRAINT pk_issue_field_option_scope PRIMARY KEY (id);


--
-- Name: issuelink pk_issuelink; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuelink
    ADD CONSTRAINT pk_issuelink PRIMARY KEY (id);


--
-- Name: issuelinktype pk_issuelinktype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuelinktype
    ADD CONSTRAINT pk_issuelinktype PRIMARY KEY (id);


--
-- Name: issuesecurityscheme pk_issuesecurityscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuesecurityscheme
    ADD CONSTRAINT pk_issuesecurityscheme PRIMARY KEY (id);


--
-- Name: issuestatus pk_issuestatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuestatus
    ADD CONSTRAINT pk_issuestatus PRIMARY KEY (id);


--
-- Name: issuetype pk_issuetype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuetype
    ADD CONSTRAINT pk_issuetype PRIMARY KEY (id);


--
-- Name: issuetypescreenscheme pk_issuetypescreenscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuetypescreenscheme
    ADD CONSTRAINT pk_issuetypescreenscheme PRIMARY KEY (id);


--
-- Name: issuetypescreenschemeentity pk_issuetypescreenschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuetypescreenschemeentity
    ADD CONSTRAINT pk_issuetypescreenschemeentity PRIMARY KEY (id);


--
-- Name: jiraaction pk_jiraaction; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraaction
    ADD CONSTRAINT pk_jiraaction PRIMARY KEY (id);


--
-- Name: jiradraftworkflows pk_jiradraftworkflows; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiradraftworkflows
    ADD CONSTRAINT pk_jiradraftworkflows PRIMARY KEY (id);


--
-- Name: jiraeventtype pk_jiraeventtype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraeventtype
    ADD CONSTRAINT pk_jiraeventtype PRIMARY KEY (id);


--
-- Name: jiraissue pk_jiraissue; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraissue
    ADD CONSTRAINT pk_jiraissue PRIMARY KEY (id);


--
-- Name: jiraperms pk_jiraperms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraperms
    ADD CONSTRAINT pk_jiraperms PRIMARY KEY (id);


--
-- Name: jiraworkflows pk_jiraworkflows; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraworkflows
    ADD CONSTRAINT pk_jiraworkflows PRIMARY KEY (id);


--
-- Name: jiraworkflowstatuses pk_jiraworkflowstatuses; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraworkflowstatuses
    ADD CONSTRAINT pk_jiraworkflowstatuses PRIMARY KEY (id);


--
-- Name: jquartz_blob_triggers pk_jquartz_blob_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_blob_triggers
    ADD CONSTRAINT pk_jquartz_blob_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_calendars pk_jquartz_calendars; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_calendars
    ADD CONSTRAINT pk_jquartz_calendars PRIMARY KEY (calendar_name);


--
-- Name: jquartz_cron_triggers pk_jquartz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_cron_triggers
    ADD CONSTRAINT pk_jquartz_cron_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_fired_triggers pk_jquartz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_fired_triggers
    ADD CONSTRAINT pk_jquartz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: jquartz_job_details pk_jquartz_job_details; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_job_details
    ADD CONSTRAINT pk_jquartz_job_details PRIMARY KEY (job_name, job_group);


--
-- Name: jquartz_job_listeners pk_jquartz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_job_listeners
    ADD CONSTRAINT pk_jquartz_job_listeners PRIMARY KEY (job_name, job_group, job_listener);


--
-- Name: jquartz_locks pk_jquartz_locks; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_locks
    ADD CONSTRAINT pk_jquartz_locks PRIMARY KEY (lock_name);


--
-- Name: jquartz_paused_trigger_grps pk_jquartz_paused_trigger_grps; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_paused_trigger_grps
    ADD CONSTRAINT pk_jquartz_paused_trigger_grps PRIMARY KEY (trigger_group);


--
-- Name: jquartz_scheduler_state pk_jquartz_scheduler_state; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_scheduler_state
    ADD CONSTRAINT pk_jquartz_scheduler_state PRIMARY KEY (instance_name);


--
-- Name: jquartz_simple_triggers pk_jquartz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_simple_triggers
    ADD CONSTRAINT pk_jquartz_simple_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_simprop_triggers pk_jquartz_simprop_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_simprop_triggers
    ADD CONSTRAINT pk_jquartz_simprop_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_trigger_listeners pk_jquartz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_trigger_listeners
    ADD CONSTRAINT pk_jquartz_trigger_listeners PRIMARY KEY (trigger_group, trigger_listener);


--
-- Name: jquartz_triggers pk_jquartz_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_triggers
    ADD CONSTRAINT pk_jquartz_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: label pk_label; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT pk_label PRIMARY KEY (id);


--
-- Name: licenserolesdefault pk_licenserolesdefault; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenserolesdefault
    ADD CONSTRAINT pk_licenserolesdefault PRIMARY KEY (id);


--
-- Name: licenserolesgroup pk_licenserolesgroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenserolesgroup
    ADD CONSTRAINT pk_licenserolesgroup PRIMARY KEY (id);


--
-- Name: listenerconfig pk_listenerconfig; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listenerconfig
    ADD CONSTRAINT pk_listenerconfig PRIMARY KEY (id);


--
-- Name: mailserver pk_mailserver; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mailserver
    ADD CONSTRAINT pk_mailserver PRIMARY KEY (id);


--
-- Name: managedconfigurationitem pk_managedconfigurationitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managedconfigurationitem
    ADD CONSTRAINT pk_managedconfigurationitem PRIMARY KEY (id);


--
-- Name: membershipbase pk_membershipbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membershipbase
    ADD CONSTRAINT pk_membershipbase PRIMARY KEY (id);


--
-- Name: moved_issue_key pk_moved_issue_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moved_issue_key
    ADD CONSTRAINT pk_moved_issue_key PRIMARY KEY (id);


--
-- Name: nodeassociation pk_nodeassociation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodeassociation
    ADD CONSTRAINT pk_nodeassociation PRIMARY KEY (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type);


--
-- Name: nodeindexcounter pk_nodeindexcounter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodeindexcounter
    ADD CONSTRAINT pk_nodeindexcounter PRIMARY KEY (id);


--
-- Name: notification pk_notification; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT pk_notification PRIMARY KEY (id);


--
-- Name: notificationinstance pk_notificationinstance; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificationinstance
    ADD CONSTRAINT pk_notificationinstance PRIMARY KEY (id);


--
-- Name: notificationscheme pk_notificationscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificationscheme
    ADD CONSTRAINT pk_notificationscheme PRIMARY KEY (id);


--
-- Name: oauthconsumer pk_oauthconsumer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthconsumer
    ADD CONSTRAINT pk_oauthconsumer PRIMARY KEY (id);


--
-- Name: oauthconsumertoken pk_oauthconsumertoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthconsumertoken
    ADD CONSTRAINT pk_oauthconsumertoken PRIMARY KEY (id);


--
-- Name: oauthspconsumer pk_oauthspconsumer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthspconsumer
    ADD CONSTRAINT pk_oauthspconsumer PRIMARY KEY (id);


--
-- Name: oauthsptoken pk_oauthsptoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthsptoken
    ADD CONSTRAINT pk_oauthsptoken PRIMARY KEY (id);


--
-- Name: optionconfiguration pk_optionconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optionconfiguration
    ADD CONSTRAINT pk_optionconfiguration PRIMARY KEY (id);


--
-- Name: os_currentstep pk_os_currentstep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_currentstep
    ADD CONSTRAINT pk_os_currentstep PRIMARY KEY (id);


--
-- Name: os_currentstep_prev pk_os_currentstep_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_currentstep_prev
    ADD CONSTRAINT pk_os_currentstep_prev PRIMARY KEY (id, previous_id);


--
-- Name: os_historystep pk_os_historystep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_historystep
    ADD CONSTRAINT pk_os_historystep PRIMARY KEY (id);


--
-- Name: os_historystep_prev pk_os_historystep_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_historystep_prev
    ADD CONSTRAINT pk_os_historystep_prev PRIMARY KEY (id, previous_id);


--
-- Name: os_wfentry pk_os_wfentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_wfentry
    ADD CONSTRAINT pk_os_wfentry PRIMARY KEY (id);


--
-- Name: permissionscheme pk_permissionscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissionscheme
    ADD CONSTRAINT pk_permissionscheme PRIMARY KEY (id);


--
-- Name: permissionschemeattribute pk_permissionschemeattribute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissionschemeattribute
    ADD CONSTRAINT pk_permissionschemeattribute PRIMARY KEY (id);


--
-- Name: pluginstate pk_pluginstate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pluginstate
    ADD CONSTRAINT pk_pluginstate PRIMARY KEY (pluginkey);


--
-- Name: pluginversion pk_pluginversion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pluginversion
    ADD CONSTRAINT pk_pluginversion PRIMARY KEY (id);


--
-- Name: portalpage pk_portalpage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.portalpage
    ADD CONSTRAINT pk_portalpage PRIMARY KEY (id);


--
-- Name: portletconfiguration pk_portletconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.portletconfiguration
    ADD CONSTRAINT pk_portletconfiguration PRIMARY KEY (id);


--
-- Name: priority pk_priority; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority
    ADD CONSTRAINT pk_priority PRIMARY KEY (id);


--
-- Name: productlicense pk_productlicense; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productlicense
    ADD CONSTRAINT pk_productlicense PRIMARY KEY (id);


--
-- Name: project pk_project; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT pk_project PRIMARY KEY (id);


--
-- Name: project_key pk_project_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_key
    ADD CONSTRAINT pk_project_key PRIMARY KEY (id);


--
-- Name: projectcategory pk_projectcategory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectcategory
    ADD CONSTRAINT pk_projectcategory PRIMARY KEY (id);


--
-- Name: projectchangedtime pk_projectchangedtime; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectchangedtime
    ADD CONSTRAINT pk_projectchangedtime PRIMARY KEY (project_id);


--
-- Name: projectrole pk_projectrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectrole
    ADD CONSTRAINT pk_projectrole PRIMARY KEY (id);


--
-- Name: projectroleactor pk_projectroleactor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectroleactor
    ADD CONSTRAINT pk_projectroleactor PRIMARY KEY (id);


--
-- Name: projectversion pk_projectversion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectversion
    ADD CONSTRAINT pk_projectversion PRIMARY KEY (id);


--
-- Name: propertydata pk_propertydata; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertydata
    ADD CONSTRAINT pk_propertydata PRIMARY KEY (id);


--
-- Name: propertydate pk_propertydate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertydate
    ADD CONSTRAINT pk_propertydate PRIMARY KEY (id);


--
-- Name: propertydecimal pk_propertydecimal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertydecimal
    ADD CONSTRAINT pk_propertydecimal PRIMARY KEY (id);


--
-- Name: propertyentry pk_propertyentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertyentry
    ADD CONSTRAINT pk_propertyentry PRIMARY KEY (id);


--
-- Name: propertynumber pk_propertynumber; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertynumber
    ADD CONSTRAINT pk_propertynumber PRIMARY KEY (id);


--
-- Name: propertystring pk_propertystring; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertystring
    ADD CONSTRAINT pk_propertystring PRIMARY KEY (id);


--
-- Name: propertytext pk_propertytext; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertytext
    ADD CONSTRAINT pk_propertytext PRIMARY KEY (id);


--
-- Name: qrtz_calendars pk_qrtz_calendars; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_calendars
    ADD CONSTRAINT pk_qrtz_calendars PRIMARY KEY (calendar_name);


--
-- Name: qrtz_cron_triggers pk_qrtz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_cron_triggers
    ADD CONSTRAINT pk_qrtz_cron_triggers PRIMARY KEY (id);


--
-- Name: qrtz_fired_triggers pk_qrtz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_fired_triggers
    ADD CONSTRAINT pk_qrtz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: qrtz_job_details pk_qrtz_job_details; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_job_details
    ADD CONSTRAINT pk_qrtz_job_details PRIMARY KEY (id);


--
-- Name: qrtz_job_listeners pk_qrtz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_job_listeners
    ADD CONSTRAINT pk_qrtz_job_listeners PRIMARY KEY (id);


--
-- Name: qrtz_simple_triggers pk_qrtz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_simple_triggers
    ADD CONSTRAINT pk_qrtz_simple_triggers PRIMARY KEY (id);


--
-- Name: qrtz_trigger_listeners pk_qrtz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_trigger_listeners
    ADD CONSTRAINT pk_qrtz_trigger_listeners PRIMARY KEY (id);


--
-- Name: qrtz_triggers pk_qrtz_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_triggers
    ADD CONSTRAINT pk_qrtz_triggers PRIMARY KEY (id);


--
-- Name: reindex_component pk_reindex_component; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reindex_component
    ADD CONSTRAINT pk_reindex_component PRIMARY KEY (id);


--
-- Name: reindex_request pk_reindex_request; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reindex_request
    ADD CONSTRAINT pk_reindex_request PRIMARY KEY (id);


--
-- Name: remembermetoken pk_remembermetoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remembermetoken
    ADD CONSTRAINT pk_remembermetoken PRIMARY KEY (id);


--
-- Name: remotelink pk_remotelink; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remotelink
    ADD CONSTRAINT pk_remotelink PRIMARY KEY (id);


--
-- Name: replicatedindexoperation pk_replicatedindexoperation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.replicatedindexoperation
    ADD CONSTRAINT pk_replicatedindexoperation PRIMARY KEY (id);


--
-- Name: resolution pk_resolution; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resolution
    ADD CONSTRAINT pk_resolution PRIMARY KEY (id);


--
-- Name: rundetails pk_rundetails; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rundetails
    ADD CONSTRAINT pk_rundetails PRIMARY KEY (id);


--
-- Name: schemeissuesecurities pk_schemeissuesecurities; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schemeissuesecurities
    ADD CONSTRAINT pk_schemeissuesecurities PRIMARY KEY (id);


--
-- Name: schemeissuesecuritylevels pk_schemeissuesecuritylevels; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schemeissuesecuritylevels
    ADD CONSTRAINT pk_schemeissuesecuritylevels PRIMARY KEY (id);


--
-- Name: schemepermissions pk_schemepermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schemepermissions
    ADD CONSTRAINT pk_schemepermissions PRIMARY KEY (id);


--
-- Name: searchrequest pk_searchrequest; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.searchrequest
    ADD CONSTRAINT pk_searchrequest PRIMARY KEY (id);


--
-- Name: sequence_value_item pk_sequence_value_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequence_value_item
    ADD CONSTRAINT pk_sequence_value_item PRIMARY KEY (seq_name);


--
-- Name: serviceconfig pk_serviceconfig; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serviceconfig
    ADD CONSTRAINT pk_serviceconfig PRIMARY KEY (id);


--
-- Name: sharepermissions pk_sharepermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sharepermissions
    ADD CONSTRAINT pk_sharepermissions PRIMARY KEY (id);


--
-- Name: tempattachmentsmonitor pk_tempattachmentsmonitor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tempattachmentsmonitor
    ADD CONSTRAINT pk_tempattachmentsmonitor PRIMARY KEY (temporary_attachment_id);


--
-- Name: trackback_ping pk_trackback_ping; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trackback_ping
    ADD CONSTRAINT pk_trackback_ping PRIMARY KEY (id);


--
-- Name: trustedapp pk_trustedapp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT pk_trustedapp PRIMARY KEY (id);


--
-- Name: upgradehistory pk_upgradehistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradehistory
    ADD CONSTRAINT pk_upgradehistory PRIMARY KEY (upgradeclass);


--
-- Name: upgradetaskhistory pk_upgradetaskhistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradetaskhistory
    ADD CONSTRAINT pk_upgradetaskhistory PRIMARY KEY (id);


--
-- Name: upgradetaskhistoryauditlog pk_upgradetaskhistoryauditlog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradetaskhistoryauditlog
    ADD CONSTRAINT pk_upgradetaskhistoryauditlog PRIMARY KEY (id);


--
-- Name: upgradeversionhistory pk_upgradeversionhistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradeversionhistory
    ADD CONSTRAINT pk_upgradeversionhistory PRIMARY KEY (targetbuild);


--
-- Name: userassociation pk_userassociation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userassociation
    ADD CONSTRAINT pk_userassociation PRIMARY KEY (source_name, sink_node_id, sink_node_entity, association_type);


--
-- Name: userbase pk_userbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userbase
    ADD CONSTRAINT pk_userbase PRIMARY KEY (id);


--
-- Name: userhistoryitem pk_userhistoryitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userhistoryitem
    ADD CONSTRAINT pk_userhistoryitem PRIMARY KEY (id);


--
-- Name: userpickerfilter pk_userpickerfilter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userpickerfilter
    ADD CONSTRAINT pk_userpickerfilter PRIMARY KEY (id);


--
-- Name: userpickerfiltergroup pk_userpickerfiltergroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userpickerfiltergroup
    ADD CONSTRAINT pk_userpickerfiltergroup PRIMARY KEY (id);


--
-- Name: userpickerfilterrole pk_userpickerfilterrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userpickerfilterrole
    ADD CONSTRAINT pk_userpickerfilterrole PRIMARY KEY (id);


--
-- Name: versioncontrol pk_versioncontrol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versioncontrol
    ADD CONSTRAINT pk_versioncontrol PRIMARY KEY (id);


--
-- Name: votehistory pk_votehistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votehistory
    ADD CONSTRAINT pk_votehistory PRIMARY KEY (id);


--
-- Name: workflowscheme pk_workflowscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflowscheme
    ADD CONSTRAINT pk_workflowscheme PRIMARY KEY (id);


--
-- Name: workflowschemeentity pk_workflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflowschemeentity
    ADD CONSTRAINT pk_workflowschemeentity PRIMARY KEY (id);


--
-- Name: worklog pk_worklog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worklog
    ADD CONSTRAINT pk_worklog PRIMARY KEY (id);


--
-- Name: AO_4789DD_TASK_MONITOR u_ao_4789dd_task_mo1827547914; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT u_ao_4789dd_task_mo1827547914 UNIQUE ("TASK_ID");


--
-- Name: AO_587B34_PROJECT_CONFIG u_ao_587b34_project2070954277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT u_ao_587b34_project2070954277 UNIQUE ("NAME_UNIQUE_CONSTRAINT");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS u_ao_ed669c_seen_as1055534769; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT u_ao_ed669c_seen_as1055534769 UNIQUE ("ASSERTION_ID");


--
-- Name: action_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_author_created ON public.jiraaction USING btree (author, created);


--
-- Name: action_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_issue ON public.jiraaction USING btree (issueid);


--
-- Name: attach_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attach_issue ON public.fileattachment USING btree (issueid);


--
-- Name: avatar_filename_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX avatar_filename_index ON public.avatar USING btree (filename, avatartype, systemavatar);


--
-- Name: avatar_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX avatar_index ON public.avatar USING btree (avatartype, owner);


--
-- Name: cf_cfoption; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_cfoption ON public.customfieldoption USING btree (customfield);


--
-- Name: cf_userpickerfiltergroup; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_userpickerfiltergroup ON public.userpickerfiltergroup USING btree (userpickerfilter);


--
-- Name: cf_userpickerfilterrole; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_userpickerfilterrole ON public.userpickerfilterrole USING btree (userpickerfilter);


--
-- Name: cfvalue_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cfvalue_issue ON public.customfieldvalue USING btree (issue, customfield);


--
-- Name: chggroup_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chggroup_author_created ON public.changegroup USING btree (author, created);


--
-- Name: chggroup_issue_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chggroup_issue_id ON public.changegroup USING btree (issueid, id);


--
-- Name: chgitem_group_field; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chgitem_group_field ON public.changeitem USING btree (groupid, field);


--
-- Name: cl_searchrequest; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cl_searchrequest ON public.columnlayout USING btree (searchrequest);


--
-- Name: cl_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cl_username ON public.columnlayout USING btree (username);


--
-- Name: cluster_lock_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX cluster_lock_name_idx ON public.clusterlockstatus USING btree (lock_name);


--
-- Name: clusteredjob_jobid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX clusteredjob_jobid_idx ON public.clusteredjob USING btree (job_id);


--
-- Name: clusteredjob_jrk_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_jrk_idx ON public.clusteredjob USING btree (job_runner_key);


--
-- Name: clusteredjob_nextrun_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_nextrun_idx ON public.clusteredjob USING btree (next_run);


--
-- Name: confcontext; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontext ON public.configurationcontext USING btree (projectcategory, project, customfield);


--
-- Name: confcontextfieldconfigscheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextfieldconfigscheme ON public.configurationcontext USING btree (fieldconfigscheme);


--
-- Name: confcontextkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextkey ON public.configurationcontext USING btree (customfield);


--
-- Name: confcontextprojectkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextprojectkey ON public.configurationcontext USING btree (project, customfield);


--
-- Name: deadletter_lastseen; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deadletter_lastseen ON public.deadletter USING btree (last_seen);


--
-- Name: deadletter_msg_server_folder; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deadletter_msg_server_folder ON public.deadletter USING btree (message_id, mail_server_id, folder_name);


--
-- Name: draft_workflow_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX draft_workflow_scheme ON public.draftworkflowschemeentity USING btree (scheme);


--
-- Name: draft_workflow_scheme_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX draft_workflow_scheme_parent ON public.draftworkflowscheme USING btree (workflow_scheme_id);


--
-- Name: entityproperty_id_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entityproperty_id_name_key ON public.entity_property USING btree (entity_id, entity_name, property_key);


--
-- Name: entityproperty_key_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entityproperty_key_name ON public.entity_property USING btree (property_key, entity_name);


--
-- Name: entitytranslation_locale; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entitytranslation_locale ON public.entity_translation USING btree (locale);


--
-- Name: entpropindexdoc_module; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX entpropindexdoc_module ON public.entity_property_index_document USING btree (plugin_key, module_key);


--
-- Name: ext_entity_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ext_entity_name ON public.external_entities USING btree (name);


--
-- Name: favourite_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX favourite_index ON public.favouriteassociations USING btree (username, entitytype, entityid);


--
-- Name: fc_fieldid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fc_fieldid ON public.fieldconfiguration USING btree (fieldid);


--
-- Name: fcs_fieldid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_fieldid ON public.fieldconfigscheme USING btree (fieldid);


--
-- Name: fcs_issuetype; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_issuetype ON public.fieldconfigschemeissuetype USING btree (issuetype);


--
-- Name: fcs_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_scheme ON public.fieldconfigschemeissuetype USING btree (fieldconfigscheme);


--
-- Name: feature_id_userkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX feature_id_userkey ON public.feature USING btree (id, user_key);


--
-- Name: fieldid_fieldconf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldid_fieldconf ON public.optionconfiguration USING btree (fieldid, fieldconfig);


--
-- Name: fieldid_optionid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldid_optionid ON public.optionconfiguration USING btree (fieldid, optionid);


--
-- Name: fieldlayout_layout; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldlayout_layout ON public.fieldlayoutschemeentity USING btree (fieldlayout);


--
-- Name: fieldlayout_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldlayout_scheme ON public.fieldlayoutschemeentity USING btree (scheme);


--
-- Name: fieldscitem_tab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscitem_tab ON public.fieldscreenlayoutitem USING btree (fieldscreentab);


--
-- Name: fieldscreen_field; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_field ON public.fieldscreenlayoutitem USING btree (fieldidentifier);


--
-- Name: fieldscreen_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_scheme ON public.issuetypescreenschemeentity USING btree (fieldscreenscheme);


--
-- Name: fieldscreen_tab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_tab ON public.fieldscreentab USING btree (fieldscreen);


--
-- Name: fl_scheme_assoc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fl_scheme_assoc ON public.fieldlayoutschemeassociation USING btree (project, issuetype);


--
-- Name: historystep_entryid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX historystep_entryid ON public.os_historystep USING btree (entry_id);


--
-- Name: idx_all_project_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_all_project_ids ON public.project_key USING btree (project_id);


--
-- Name: idx_all_project_keys; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_all_project_keys ON public.project_key USING btree (project_key);


--
-- Name: idx_audit_item_log_id2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_audit_item_log_id2 ON public.audit_item USING btree (log_id);


--
-- Name: idx_audit_log_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_audit_log_created ON public.audit_log USING btree (created);


--
-- Name: idx_board_board_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_board_board_ids ON public.boardproject USING btree (board_id);


--
-- Name: idx_board_project_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_board_project_ids ON public.boardproject USING btree (project_id);


--
-- Name: idx_changed_value_log_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changed_value_log_id ON public.audit_changed_value USING btree (log_id);


--
-- Name: idx_cli_fieldidentifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cli_fieldidentifier ON public.columnlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_component_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_component_name ON public.component USING btree (cname);


--
-- Name: idx_component_project; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_component_project ON public.component USING btree (project);


--
-- Name: idx_directory_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_active ON public.cwd_directory USING btree (active);


--
-- Name: idx_directory_impl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_impl ON public.cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_directory_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_type ON public.cwd_directory USING btree (directory_type);


--
-- Name: idx_display_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_display_name ON public.cwd_user USING btree (lower_display_name);


--
-- Name: idx_email_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_email_address ON public.cwd_user USING btree (lower_email_address);


--
-- Name: idx_first_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_first_name ON public.cwd_user USING btree (lower_first_name);


--
-- Name: idx_fli_fieldidentifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fli_fieldidentifier ON public.fieldlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_fli_fieldlayout; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fli_fieldlayout ON public.fieldlayoutitem USING btree (fieldlayout);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_active ON public.cwd_group USING btree (lower_group_name, active);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_dir_name_lval ON public.cwd_group_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_dir_id ON public.cwd_group USING btree (directory_id);


--
-- Name: idx_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_last_name ON public.cwd_user USING btree (lower_last_name);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_child ON public.cwd_membership USING btree (lower_child_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent ON public.cwd_membership USING btree (lower_parent_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent_child ON public.cwd_membership USING btree (lower_parent_name, lower_child_name, membership_type, directory_id);


--
-- Name: idx_old_issue_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_old_issue_key ON public.moved_issue_key USING btree (old_issue_key);


--
-- Name: idx_parent_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_parent_name ON public.jiraworkflowstatuses USING btree (parentname);


--
-- Name: idx_project_category_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_project_category_name ON public.projectcategory USING btree (cname);


--
-- Name: idx_project_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_project_key ON public.project USING btree (pkey);


--
-- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON public.jquartz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_j_g ON public.jquartz_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_jg ON public.jquartz_fired_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_t_g ON public.jquartz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_tg ON public.jquartz_fired_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_trig_inst_name ON public.jquartz_fired_triggers USING btree (sched_name, instance_name);


--
-- Name: idx_qrtz_j_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_g ON public.jquartz_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_grp ON public.jquartz_job_details USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_req_recovery ON public.jquartz_job_details USING btree (sched_name, requests_recovery);


--
-- Name: idx_qrtz_j_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_state ON public.jquartz_triggers USING btree (sched_name, trigger_state);


--
-- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_c ON public.jquartz_triggers USING btree (sched_name, calendar_name);


--
-- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_j ON public.jquartz_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_jg ON public.jquartz_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_g_state ON public.jquartz_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_state ON public.jquartz_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_next_fire_time ON public.jquartz_triggers USING btree (sched_name, next_fire_time);


--
-- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st ON public.jquartz_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- Name: idx_reindex_component_req_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reindex_component_req_id ON public.reindex_component USING btree (request_id);


--
-- Name: idx_tam_by_created_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tam_by_created_time ON public.tempattachmentsmonitor USING btree (created_time);


--
-- Name: idx_tam_by_form_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tam_by_form_token ON public.tempattachmentsmonitor USING btree (form_token);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_dir_name_lval ON public.cwd_user_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_version_project; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_version_project ON public.projectversion USING btree (project);


--
-- Name: idx_version_sequence; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_version_sequence ON public.projectversion USING btree (sequence);


--
-- Name: index_ao_0a5972_not187736835; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_0a5972_not187736835 ON public."AO_0A5972_NOTIFICATION_SETTING" USING btree ("USER_KEY");


--
-- Name: index_ao_0a5972_pus2127422409; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_0a5972_pus2127422409 ON public."AO_0A5972_PUSH_REGISTRATION" USING btree ("USER_KEY");


--
-- Name: index_ao_21f425_mes1965715920; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_21f425_mes1965715920 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_21f425_mes223897723; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_21f425_mes223897723 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("USER_HASH");


--
-- Name: index_ao_21f425_use1458667739; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_21f425_use1458667739 ON public."AO_21F425_USER_PROPERTY_AO" USING btree ("USER");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_38321b_cus1828044926 ON public."AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_4789dd_tas42846517; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_4789dd_tas42846517 ON public."AO_4789DD_TASK_MONITOR" USING btree ("TASK_MONITOR_KIND");


--
-- Name: index_ao_550953_sho1778115994; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_550953_sho1778115994 ON public."AO_550953_SHORTCUT" USING btree ("PROJECT_ID");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act1642652291 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act1978295567 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act972488439 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act995325379 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_obj696886343 ON public."AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_tar521440921 ON public."AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_587b34_pro1732672724; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro1732672724 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("ROOM_ID");


--
-- Name: index_ao_587b34_pro193829489; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro193829489 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("CONFIGURATION_GROUP_ID");


--
-- Name: index_ao_587b34_pro2093917684; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro2093917684 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("PROJECT_ID");


--
-- Name: index_ao_587b34_pro2115480362; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro2115480362 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("NAME");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_733371_eve1266474620; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve1266474620 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("CONSUMER_NAME");


--
-- Name: index_ao_733371_eve1423945899; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve1423945899 ON public."AO_733371_EVENT_PARAMETER" USING btree ("NAME");


--
-- Name: index_ao_733371_eve1645451632; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve1645451632 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("EVENT_ID");


--
-- Name: index_ao_733371_eve525098581; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve525098581 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("SEND_DATE");


--
-- Name: index_ao_733371_eve673683319; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve673683319 ON public."AO_733371_EVENT" USING btree ("EVENT_BUNDLE_ID");


--
-- Name: index_ao_733371_eve678699426; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve678699426 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("STATUS");


--
-- Name: index_ao_733371_eve704112384; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve704112384 ON public."AO_733371_EVENT_PARAMETER" USING btree ("EVENT_ID");


--
-- Name: index_ao_733371_eve902883849; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_eve902883849 ON public."AO_733371_EVENT" USING btree ("EVENT_TYPE");


--
-- Name: index_ao_733371_event_action; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_event_action ON public."AO_733371_EVENT" USING btree ("ACTION");


--
-- Name: index_ao_733371_event_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_event_created ON public."AO_733371_EVENT" USING btree ("CREATED");


--
-- Name: index_ao_733371_event_user_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_733371_event_user_key ON public."AO_733371_EVENT" USING btree ("USER_KEY");


--
-- Name: index_ao_ed669c_see20117222; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_ed669c_see20117222 ON public."AO_ED669C_SEEN_ASSERTIONS" USING btree ("EXPIRY_TIMESTAMP");


--
-- Name: issue_assignee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_assignee ON public.jiraissue USING btree (assignee);


--
-- Name: issue_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_created ON public.jiraissue USING btree (created);


--
-- Name: issue_duedate; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_duedate ON public.jiraissue USING btree (duedate);


--
-- Name: issue_proj_num; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_proj_num ON public.jiraissue USING btree (issuenum, project);


--
-- Name: issue_proj_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_proj_status ON public.jiraissue USING btree (project, issuestatus);


--
-- Name: issue_reporter; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_reporter ON public.jiraissue USING btree (reporter);


--
-- Name: issue_resolutiondate; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_resolutiondate ON public.jiraissue USING btree (resolutiondate);


--
-- Name: issue_updated; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_updated ON public.jiraissue USING btree (updated);


--
-- Name: issue_votes; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_votes ON public.jiraissue USING btree (votes);


--
-- Name: issue_watches; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_watches ON public.jiraissue USING btree (watches);


--
-- Name: issue_workflow; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_workflow ON public.jiraissue USING btree (workflow_id);


--
-- Name: issuelink_dest; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_dest ON public.issuelink USING btree (destination);


--
-- Name: issuelink_src; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_src ON public.issuelink USING btree (source);


--
-- Name: issuelink_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_type ON public.issuelink USING btree (linktype);


--
-- Name: label_fieldissue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_fieldissue ON public.label USING btree (issue, fieldid);


--
-- Name: label_fieldissuelabel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_fieldissuelabel ON public.label USING btree (issue, fieldid, label);


--
-- Name: label_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_issue ON public.label USING btree (issue);


--
-- Name: label_label; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_label ON public.label USING btree (label);


--
-- Name: licenseroledefault_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenseroledefault_index ON public.licenserolesdefault USING btree (license_role_name);


--
-- Name: licenserolegroup_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenserolegroup_index ON public.licenserolesgroup USING btree (license_role_name, group_id);


--
-- Name: linktypename; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linktypename ON public.issuelinktype USING btree (linkname);


--
-- Name: linktypestyle; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linktypestyle ON public.issuelinktype USING btree (pstyle);


--
-- Name: managedconfigitem_id_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX managedconfigitem_id_type_idx ON public.managedconfigurationitem USING btree (item_id, item_type);


--
-- Name: mshipbase_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mshipbase_group ON public.membershipbase USING btree (group_name);


--
-- Name: mshipbase_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mshipbase_user ON public.membershipbase USING btree (user_name);


--
-- Name: node_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX node_id_idx ON public.nodeindexcounter USING btree (node_id, sending_node_id);


--
-- Name: node_operation_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_operation_idx ON public.replicatedindexoperation USING btree (node_id, affected_index, operation, index_time);


--
-- Name: node_sink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_sink ON public.nodeassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: node_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_source ON public.nodeassociation USING btree (source_node_id, source_node_entity);


--
-- Name: notif_messageid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notif_messageid ON public.notificationinstance USING btree (messageid);


--
-- Name: notif_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notif_source ON public.notificationinstance USING btree (source);


--
-- Name: ntfctn_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ntfctn_scheme ON public.notification USING btree (scheme);


--
-- Name: oauth_consumer_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_index ON public.oauthconsumer USING btree (consumer_key);


--
-- Name: oauth_consumer_service_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_service_index ON public.oauthconsumer USING btree (consumerservice);


--
-- Name: oauth_consumer_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_consumer_token_index ON public.oauthconsumertoken USING btree (token);


--
-- Name: oauth_consumer_token_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_token_key_index ON public.oauthconsumertoken USING btree (token_key);


--
-- Name: oauth_sp_consumer_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_sp_consumer_index ON public.oauthspconsumer USING btree (consumer_key);


--
-- Name: oauth_sp_consumer_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_sp_consumer_key_index ON public.oauthsptoken USING btree (consumer_key);


--
-- Name: oauth_sp_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_sp_token_index ON public.oauthsptoken USING btree (token);


--
-- Name: ordernumber_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ordernumber_idx ON public.clusterupgradestate USING btree (order_number);


--
-- Name: osgroup_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osgroup_name ON public.groupbase USING btree (groupname);


--
-- Name: osproperty_entid_name_propkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_entid_name_propkey ON public.propertyentry USING btree (entity_id, entity_name, property_key);


--
-- Name: osproperty_propertykey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_propertykey ON public.propertyentry USING btree (property_key);


--
-- Name: osuser_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osuser_name ON public.userbase USING btree (username);


--
-- Name: permission_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX permission_key_idx ON public.schemepermissions USING btree (permission_key);


--
-- Name: ppage_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ppage_username ON public.portalpage USING btree (username);


--
-- Name: prmssn_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme ON public.schemepermissions USING btree (scheme);


--
-- Name: prmssn_scheme_attr_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme_attr_idx ON public.permissionschemeattribute USING btree (scheme);


--
-- Name: prmssn_scheme_attr_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme_attr_key_idx ON public.permissionschemeattribute USING btree (scheme, attribute_key);


--
-- Name: remembermetoken_username_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remembermetoken_username_index ON public.remembermetoken USING btree (username);


--
-- Name: remotelink_globalid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remotelink_globalid ON public.remotelink USING btree (globalid);


--
-- Name: remotelink_issueid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remotelink_issueid ON public.remotelink USING btree (issueid, globalid);


--
-- Name: role_pid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_pid_idx ON public.projectroleactor USING btree (pid);


--
-- Name: role_player_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_player_idx ON public.projectroleactor USING btree (projectroleid, pid);


--
-- Name: rundetails_jobid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rundetails_jobid_idx ON public.rundetails USING btree (job_id);


--
-- Name: rundetails_starttime_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rundetails_starttime_idx ON public.rundetails USING btree (start_time);


--
-- Name: screenitem_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX screenitem_scheme ON public.fieldscreenschemeitem USING btree (fieldscreenscheme);


--
-- Name: searchrequest_filternamelower; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX searchrequest_filternamelower ON public.searchrequest USING btree (filtername_lower);


--
-- Name: sec_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sec_scheme ON public.schemeissuesecurities USING btree (scheme);


--
-- Name: sec_security; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sec_security ON public.schemeissuesecurities USING btree (security);


--
-- Name: share_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX share_index ON public.sharepermissions USING btree (entityid, entitytype);


--
-- Name: source_destination_node_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX source_destination_node_idx ON public.clustermessage USING btree (source_node, destination_node);


--
-- Name: sr_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sr_author ON public.searchrequest USING btree (authorname);


--
-- Name: subscrpt_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscrpt_user ON public.filtersubscription USING btree (filter_i_d, username);


--
-- Name: subscrptn_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscrptn_group ON public.filtersubscription USING btree (filter_i_d, groupname);


--
-- Name: trustedapp_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX trustedapp_id ON public.trustedapp USING btree (application_id);


--
-- Name: type_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX type_key ON public.genericconfiguration USING btree (datatype, datakey);


--
-- Name: uh_type_user_entity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uh_type_user_entity ON public.userhistoryitem USING btree (entitytype, username, entityid);


--
-- Name: uk_application_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_application_name ON public.cwd_application USING btree (lower_application_name);


--
-- Name: uk_directory_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_directory_name ON public.cwd_directory USING btree (lower_directory_name);


--
-- Name: uk_entitytranslation; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_entitytranslation ON public.entity_translation USING btree (entity_name, entity_id, locale);


--
-- Name: uk_group_attr_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_group_attr_name_lval ON public.cwd_group_attributes USING btree (group_id, attribute_name, lower_attribute_value);


--
-- Name: uk_group_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_group_name_dir_id ON public.cwd_group USING btree (lower_group_name, directory_id);


--
-- Name: uk_lower_user_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_lower_user_name ON public.app_user USING btree (lower_user_name);


--
-- Name: uk_mem_parent_child_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_mem_parent_child_type ON public.cwd_membership USING btree (parent_id, child_id, membership_type);


--
-- Name: uk_user_attr_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_user_attr_name_lval ON public.cwd_user_attributes USING btree (user_id, attribute_name);


--
-- Name: uk_user_externalid_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_user_externalid_dir_id ON public.cwd_user USING btree (external_id, directory_id);


--
-- Name: uk_user_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_user_key ON public.app_user USING btree (user_key);


--
-- Name: uk_user_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_user_name_dir_id ON public.cwd_user USING btree (lower_user_name, directory_id);


--
-- Name: upf_customfield; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upf_customfield ON public.userpickerfilter USING btree (customfield);


--
-- Name: upf_fieldconfigid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upf_fieldconfigid ON public.userpickerfilter USING btree (customfieldconfig);


--
-- Name: user_sink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_sink ON public.userassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: user_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_source ON public.userassociation USING btree (source_name);


--
-- Name: userpref_portletconfiguration; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userpref_portletconfiguration ON public.gadgetuserpreference USING btree (portletconfiguration);


--
-- Name: votehistory_issue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX votehistory_issue_index ON public.votehistory USING btree (issueid);


--
-- Name: wf_entryid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wf_entryid ON public.os_currentstep USING btree (entry_id);


--
-- Name: workflow_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workflow_scheme ON public.workflowschemeentity USING btree (scheme);


--
-- Name: worklog_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX worklog_author ON public.worklog USING btree (author);


--
-- Name: worklog_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX worklog_issue ON public.worklog USING btree (issueid);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES public."AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES public."AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES public."AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES public."AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: AO_733371_EVENT_PARAMETER fk_ao_733371_event_parameter_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
    ADD CONSTRAINT fk_ao_733371_event_parameter_event_id FOREIGN KEY ("EVENT_ID") REFERENCES public."AO_733371_EVENT"("ID");


--
-- Name: AO_733371_EVENT_RECIPIENT fk_ao_733371_event_recipient_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
    ADD CONSTRAINT fk_ao_733371_event_recipient_event_id FOREIGN KEY ("EVENT_ID") REFERENCES public."AO_733371_EVENT"("ID");


--
-- PostgreSQL database dump complete
--

