CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` int DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  KEY `ACT_IDX_BYTEARRAY_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_BYTEARRAY_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_BYTEARRAY_NAME` (`NAME_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('c149368b-bd65-11ec-a6bb-5081409bc496',1,'C:\\Users\\koppunoori.manideep\\Desktop\\Manideep\\swashtech-camunda\\target\\classes\\loanApproval.bpmn','c149368a-bd65-11ec-a6bb-5081409bc496',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:camunda=\"http://camunda.org/schema/1.0/bpmn\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"_DdZocL47EeOQo_IRkjDF6w\" targetNamespace=\"http://camunda.org/schema/1.0/bpmn\" exporter=\"Camunda Modeler\" exporterVersion=\"4.0.0\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n  <bpmn2:process id=\"loanApproval\" name=\"Loan Approval\" isExecutable=\"true\">\r\n    <bpmn2:startEvent id=\"StartEvent_1\" name=\"Loan Request&#10;Received\">\r\n      <bpmn2:outgoing>SequenceFlow_1</bpmn2:outgoing>\r\n    </bpmn2:startEvent>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1\" name=\"\" sourceRef=\"StartEvent_1\" targetRef=\"Task_0dfv74n\" />\r\n    <bpmn2:endEvent id=\"EndEvent_1\" name=\"Loan Request&#10;Processed\">\r\n      <bpmn2:incoming>SequenceFlow_0oy9c54</bpmn2:incoming>\r\n    </bpmn2:endEvent>\r\n    <bpmn2:userTask id=\"Task_0dfv74n\" name=\"Check the request\" camunda:assignee=\"swashtech\">\r\n      <bpmn2:incoming>SequenceFlow_1</bpmn2:incoming>\r\n      <bpmn2:outgoing>SequenceFlow_0oy9c54</bpmn2:outgoing>\r\n    </bpmn2:userTask>\r\n    <bpmn2:sequenceFlow id=\"SequenceFlow_0oy9c54\" sourceRef=\"Task_0dfv74n\" targetRef=\"EndEvent_1\" />\r\n  </bpmn2:process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\r\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"loanApproval\">\r\n      <bpmndi:BPMNEdge id=\"SequenceFlow_0oy9c54_di\" bpmnElement=\"SequenceFlow_0oy9c54\">\r\n        <di:waypoint x=\"364\" y=\"122\" />\r\n        <di:waypoint x=\"419\" y=\"122\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"441.5\" y=\"161\" width=\"0\" height=\"12\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"BPMNEdge_SequenceFlow_1\" bpmnElement=\"SequenceFlow_1\" sourceElement=\"_BPMNShape_StartEvent_3\" targetElement=\"UserTask_0k9otqc_di\">\r\n        <di:waypoint x=\"206\" y=\"122\" />\r\n        <di:waypoint x=\"264\" y=\"122\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"240\" y=\"157\" width=\"90\" height=\"20\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_3\" bpmnElement=\"StartEvent_1\">\r\n        <dc:Bounds x=\"170\" y=\"104\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"154\" y=\"140\" width=\"70\" height=\"27\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"_BPMNShape_EndEvent_3\" bpmnElement=\"EndEvent_1\">\r\n        <dc:Bounds x=\"419\" y=\"104\" width=\"36\" height=\"36\" />\r\n        <bpmndi:BPMNLabel>\r\n          <dc:Bounds x=\"403\" y=\"140\" width=\"70\" height=\"27\" />\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"UserTask_0k9otqc_di\" bpmnElement=\"Task_0dfv74n\">\r\n        <dc:Bounds x=\"264\" y=\"82\" width=\"100\" height=\"80\" />\r\n      </bpmndi:BPMNShape>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</bpmn2:definitions>\r\n',0,NULL,1,'2022-04-16 14:45:27',NULL,NULL);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('camunda.installation.id','a6494363-5c5f-474f-9d73-8fb7a4d52160',1),('camunda.telemetry.enabled','null',1),('deployment.lock','0',1),('history.cleanup.job.lock','0',1),('historyLevel','3',1),('installationId.lock','0',1),('next.dbid','1',1),('schema.history','create(fox)',1),('schema.version','fox',1),('startup.lock','0',1),('telemetry.lock','0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_schema_log`
--

DROP TABLE IF EXISTS `act_ge_schema_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_schema_log` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  `VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_schema_log`
--

LOCK TABLES `act_ge_schema_log` WRITE;
/*!40000 ALTER TABLE `act_ge_schema_log` DISABLE KEYS */;
INSERT INTO `act_ge_schema_log` VALUES ('0','2022-04-16 13:44:10','7.17.0');
/*!40000 ALTER TABLE `act_ge_schema_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PARENT_ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `ACT_INST_STATE_` int DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACTINST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START_END` (`START_TIME_`,`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_COMP` (`EXECUTION_ID_`,`ACT_ID_`,`END_TIME_`,`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_STATS` (`PROC_DEF_ID_`,`PROC_INST_ID_`,`ACT_ID_`,`END_TIME_`,`ACT_INST_STATE_`),
  KEY `ACT_IDX_HI_ACT_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_AI_PDEFID_END_TIME` (`PROC_DEF_ID_`,`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('EndEvent_1:56d00531-bd66-11ec-b05b-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','loanApproval','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','EndEvent_1',NULL,NULL,NULL,'Loan Request\nProcessed','noneEndEvent',NULL,'2022-04-16 14:49:38','2022-04-16 14:49:38',2,1,5,NULL,NULL),('StartEvent_1:200bf0ee-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','loanApproval','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','StartEvent_1',NULL,NULL,NULL,'Loan Request\nReceived','startEvent',NULL,'2022-04-16 14:48:06','2022-04-16 14:48:06',2,4,1,NULL,NULL),('Task_0dfv74n:200c8d2f-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','loanApproval','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','Task_0dfv74n','200cb440-bd66-11ec-a6bb-5081409bc496',NULL,NULL,'Check the request','userTask','swashtech','2022-04-16 14:48:06','2022-04-16 14:49:38',92238,4,3,NULL,NULL);
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_CONTENT` (`CONTENT_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_ATTACHMENT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_batch`
--

DROP TABLE IF EXISTS `act_hi_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_batch` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOTAL_JOBS_` int DEFAULT NULL,
  `JOBS_PER_SEED_` int DEFAULT NULL,
  `INVOCATIONS_PER_JOB_` int DEFAULT NULL,
  `SEED_JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `MONITOR_JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_HI_BAT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_batch`
--

LOCK TABLES `act_hi_batch` WRITE;
/*!40000 ALTER TABLE `act_hi_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_caseactinst`
--

DROP TABLE IF EXISTS `act_hi_caseactinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_caseactinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PARENT_ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `CASE_ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASE_ACT_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `STATE_` int DEFAULT NULL,
  `REQUIRED_` tinyint(1) DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_CAS_A_I_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_HI_CAS_A_I_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_CAS_A_I_COMP` (`CASE_ACT_ID_`,`END_TIME_`,`ID_`),
  KEY `ACT_IDX_HI_CAS_A_I_CASEINST` (`CASE_INST_ID_`,`CASE_ACT_ID_`),
  KEY `ACT_IDX_HI_CAS_A_I_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_caseactinst`
--

LOCK TABLES `act_hi_caseactinst` WRITE;
/*!40000 ALTER TABLE `act_hi_caseactinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_caseactinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_caseinst`
--

DROP TABLE IF EXISTS `act_hi_caseinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_caseinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `CREATE_TIME_` datetime NOT NULL,
  `CLOSE_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `STATE_` int DEFAULT NULL,
  `CREATE_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_CASE_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `CASE_INST_ID_` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_CAS_I_CLOSE` (`CLOSE_TIME_`),
  KEY `ACT_IDX_HI_CAS_I_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_CAS_I_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_caseinst`
--

LOCK TABLES `act_hi_caseinst` WRITE;
/*!40000 ALTER TABLE `act_hi_caseinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_caseinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_COMMENT_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_COMMENT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_COMMENT_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_COMMENT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_dec_in`
--

DROP TABLE IF EXISTS `act_hi_dec_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_dec_in` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `CLAUSE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CLAUSE_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DEC_IN_INST` (`DEC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_IN_CLAUSE` (`DEC_INST_ID_`,`CLAUSE_ID_`),
  KEY `ACT_IDX_HI_DEC_IN_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_IN_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_dec_in`
--

LOCK TABLES `act_hi_dec_in` WRITE;
/*!40000 ALTER TABLE `act_hi_dec_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_dec_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_dec_out`
--

DROP TABLE IF EXISTS `act_hi_dec_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_dec_out` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `CLAUSE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CLAUSE_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RULE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RULE_ORDER_` int DEFAULT NULL,
  `VAR_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_INST` (`DEC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_RULE` (`RULE_ORDER_`,`CLAUSE_ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_OUT_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_dec_out`
--

LOCK TABLES `act_hi_dec_out` WRITE;
/*!40000 ALTER TABLE `act_hi_dec_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_dec_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_decinst`
--

DROP TABLE IF EXISTS `act_hi_decinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_decinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEC_DEF_KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `DEC_DEF_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EVAL_TIME_` datetime NOT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `COLLECT_VALUE_` double DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_DEC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DEC_REQ_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DEC_REQ_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ID` (`DEC_DEF_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_KEY` (`DEC_DEF_KEY_`),
  KEY `ACT_IDX_HI_DEC_INST_PI` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_CI` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ACT` (`ACT_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_TIME` (`EVAL_TIME_`),
  KEY `ACT_IDX_HI_DEC_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_ROOT_ID` (`ROOT_DEC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_REQ_ID` (`DEC_REQ_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_REQ_KEY` (`DEC_REQ_KEY_`),
  KEY `ACT_IDX_HI_DEC_INST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DEC_INST_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_decinst`
--

LOCK TABLES `act_hi_decinst` WRITE;
/*!40000 ALTER TABLE `act_hi_decinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_decinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VAR_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `OPERATION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `INITIAL_` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_CASE_EXEC` (`CASE_EXECUTION_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_DETAIL_BYTEAR` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_HI_DETAIL_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_BYTEAR` (`BYTEARRAY_ID_`,`TASK_ID_`),
  KEY `ACT_IDX_HI_DETAIL_VAR_INST_ID` (`VAR_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_ext_task_log`
--

DROP TABLE IF EXISTS `act_hi_ext_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_ext_task_log` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIMESTAMP_` timestamp NOT NULL,
  `EXT_TASK_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `RETRIES_` int DEFAULT NULL,
  `TOPIC_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `WORKER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` bigint NOT NULL DEFAULT '0',
  `ERROR_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ERROR_DETAILS_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STATE_` int DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_HI_EXT_TASK_LOG_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_EXTTASKLOG_ERRORDET` (`ERROR_DETAILS_ID_`),
  KEY `ACT_HI_EXT_TASK_LOG_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_ext_task_log`
--

LOCK TABLES `act_hi_ext_task_log` WRITE;
/*!40000 ALTER TABLE `act_hi_ext_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_ext_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIMESTAMP_` timestamp NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `OPERATION_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_IDENT_LINK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LINK_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TIMESTAMP` (`TIMESTAMP_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('200cb441-bd66-11ec-a6bb-5081409bc496','2022-04-16 09:18:06','assignee','swashtech',NULL,'200cb440-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','add','swashtech','loanApproval',NULL,NULL);
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_incident`
--

DROP TABLE IF EXISTS `act_hi_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_incident` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL,
  `END_TIME_` timestamp NULL DEFAULT NULL,
  `INCIDENT_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FAILED_ACTIVITY_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HISTORY_CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ANNOTATION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_INCIDENT_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_INCIDENT_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_INCIDENT_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_INCIDENT_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_INCIDENT_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_INCIDENT_CREATE_TIME` (`CREATE_TIME_`),
  KEY `ACT_IDX_HI_INCIDENT_END_TIME` (`END_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_incident`
--

LOCK TABLES `act_hi_incident` WRITE;
/*!40000 ALTER TABLE `act_hi_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_job_log`
--

DROP TABLE IF EXISTS `act_hi_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_job_log` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIMESTAMP_` datetime NOT NULL,
  `JOB_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `JOB_DUEDATE_` datetime DEFAULT NULL,
  `JOB_RETRIES_` int DEFAULT NULL,
  `JOB_PRIORITY_` bigint NOT NULL DEFAULT '0',
  `JOB_EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `JOB_EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `JOB_STATE_` int DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DEF_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DEF_CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FAILED_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `HOSTNAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_PROCINST` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_PROCDEF` (`PROCESS_DEF_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_JOB_DEF_ID` (`JOB_DEF_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_PROC_DEF_KEY` (`PROCESS_DEF_KEY_`),
  KEY `ACT_IDX_HI_JOB_LOG_EX_STACK` (`JOB_EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_HI_JOB_LOG_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_JOB_LOG_JOB_CONF` (`JOB_DEF_CONFIGURATION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_job_log`
--

LOCK TABLES `act_hi_job_log` WRITE;
/*!40000 ALTER TABLE `act_hi_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_op_log`
--

DROP TABLE IF EXISTS `act_hi_op_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_op_log` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `JOB_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIMESTAMP_` timestamp NOT NULL,
  `OPERATION_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `OPERATION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYPE_` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `PROPERTY_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ORG_VALUE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `NEW_VALUE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXTERNAL_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ANNOTATION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_OP_LOG_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_OP_LOG_TIMESTAMP` (`TIMESTAMP_`),
  KEY `ACT_IDX_HI_OP_LOG_USER_ID` (`USER_ID_`),
  KEY `ACT_IDX_HI_OP_LOG_OP_TYPE` (`OPERATION_TYPE_`),
  KEY `ACT_IDX_HI_OP_LOG_ENTITY_TYPE` (`ENTITY_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_op_log`
--

LOCK TABLES `act_hi_op_log` WRITE;
/*!40000 ALTER TABLE `act_hi_op_log` DISABLE KEYS */;
INSERT INTO `act_hi_op_log` VALUES ('56cd6d20-bd66-11ec-b05b-5081409bc496','c149368a-bd65-11ec-a6bb-5081409bc496','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','loanApproval','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496',NULL,NULL,NULL,'200cb440-bd66-11ec-a6bb-5081409bc496',NULL,NULL,NULL,'swashtech','2022-04-16 09:19:38','Complete','56cd470f-bd66-11ec-b05b-5081409bc496','Task','delete','false','true',NULL,NULL,'TaskWorker',NULL,NULL);
/*!40000 ALTER TABLE `act_hi_op_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_CASE_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_PROC_TIME` (`START_TIME_`,`END_TIME_`),
  KEY `ACT_IDX_HI_PI_PDEFID_END_TIME` (`PROC_DEF_ID_`,`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_INST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496',NULL,'loanApproval','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','2022-04-16 14:48:06','2022-04-16 14:49:38',NULL,92256,'swashtech','StartEvent_1','EndEvent_1',NULL,'200b54ad-bd66-11ec-a6bb-5081409bc496',NULL,NULL,NULL,NULL,'COMPLETED');
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FOLLOW_UP_DATE_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASKINST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_TASK_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_TASKINST_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_TASKINSTID_PROCINST` (`ID_`,`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_TASK_INST_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_TASK_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_TASK_INST_END` (`END_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('200cb440-bd66-11ec-a6bb-5081409bc496','Task_0dfv74n','loanApproval','loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496','200b54ad-bd66-11ec-a6bb-5081409bc496',NULL,NULL,NULL,NULL,'Task_0dfv74n:200c8d2f-bd66-11ec-a6bb-5081409bc496','Check the request',NULL,NULL,NULL,'swashtech','2022-04-16 14:48:06','2022-04-16 14:49:38',92232,'completed',50,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STATE_` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_VARINST_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_CASEVAR_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_IDX_HI_VAR_INST_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_HI_VAR_INST_PROC_DEF_KEY` (`PROC_DEF_KEY_`),
  KEY `ACT_IDX_HI_VARINST_BYTEAR` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_HI_VARINST_RM_TIME` (`REMOVAL_TIME_`),
  KEY `ACT_IDX_HI_VAR_PI_NAME_TYPE` (`PROC_INST_ID_`,`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_VARINST_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_VARINST_ACT_INST_ID` (`ACT_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
INSERT INTO `act_id_group` VALUES ('camunda-admin',1,'camunda BPM Administrators','SYSTEM');
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
INSERT INTO `act_id_membership` VALUES ('demo','camunda-admin'),('swashtech','camunda-admin');
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_tenant`
--

DROP TABLE IF EXISTS `act_id_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_tenant` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_tenant`
--

LOCK TABLES `act_id_tenant` WRITE;
/*!40000 ALTER TABLE `act_id_tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_tenant_member`
--

DROP TABLE IF EXISTS `act_id_tenant_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_tenant_member` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_TENANT_MEMB_USER` (`TENANT_ID_`,`USER_ID_`),
  UNIQUE KEY `ACT_UNIQ_TENANT_MEMB_GROUP` (`TENANT_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_TENANT_MEMB_USER` (`USER_ID_`),
  KEY `ACT_FK_TENANT_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_TENANT_MEMB` FOREIGN KEY (`TENANT_ID_`) REFERENCES `act_id_tenant` (`ID_`),
  CONSTRAINT `ACT_FK_TENANT_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_TENANT_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_tenant_member`
--

LOCK TABLES `act_id_tenant_member` WRITE;
/*!40000 ALTER TABLE `act_id_tenant_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_tenant_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SALT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_EXP_TIME_` datetime DEFAULT NULL,
  `ATTEMPTS_` int DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
INSERT INTO `act_id_user` VALUES ('demo',1,'Demo','Demo','demo@localhost','{SHA-512}XIlO2WwKpOLRw+SArfwjblQsELbzoG7Bb4BYOAYYqCgx+3OKF2DWztmZDFiL/U/ghAXV0vPfgSLVMeHFBso5+A==','5Jf9G1hye/Zxot4YeVymSw==',NULL,NULL,NULL),('swashtech',1,'Ashish','Sirsikar','swashtech@localhost','{SHA-512}on5yRtU5z8ctW7B2QFbx+zZUgpWI74p2uPXrYKIWAtVaAFSylRFu/trm/b0gRF5jxqLhAZ9QdZPcr+lhawlGuQ==','dR2Z0sfDEz1qFMdcqX8/nQ==',NULL,NULL,NULL);
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_camformdef`
--

DROP TABLE IF EXISTS `act_re_camformdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_camformdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_camformdef`
--

LOCK TABLES `act_re_camformdef` WRITE;
/*!40000 ALTER TABLE `act_re_camformdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_camformdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_case_def`
--

DROP TABLE IF EXISTS `act_re_case_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_case_def` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `HISTORY_TTL_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_CASE_DEF_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_case_def`
--

LOCK TABLES `act_re_case_def` WRITE;
/*!40000 ALTER TABLE `act_re_case_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_case_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_decision_def`
--

DROP TABLE IF EXISTS `act_re_decision_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_decision_def` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEC_REQ_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DEC_REQ_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `HISTORY_TTL_` int DEFAULT NULL,
  `VERSION_TAG_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEC_DEF_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_DEC_DEF_REQ_ID` (`DEC_REQ_ID_`),
  CONSTRAINT `ACT_FK_DEC_REQ` FOREIGN KEY (`DEC_REQ_ID_`) REFERENCES `act_re_decision_req_def` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_decision_def`
--

LOCK TABLES `act_re_decision_def` WRITE;
/*!40000 ALTER TABLE `act_re_decision_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_decision_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_decision_req_def`
--

DROP TABLE IF EXISTS `act_re_decision_req_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_decision_req_def` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEC_REQ_DEF_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_decision_req_def`
--

LOCK TABLES `act_re_decision_req_def` WRITE;
/*!40000 ALTER TABLE `act_re_decision_req_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_decision_req_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `SOURCE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEPLOYMENT_NAME` (`NAME_`),
  KEY `ACT_IDX_DEPLOYMENT_TENANT_ID` (`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('c149368a-bd65-11ec-a6bb-5081409bc496','SpringAutoDeployment','2022-04-16 14:45:27',NULL,NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `VERSION_TAG_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `HISTORY_TTL_` int DEFAULT NULL,
  `STARTABLE_` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_PROCDEF_DEPLOYMENT_ID` (`DEPLOYMENT_ID_`),
  KEY `ACT_IDX_PROCDEF_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_PROCDEF_VER_TAG` (`VERSION_TAG_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('loanApproval:1:c157193c-bd65-11ec-a6bb-5081409bc496',1,'http://camunda.org/schema/1.0/bpmn','Loan Approval','loanApproval',1,'c149368a-bd65-11ec-a6bb-5081409bc496','C:\\Users\\koppunoori.manideep\\Desktop\\Manideep\\swashtech-camunda\\target\\classes\\loanApproval.bpmn',NULL,0,1,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_authorization`
--

DROP TABLE IF EXISTS `act_ru_authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_authorization` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int NOT NULL,
  `TYPE_` int NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_TYPE_` int NOT NULL,
  `RESOURCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PERMS_` int DEFAULT NULL,
  `REMOVAL_TIME_` datetime DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_AUTH_USER` (`USER_ID_`,`TYPE_`,`RESOURCE_TYPE_`,`RESOURCE_ID_`),
  UNIQUE KEY `ACT_UNIQ_AUTH_GROUP` (`GROUP_ID_`,`TYPE_`,`RESOURCE_TYPE_`,`RESOURCE_ID_`),
  KEY `ACT_IDX_AUTH_GROUP_ID` (`GROUP_ID_`),
  KEY `ACT_IDX_AUTH_RESOURCE_ID` (`RESOURCE_ID_`),
  KEY `ACT_IDX_AUTH_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_AUTH_RM_TIME` (`REMOVAL_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_authorization`
--

LOCK TABLES `act_ru_authorization` WRITE;
/*!40000 ALTER TABLE `act_ru_authorization` DISABLE KEYS */;
INSERT INTO `act_ru_authorization` VALUES ('3cc93f34-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,0,'*',2147483647,NULL,NULL),('3cca50a5-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,1,'*',2147483647,NULL,NULL),('3ccb6216-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,2,'*',2147483647,NULL,NULL),('3ccc4c77-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,3,'*',2147483647,NULL,NULL),('3ccd5de8-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,4,'*',2147483647,NULL,NULL),('3cce4849-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,5,'*',2147483647,NULL,NULL),('3ccf32aa-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,6,'*',2147483647,NULL,NULL),('3cd06b2b-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,7,'*',2147483647,NULL,NULL),('3cd17c9c-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,8,'*',2147483647,NULL,NULL),('3cd28e0d-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,9,'*',2147483647,NULL,NULL),('3cd3786e-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,10,'*',2147483647,NULL,NULL),('3cd4b0ef-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,11,'*',2147483647,NULL,NULL),('3cd5c260-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,12,'*',2147483647,NULL,NULL),('3cd992f1-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,13,'*',2147483647,NULL,NULL),('3cda7d52-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,14,'*',2147483647,NULL,NULL),('3cdc03f3-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,15,'*',2147483647,NULL,NULL),('3cdd6384-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,16,'*',2147483647,NULL,NULL),('3cde4de5-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,17,'*',2147483647,NULL,NULL),('3cdf1136-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,18,'*',2147483647,NULL,NULL),('3cdffb97-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,19,'*',2147483647,NULL,NULL),('3ce0e5f8-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,20,'*',2147483647,NULL,NULL),('3ce1a949-bd5e-11ec-8ba9-5081409bc496',1,1,'camunda-admin',NULL,21,'*',2147483647,NULL,NULL);
/*!40000 ALTER TABLE `act_ru_authorization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_batch`
--

DROP TABLE IF EXISTS `act_ru_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_batch` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOTAL_JOBS_` int DEFAULT NULL,
  `JOBS_CREATED_` int DEFAULT NULL,
  `JOBS_PER_SEED_` int DEFAULT NULL,
  `INVOCATIONS_PER_JOB_` int DEFAULT NULL,
  `SEED_JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `MONITOR_JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_BATCH_SEED_JOB_DEF` (`SEED_JOB_DEF_ID_`),
  KEY `ACT_IDX_BATCH_MONITOR_JOB_DEF` (`MONITOR_JOB_DEF_ID_`),
  KEY `ACT_IDX_BATCH_JOB_DEF` (`BATCH_JOB_DEF_ID_`),
  CONSTRAINT `ACT_FK_BATCH_JOB_DEF` FOREIGN KEY (`BATCH_JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`),
  CONSTRAINT `ACT_FK_BATCH_MONITOR_JOB_DEF` FOREIGN KEY (`MONITOR_JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`),
  CONSTRAINT `ACT_FK_BATCH_SEED_JOB_DEF` FOREIGN KEY (`SEED_JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_batch`
--

LOCK TABLES `act_ru_batch` WRITE;
/*!40000 ALTER TABLE `act_ru_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_case_execution`
--

DROP TABLE IF EXISTS `act_ru_case_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_case_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_CASE_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PREV_STATE_` int DEFAULT NULL,
  `CURRENT_STATE_` int DEFAULT NULL,
  `REQUIRED_` tinyint(1) DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_CASE_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_CASE_EXE_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_FK_CASE_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_CASE_EXE_CASE_DEF` (`CASE_DEF_ID_`),
  KEY `ACT_IDX_CASE_EXEC_TENANT_ID` (`TENANT_ID_`),
  CONSTRAINT `ACT_FK_CASE_EXE_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_re_case_def` (`ID_`),
  CONSTRAINT `ACT_FK_CASE_EXE_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_ru_case_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_CASE_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_case_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_case_execution`
--

LOCK TABLES `act_ru_case_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_case_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_case_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_case_sentry_part`
--

DROP TABLE IF EXISTS `act_ru_case_sentry_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_case_sentry_part` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXEC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SENTRY_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE_CASE_EXEC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STANDARD_EVENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_EVENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VARIABLE_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SATISFIED_` tinyint(1) DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_CASE_SENTRY_CASE_INST` (`CASE_INST_ID_`),
  KEY `ACT_FK_CASE_SENTRY_CASE_EXEC` (`CASE_EXEC_ID_`),
  CONSTRAINT `ACT_FK_CASE_SENTRY_CASE_EXEC` FOREIGN KEY (`CASE_EXEC_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_CASE_SENTRY_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_ru_case_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_case_sentry_part`
--

LOCK TABLES `act_ru_case_sentry_part` WRITE;
/*!40000 ALTER TABLE `act_ru_case_sentry_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_case_sentry_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` datetime NOT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_IDX_EVENT_SUBSCR_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_EVT_NAME` (`EVENT_NAME_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_CASE_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_ROOT_PI` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_ext_task`
--

DROP TABLE IF EXISTS `act_ru_ext_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_ext_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int NOT NULL,
  `WORKER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOPIC_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `ERROR_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ERROR_DETAILS_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_EXP_TIME_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` bigint NOT NULL DEFAULT '0',
  `LAST_FAILURE_LOG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXT_TASK_TOPIC` (`TOPIC_NAME_`),
  KEY `ACT_IDX_EXT_TASK_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_EXT_TASK_PRIORITY` (`PRIORITY_`),
  KEY `ACT_IDX_EXT_TASK_ERR_DETAILS` (`ERROR_DETAILS_ID_`),
  KEY `ACT_IDX_EXT_TASK_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EXT_TASK_ERROR_DETAILS` FOREIGN KEY (`ERROR_DETAILS_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_EXT_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_ext_task`
--

LOCK TABLES `act_ru_ext_task` WRITE;
/*!40000 ALTER TABLE `act_ru_ext_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_ext_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_filter`
--

DROP TABLE IF EXISTS `act_ru_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_filter` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int NOT NULL,
  `RESOURCE_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `QUERY_` longtext COLLATE utf8_bin NOT NULL,
  `PROPERTIES_` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_filter`
--

LOCK TABLES `act_ru_filter` WRITE;
/*!40000 ALTER TABLE `act_ru_filter` DISABLE KEYS */;
INSERT INTO `act_ru_filter` VALUES ('1e893322-bd64-11ec-8d93-5081409bc496',1,'Task','All tasks',NULL,'{}','{}');
/*!40000 ALTER TABLE `act_ru_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_incident`
--

DROP TABLE IF EXISTS `act_ru_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_incident` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int NOT NULL,
  `INCIDENT_TIMESTAMP_` datetime NOT NULL,
  `INCIDENT_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `INCIDENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FAILED_ACTIVITY_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_CAUSE_INCIDENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ANNOTATION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_INC_CONFIGURATION` (`CONFIGURATION_`),
  KEY `ACT_IDX_INC_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_INC_JOB_DEF` (`JOB_DEF_ID_`),
  KEY `ACT_IDX_INC_CAUSEINCID` (`CAUSE_INCIDENT_ID_`),
  KEY `ACT_IDX_INC_EXID` (`EXECUTION_ID_`),
  KEY `ACT_IDX_INC_PROCDEFID` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INC_PROCINSTID` (`PROC_INST_ID_`),
  KEY `ACT_IDX_INC_ROOTCAUSEINCID` (`ROOT_CAUSE_INCIDENT_ID_`),
  CONSTRAINT `ACT_FK_INC_CAUSE` FOREIGN KEY (`CAUSE_INCIDENT_ID_`) REFERENCES `act_ru_incident` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_INC_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_INC_JOB_DEF` FOREIGN KEY (`JOB_DEF_ID_`) REFERENCES `act_ru_jobdef` (`ID_`),
  CONSTRAINT `ACT_FK_INC_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_INC_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_INC_RCAUSE` FOREIGN KEY (`ROOT_CAUSE_INCIDENT_ID_`) REFERENCES `act_ru_incident` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_incident`
--

LOCK TABLES `act_ru_incident` WRITE;
/*!40000 ALTER TABLE `act_ru_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` datetime DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FAILED_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPEAT_OFFSET_` bigint DEFAULT '0',
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int NOT NULL DEFAULT '1',
  `JOB_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` bigint NOT NULL DEFAULT '0',
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_FAILURE_LOG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOB_EXECUTION_ID` (`EXECUTION_ID_`),
  KEY `ACT_IDX_JOB_HANDLER` (`HANDLER_TYPE_`(100),`HANDLER_CFG_`(155)),
  KEY `ACT_IDX_JOB_PROCINST` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_IDX_JOB_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_JOB_JOB_DEF_ID` (`JOB_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_JOB_HANDLER_TYPE` (`HANDLER_TYPE_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_jobdef`
--

DROP TABLE IF EXISTS `act_ru_jobdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_jobdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `JOB_CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `JOB_PRIORITY_` bigint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOBDEF_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_JOBDEF_PROC_DEF_ID` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_jobdef`
--

LOCK TABLES `act_ru_jobdef` WRITE;
/*!40000 ALTER TABLE `act_ru_jobdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_jobdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_meter_log`
--

DROP TABLE IF EXISTS `act_ru_meter_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_meter_log` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REPORTER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` bigint DEFAULT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  `MILLISECONDS_` bigint DEFAULT '0',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_METER_LOG_MS` (`MILLISECONDS_`),
  KEY `ACT_IDX_METER_LOG_NAME_MS` (`NAME_`,`MILLISECONDS_`),
  KEY `ACT_IDX_METER_LOG_REPORT` (`NAME_`,`REPORTER_`,`MILLISECONDS_`),
  KEY `ACT_IDX_METER_LOG_TIME` (`TIMESTAMP_`),
  KEY `ACT_IDX_METER_LOG` (`NAME_`,`TIMESTAMP_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_meter_log`
--

LOCK TABLES `act_ru_meter_log` WRITE;
/*!40000 ALTER TABLE `act_ru_meter_log` DISABLE KEYS */;
INSERT INTO `act_ru_meter_log` VALUES ('297b8f62-bd66-11ec-a6bb-5081409bc496','activity-instance-start','192.168.1.48$default',2,'2022-04-16 14:48:22',1650100702190),('297b8f63-bd66-11ec-a6bb-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('297b8f64-bd66-11ec-a6bb-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('297b8f65-bd66-11ec-a6bb-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('297b8f66-bd66-11ec-a6bb-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('297b8f67-bd66-11ec-a6bb-5081409bc496','activity-instance-end','192.168.1.48$default',1,'2022-04-16 14:48:22',1650100702190),('297b8f68-bd66-11ec-a6bb-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('297b8f69-bd66-11ec-a6bb-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('297b8f6a-bd66-11ec-a6bb-5081409bc496','job-acquisition-attempt','192.168.1.48$default',6,'2022-04-16 14:48:22',1650100702190),('297b8f6b-bd66-11ec-a6bb-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 14:48:22',1650100702190),('34651380-be16-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311921),('34651381-be16-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311921),('34651382-be16-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311921),('34651383-be16-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311921),('34651384-be16-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311921),('34651385-be16-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311921),('34651386-be16-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311922),('34651387-be16-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311922),('34651388-be16-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',11,'2022-04-17 11:48:32',1650176311922),('34651389-be16-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:48:32',1650176311922),('47b97e32-bd68-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',1,'2022-04-16 15:03:32',1650101611922),('47b97e33-bd68-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('47b97e34-bd68-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('47b97e35-bd68-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('47b97e36-bd68-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('47b97e37-bd68-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',2,'2022-04-16 15:03:32',1650101611922),('47b97e38-bd68-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('47b97e39-bd68-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('47b97e3a-bd68-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',18,'2022-04-16 15:03:32',1650101611922),('47b97e3b-bd68-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 15:03:32',1650101611922),('4cd56a3a-be18-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a3b-be18-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a3c-be18-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a3d-be18-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a3e-be18-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a3f-be18-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a40-be18-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a41-be18-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('4cd56a42-be18-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-17 12:03:32',1650177211918),('4cd56a43-be18-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 12:03:32',1650177211918),('602b0d6c-bd6a-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d6d-bd6a-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d6e-bd6a-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d6f-bd6a-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d70-bd6a-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d71-bd6a-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d72-bd6a-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d73-bd6a-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('602b0d74-bd6a-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-16 15:18:32',1650102511924),('602b0d75-bd6a-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 15:18:32',1650102511924),('789aeef6-bd6c-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789aeef7-bd6c-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789aeef8-bd6c-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789aeef9-bd6c-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789aeefa-bd6c-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789aeefb-bd6c-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789aeefc-bd6c-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789b160d-bd6c-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('789b160e-bd6c-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-16 15:33:32',1650103411917),('789b160f-bd6c-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 15:33:32',1650103411917),('7edff42e-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff42f-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff430-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff431-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff432-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff433-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff434-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff435-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7edff436-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-16 23:47:38',1650133057709),('7edff437-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057709),('7ee4fd48-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd49-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd4a-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd4b-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd4c-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd4d-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd4e-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd4f-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd50-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee4fd51-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057743),('7ee79562-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79563-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79564-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79565-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79566-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79567-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79568-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee79569-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee7956a-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee7956b-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057760),('7ee96a2c-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a2d-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a2e-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a2f-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a30-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a31-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a32-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a33-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a34-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7ee96a35-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057773),('7eeb6606-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb6607-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb6608-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb6609-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb660a-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb660b-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb660c-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb660d-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb660e-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eeb660f-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057786),('7eed3ad0-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad1-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad2-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad3-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad4-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad5-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad6-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad7-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad8-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7eed3ad9-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057798),('7ef1f5ca-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5cb-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5cc-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5cd-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5ce-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5cf-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5d0-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5d1-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5d2-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef1f5d3-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057828),('7ef466d4-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466d5-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466d6-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466d7-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466d8-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466d9-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466da-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466db-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466dc-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef466dd-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057844),('7ef63b9e-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63b9f-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba0-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba1-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba2-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba3-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba4-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba5-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba6-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef63ba7-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057857),('7ef83778-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e89-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e8a-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e8b-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e8c-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e8d-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e8e-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e8f-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e90-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef85e91-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057868),('7ef9e532-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e533-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e534-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e535-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e536-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e537-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e538-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e539-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e53a-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7ef9e53b-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057880),('7f0026cc-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026cd-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026ce-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026cf-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026d0-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026d1-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026d2-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026d3-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026d4-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f0026d5-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057921),('7f01d486-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d487-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d488-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d489-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d48a-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d48b-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d48c-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d48d-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d48e-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f01d48f-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057932),('7f03d060-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d061-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d062-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d063-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d064-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d065-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d066-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d067-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d068-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f03d069-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057945),('7f05570a-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f05570b-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f05570c-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f05570d-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f05570e-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f05570f-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f055710-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f055711-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f055712-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f055713-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057955),('7f0752e4-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752e5-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752e6-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752e7-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752e8-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752e9-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752ea-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752eb-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752ec-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f0752ed-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057969),('7f09c3ee-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3ef-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f0-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f1-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f2-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f3-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f4-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f5-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f6-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f09c3f7-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057984),('7f0bbfc8-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0bbfc9-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0bbfca-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0bbfcb-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0bbfcc-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0bbfcd-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0be6de-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0be6df-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0be6e0-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0be6e1-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133057998),('7f0d6d82-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d83-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d84-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d85-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d86-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d87-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d88-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d89-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d8a-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0d6d8b-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058009),('7f0ecd1c-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd1d-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd1e-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd1f-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd20-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd21-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd22-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd23-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd24-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f0ecd25-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058017),('7f113d26-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d27-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d28-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d29-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d2a-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d2b-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d2c-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d2d-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d2e-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f113d2f-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058033),('7f12eae0-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae1-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae2-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae3-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae4-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae5-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae6-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae7-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae8-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f12eae9-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058044),('7f14989a-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f14989b-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f14989c-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f14989d-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f14989e-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f14989f-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f1498a0-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f1498a1-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f1498a2-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f1498a3-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058055),('7f161f44-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f45-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f46-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f47-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f48-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f49-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f4a-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f4b-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f4c-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f161f4d-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058066),('7f17a5ee-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5ef-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f0-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f1-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f2-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f3-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f4-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f5-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f6-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f17a5f7-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058075),('7f19efe8-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efe9-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efea-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efeb-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efec-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efed-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efee-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19efef-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19eff0-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f19eff1-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058090),('7f1bebc2-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc3-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc4-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc5-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc6-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc7-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc8-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebc9-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebca-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1bebcb-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058104),('7f1e0eac-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0ead-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eae-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eaf-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eb0-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eb1-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eb2-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eb3-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eb4-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1e0eb5-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058117),('7f1f9556-bdb1-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f9557-bdb1-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f9558-bdb1-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f9559-bdb1-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f955a-bdb1-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f955b-bdb1-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f955c-bdb1-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f955d-bdb1-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f955e-bdb1-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('7f1f955f-bdb1-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 23:47:38',1650133058128),('910d4180-bd6e-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4181-bd6e-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4182-bd6e-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4183-bd6e-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4184-bd6e-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4185-bd6e-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4186-bd6e-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4187-bd6e-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('910d4188-bd6e-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-16 15:48:32',1650104311924),('910d4189-bd6e-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 15:48:32',1650104311924),('a97f1eda-bd70-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f1edb-bd70-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f1edc-bd70-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f1edd-bd70-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f1ede-bd70-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f1edf-bd70-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f6d00-bd70-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f6d01-bd70-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('a97f6d02-bd70-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-16 16:03:32',1650105211931),('a97f6d03-bd70-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 16:03:32',1650105211931),('ae706ed0-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed1-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed2-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed3-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed4-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed5-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed6-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed7-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae706ed8-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',1,'2022-04-17 11:37:38',1650175657685),('ae706ed9-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657685),('ae72439a-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae72439b-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae72439c-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae72439d-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae72439e-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae72439f-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae7243a0-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae7243a1-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae7243a2-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae7243a3-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657699),('ae743f74-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f75-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f76-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f77-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f78-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f79-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f7a-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f7b-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f7c-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae743f7d-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657711),('ae76d78e-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d78f-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d790-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d791-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d792-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d793-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d794-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d795-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d796-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae76d797-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657728),('ae792188-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae792189-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae79218a-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae79218b-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae79218c-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae79218d-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae79218e-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae79218f-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae792190-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae792191-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657744),('ae7b1d62-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d63-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d64-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d65-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d66-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d67-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d68-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d69-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d6a-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7b1d6b-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657756),('ae7ccb1c-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7ccb1d-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7ccb1e-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7ccb1f-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7ccb20-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7ccb21-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7ccb22-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7cf233-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7cf234-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae7cf235-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657768),('ae8137f6-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137f7-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137f8-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137f9-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137fa-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137fb-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137fc-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137fd-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137fe-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae8137ff-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657797),('ae82bea0-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea1-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea2-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea3-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea4-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea5-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea6-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82bea7-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82e5b8-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae82e5b9-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657807),('ae841e3a-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae841e3b-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae841e3c-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae841e3d-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae841e3e-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae841e3f-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae841e40-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae844551-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae844552-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae844553-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657816),('ae85a4e4-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85a4e5-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85a4e6-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85a4e7-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85a4e8-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85a4e9-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85a4ea-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85cbfb-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85cbfc-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae85cbfd-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657826),('ae87529e-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae87529f-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a0-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a1-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a2-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a3-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a4-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a5-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a6-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae8752a7-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657837),('ae892768-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae892769-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae89276a-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae89276b-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae89276c-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae89276d-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae89276e-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae89276f-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae892770-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae892771-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657849),('ae8afc32-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc33-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc34-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc35-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc36-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc37-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc38-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc39-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc3a-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8afc3b-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657861),('ae8c5bcc-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bcd-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bce-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bcf-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bd0-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bd1-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bd2-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bd3-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bd4-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8c5bd5-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657869),('ae8e3096-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e3097-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e3098-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e3099-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e309a-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e309b-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e309c-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e309d-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e309e-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae8e309f-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657882),('ae900460-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b71-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b72-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b73-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b74-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b75-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b76-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b77-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b78-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae902b79-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657894),('ae91d92a-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d92b-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d92c-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d92d-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d92e-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d92f-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d930-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d931-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d932-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae91d933-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657905),('ae9311b4-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311b5-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311b6-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311b7-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311b8-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311b9-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311ba-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311bb-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311bc-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae9311bd-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657913),('ae94e67e-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e67f-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e680-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e681-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e682-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e683-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e684-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e685-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e686-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae94e687-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657926),('ae973078-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae973079-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae97307a-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae97307b-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae97307c-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae97307d-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae97307e-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae97307f-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae973080-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae973081-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657940),('ae990542-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990543-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990544-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990545-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990546-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990547-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990548-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae990549-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae99054a-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae99054b-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657953),('ae9b764c-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b764d-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b764e-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b764f-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b7650-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b7651-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b7652-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b7653-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b7654-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9b7655-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657969),('ae9d2406-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d2407-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d2408-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d2409-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d240a-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d240b-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d240c-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d240d-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d240e-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9d240f-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657980),('ae9f1fe0-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe1-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe2-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe3-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe4-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe5-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe6-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe7-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe8-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('ae9f1fe9-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175657993),('aea07f7a-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f7b-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f7c-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f7d-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f7e-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f7f-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f80-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f81-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f82-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea07f83-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658001),('aea1b804-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b805-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b806-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b807-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b808-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b809-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b80a-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b80b-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b80c-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea1b80d-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658010),('aea3179e-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea3179f-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a0-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a1-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a2-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a3-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a4-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a5-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a6-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea317a7-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658019),('aea47738-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea47739-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea4773a-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea4773b-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea4773c-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea4773d-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea4773e-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea4773f-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea47740-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea47741-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658028),('aea5fde2-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde3-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde4-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde5-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde6-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde7-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde8-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fde9-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fdea-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea5fdeb-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658038),('aea7d2ac-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2ad-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2ae-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2af-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2b0-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2b1-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2b2-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2b3-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2b4-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea7d2b5-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658050),('aea93246-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea93247-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea93248-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea93249-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea9324a-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea9324b-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea9324c-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea9324d-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea9324e-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aea9324f-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658059),('aeaae000-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae001-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae002-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae003-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae004-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae005-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae006-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae007-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae008-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeaae009-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658070),('aeac66aa-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66ab-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66ac-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66ad-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66ae-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66af-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66b0-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66b1-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66b2-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeac66b3-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658080),('aeadc644-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc645-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc646-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc647-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc648-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc649-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc64a-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc64b-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc64c-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeadc64d-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658088),('aeaefece-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefecf-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed0-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed1-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed2-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed3-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed4-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed5-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed6-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeaefed7-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658097),('aeb08578-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb08579-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb0857a-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb0857b-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb0857c-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb0857d-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb0857e-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb0857f-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb08580-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb08581-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658107),('aeb196f2-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f3-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f4-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f5-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f6-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f7-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f8-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196f9-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196fa-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb196fb-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658114),('aeb344ac-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344ad-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344ae-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344af-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344b0-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344b1-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344b2-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344b3-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344b4-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb344b5-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658124),('aeb4cb56-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb57-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb58-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb59-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb5a-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb5b-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb5c-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb5d-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb5e-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb4cb5f-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658134),('aeb62af0-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af1-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af2-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af3-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af4-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af5-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af6-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af7-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af8-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb62af9-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658144),('aeb826ca-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826cb-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826cc-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826cd-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826ce-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826cf-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826d0-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826d1-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826d2-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb826d3-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658157),('aeb95e54-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e55-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e56-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e57-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e58-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e59-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e5a-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e5b-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e5c-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aeb95e5d-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658165),('aebb0c0e-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c0f-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c10-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c11-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c12-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c13-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c14-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c15-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c16-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebb0c17-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658175),('aebcb9c8-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9c9-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9ca-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9cb-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9cc-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9cd-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9ce-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9cf-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9d0-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebcb9d1-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658186),('aebe8e92-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e93-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e94-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e95-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e96-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e97-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e98-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e99-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e9a-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aebe8e9b-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658199),('aec0153c-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658208),('aec0153d-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec0153e-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec0153f-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec01540-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec01541-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec01542-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec01543-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec01544-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec01545-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658209),('aec19be6-be14-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19be7-be14-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19be8-be14-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19be9-be14-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19bea-be14-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19beb-be14-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19bec-be14-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19bed-be14-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19bee-be14-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('aec19bef-be14-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 11:37:38',1650175658219),('b408f0b4-be18-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0b5-be18-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0b6-be18-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0b7-be18-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0b8-be18-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0b9-be18-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0ba-be18-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0bb-be18-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('b408f0bc-be18-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',3,'2022-04-17 12:06:25',1650177385061),('b408f0bd-be18-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-17 12:06:25',1650177385061),('c26da644-bd72-11ec-b05b-5081409bc496','activity-instance-start','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da645-bd72-11ec-b05b-5081409bc496','job-acquired-failure','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da646-bd72-11ec-b05b-5081409bc496','job-locked-exclusive','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da647-bd72-11ec-b05b-5081409bc496','job-execution-rejected','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da648-bd72-11ec-b05b-5081409bc496','executed-decision-elements','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da649-bd72-11ec-b05b-5081409bc496','activity-instance-end','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da64a-bd72-11ec-b05b-5081409bc496','job-successful','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da64b-bd72-11ec-b05b-5081409bc496','job-acquired-success','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753),('c26da64c-bd72-11ec-b05b-5081409bc496','job-acquisition-attempt','192.168.1.48$default',15,'2022-04-16 16:18:33',1650106112753),('c26dcd5d-bd72-11ec-b05b-5081409bc496','job-failed','192.168.1.48$default',0,'2022-04-16 16:18:33',1650106112753);
/*!40000 ALTER TABLE `act_ru_meter_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FOLLOW_UP_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_TASK_ASSIGNEE` (`ASSIGNEE_`),
  KEY `ACT_IDX_TASK_OWNER` (`OWNER_`),
  KEY `ACT_IDX_TASK_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TASK_CASE_EXE` (`CASE_EXECUTION_ID_`),
  KEY `ACT_FK_TASK_CASE_DEF` (`CASE_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_re_case_def` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_CASE_EXE` FOREIGN KEY (`CASE_EXECUTION_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task_meter_log`
--

DROP TABLE IF EXISTS `act_ru_task_meter_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task_meter_log` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_HASH_` bigint DEFAULT NULL,
  `TIMESTAMP_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_METER_LOG_TIME` (`TIMESTAMP_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task_meter_log`
--

LOCK TABLES `act_ru_task_meter_log` WRITE;
/*!40000 ALTER TABLE `act_ru_task_meter_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task_meter_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CASE_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `VAR_SCOPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SEQUENCE_COUNTER_` bigint DEFAULT NULL,
  `IS_CONCURRENT_LOCAL_` tinyint DEFAULT NULL,
  `TENANT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_VARIABLE` (`VAR_SCOPE_`,`NAME_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_VARIABLE_TENANT_ID` (`TENANT_ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_NAME_TYPE` (`TASK_ID_`,`NAME_`,`TYPE_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_BATCH_ID` (`BATCH_ID_`),
  KEY `ACT_FK_VAR_CASE_EXE` (`CASE_EXECUTION_ID_`),
  KEY `ACT_FK_VAR_CASE_INST` (`CASE_INST_ID_`),
  CONSTRAINT `ACT_FK_VAR_BATCH` FOREIGN KEY (`BATCH_ID_`) REFERENCES `act_ru_batch` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_CASE_EXE` FOREIGN KEY (`CASE_EXECUTION_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_ru_case_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `blog_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `blog_content` varchar(255) NOT NULL,
  `technology` int NOT NULL,
  `expert` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_status`
--

DROP TABLE IF EXISTS `blog_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_status` (
  `blog_status_id` int unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `status` int NOT NULL,
  `comments` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_status`
--

LOCK TABLES `blog_status` WRITE;
/*!40000 ALTER TABLE `blog_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expert_technologies`
--

DROP TABLE IF EXISTS `expert_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expert_technologies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `technology` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expert_technologies`
--

LOCK TABLES `expert_technologies` WRITE;
/*!40000 ALTER TABLE `expert_technologies` DISABLE KEYS */;
INSERT INTO `expert_technologies` VALUES (1,'Java'),(2,'Angular'),(3,'Java Script');
/*!40000 ALTER TABLE `expert_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experts`
--

DROP TABLE IF EXISTS `experts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `tech_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experts`
--

LOCK TABLES `experts` WRITE;
/*!40000 ALTER TABLE `experts` DISABLE KEYS */;
INSERT INTO `experts` VALUES (2,1,2),(3,1,3);
/*!40000 ALTER TABLE `experts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Stage 1 Approved'),(2,'Stage 1 Rejected'),(4,'Expert Approved'),(5,'Expert Rejected');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `untitled_table`
--

DROP TABLE IF EXISTS `untitled_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `untitled_table` (
  `status_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `untitled_table`
--

LOCK TABLES `untitled_table` WRITE;
/*!40000 ALTER TABLE `untitled_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `untitled_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mani','9915737273','mani.deep226@gmail.com','male'),(2,'amar','9283746748','amar@gmail.com','male'),(13,'virat','9283492734','virat@gmail.com','male'),(18,'chandra','9283492734','chandra@gmail.com','male'),(19,'chandra','9283492734','chandra@gmail.com','male'),(22,'ramesh','9879872340','ramesh@gmail.com','male'),(23,'suresh','9879872340','suresh@gmail.com','male');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 21:24:26
