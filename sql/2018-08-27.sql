/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/8/27 9:46:43                            */
/*==============================================================*/



/*==============================================================*/
/* Table: archives_record                                       */
/*==============================================================*/
create table archives_record
(
   id                   varchar(32) not null comment '����',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(30) comment 'ѧԱ����',
   serial_num           varchar(20) comment 'ѧԱ��ˮ��',
   archives_code        varchar(32) comment '���������',
   in_time              varchar(20) comment '���ʱ��',
   out_time             varchar(20) comment '����ʱ��',
   input_person         varchar(64) comment '�����',
   output_person        varchar(64) comment '������',
   primary key (id)
);

alter table archives_record comment '������¼��';

/*==============================================================*/
/* Table: charge_institution_manage                             */
/*==============================================================*/
create table charge_institution_manage
(
   id                   varchar(32) comment 'ID',
   institution_code     varchar(32) comment '��������',
   institution_name     varchar(32) comment '��������',
   charge_code          varchar(32) comment '�շ������',
   operater             varchar(64) comment '������',
   opetate_time         varchar(20) comment '����ʱ��'
);

alter table charge_institution_manage comment '�շѻ�������';

/*==============================================================*/
/* Table: charge_item_management                                */
/*==============================================================*/
create table charge_item_management
(
   id                   varchar(32) not null comment 'Ψһ��ʶ',
   institution_name     varchar(32) comment '��������',
   charge_name          varchar(20) comment '�շ�����',
   car_type             varchar(10) comment '����',
   amount               int comment '���',
   in_out_type          varchar(4) comment '��֧����',
   status               varchar(4) comment '״̬',
   creater              varchar(32) comment '������',
   create_time          varchar(20) comment '����ʱ��',
   primary key (id)
);

alter table charge_item_management comment '�շ�������';

/*==============================================================*/
/* Table: charge_management                                     */
/*==============================================================*/
create table charge_management
(
   id                   varchar(32) not null comment 'Ψһ��ʶ',
   charge_code          varchar(32) comment '�շ���',
   charge_name          varchar(20) comment '�շ�������',
   in_out_type          varchar(4) comment '��֧����',
   charge_fee           int comment '�շѽ��',
   charge_time          varchar(20) comment '�շ�ʱ��',
   charge_type          varchar(4) comment '�տʽ',
   receiver             varchar(64) comment '�տ���',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(20) comment 'ѧԱ����',
   id_card_no           varchar(20) comment 'ѧԱ���֤��',
   charge_source        varchar(32) comment '�շ���Դ',
   trainee_source       varchar(10) comment 'ѧԱ���',
   verifier             varchar(32) comment 'ȷ����',
   verify_time          varchar(20) comment 'ȷ��ʱ��',
   remark               varchar(200) comment '��ע',
   bank_serial_num      varchar(100) comment '������ˮ��',
   check_status         varchar(4) comment '���˱��',
   primary key (id)
);

alter table charge_management comment '�շѹ����';

/*==============================================================*/
/* Table: coach_management                                      */
/*==============================================================*/
create table coach_management
(
   id                   varchar(32) not null comment '����',
   coach_name           varchar(32) comment '��������',
   gender               varchar(4) comment '�Ա�',
   head_img             varchar(200),
   driving_type         varchar(10) comment '׼�ݳ���',
   phone                varchar(20) comment '�ֻ�����',
   coach_rate           varchar(10) comment '��������',
   coach_sub            varchar(10) comment '��ѵ��Ŀ',
   trainee_num          int comment 'ѧԱ����',
   driving_years        int comment '����',
   license_start_time   varchar(20) comment '��ʻ֤��Ч�ڿ�ʼʱ��',
   license_end_time     varchar(20) comment '��ʻ֤��Ч�ڽ���ʱ��',
   coach_num            varchar(64) comment '����֤���',
   coach_start_time     varchar(20) comment '����֤��ʼʱ��',
   coach_end_time       varchar(20) comment '����֤����ʱ��',
   coach_status         varchar(4) comment '����״̬',
   record_num           varchar(64) comment '�������',
   open_id              varchar(64) comment '΢��openId',
   institution_code     varchar(32) comment '��������',
   institution_name     varchar(20) comment '��������',
   area                 varchar(20) comment '��������',
   remark               varchar(200) comment '��ע',
   primary key (id)
);

alter table coach_management comment '����Ա��Ϣ����';

/*==============================================================*/
/* Table: coach_trainee_rercord                                 */
/*==============================================================*/
create table coach_trainee_rercord
(
   id                   varchar(32) not null comment '����',
   coach_id             varchar(32) comment '����id',
   coach_name           varchar(30) comment '��������',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(30) comment 'ѧԱ����',
   id_card_no           varchar(20) comment 'ѧԱ���֤��',
   allot_time           varchar(20) comment '����ʱ��',
   status               varchar(4) comment '�Ƿ�ϸ�',
   allot_sub            varchar(10) comment '�����Ŀ',
   primary key (id)
);

alter table coach_trainee_rercord comment '����ѧԱ�����¼��';

/*==============================================================*/
/* Table: coach_valuation                                       */
/*==============================================================*/
create table coach_valuation
(
   id                   varchar(32) comment 'ID',
   coach_id             varchar(32) comment '����id',
   coach_name           varchar(32) comment '��������',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(32) comment 'ѧԱ����',
   content              varchar(200) comment '��������',
   valuate_time         varchar(20) comment '����ʱ��',
   coach_score          varchar(4) comment '��������'
);

alter table coach_valuation comment '�������۱�';

/*==============================================================*/
/* Table: complain_record                                       */
/*==============================================================*/
create table complain_record
(
   id                   varchar(32) comment 'ID',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(32) comment 'ѧԱ����',
   complain_content     varchar(200) comment 'Ͷ������',
   complain_time        varchar(20) comment 'Ͷ��ʱ��',
   operater             varchar(64) comment '������',
   operate_time         varchar(20) comment '����ʱ��',
   feedback             varchar(200) comment '��������'
);

alter table complain_record comment 'Ͷ�߼�¼��';

/*==============================================================*/
/* Table: dropout_record                                        */
/*==============================================================*/
create table dropout_record
(
   id                   varchar(32) comment 'ID',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(32) comment 'ѧԱ����',
   id_card_no           varchar(20) comment 'ѧԱ���֤��',
   reason               varchar(200) comment 'ԭ��',
   creator              varchar(64) comment '������',
   create_time          varchar(20) comment '����ʱ��',
   operator             varchar(64) comment '������',
   operate_time         varchar(20) comment '����ʱ��',
   status               varchar(4) comment '״̬',
   dropout_fee          int comment '�˷ѽ��',
   remark               varchar(200) comment '��ע'
);

/*==============================================================*/
/* Table: elec_archives_manage                                  */
/*==============================================================*/
create table elec_archives_manage
(
   id                   varchar(32) comment 'ID',
   type                 varchar(4) comment '����',
   trainee_id           varchar(32) comment 'ѧԱid',
   file_path            varchar(200) comment '�ļ�·��',
   upload_time          varchar(20) comment '�ϴ�ʱ��'
);

alter table elec_archives_manage comment '���ӵ��������';

/*==============================================================*/
/* Table: group_buy_record                                      */
/*==============================================================*/
create table group_buy_record
(
   group_code           varchar(32) not null comment '�Ź����',
   name                 varchar(30) comment '�Ź���Ա',
   id_card_no           varchar(20) comment 'ѧԱ���֤��',
   group_time           varchar(20) comment '�Ź�ʱ��',
   qualify              varchar(4) comment '�Ƿ�Ϲ�',
   operator             varchar(64) comment '������',
   operate_time         varchar(20) comment '����ʱ��',
   primary key (group_code)
);

alter table group_buy_record comment '�Ź���¼��';

/*==============================================================*/
/* Table: record_management                                     */
/*==============================================================*/
create table record_management
(
   id                   varchar(32) not null comment '����',
   position             varchar(100) comment 'λ��',
   capacity             int comment '����',
   num                  int comment '��������',
   update_time          varchar(20) comment '�޸�ʱ��',
   updater              varchar(64) comment '�޸���',
   sub                  varchar(10) comment '��Ŀ',
   archives_code        varchar(32) comment '����',
   primary key (id)
);

alter table record_management comment '����������';

/*==============================================================*/
/* Table: reduce_management                                     */
/*==============================================================*/
create table reduce_management
(
   id                   varchar(32) not null comment '����',
   reduce_name          varchar(32) comment '�Ż�������',
   reduce_amount        int comment '�Żݽ��',
   remark               varchar(200) comment '��ע',
   group_num            int comment '�Ź���������',
   creater              varchar(32) comment '������',
   create_time          varchar(20) comment '����ʱ��',
   reduce_start_time    varchar(20) comment '�Żݿ�ʼʱ��',
   reduce_end_time      varchar(20) comment '�Żݽ���ʱ��',
   institution_name     varchar(20) comment '��������',
   institution_code     varchar(32) comment '��������',
   verify_level         varchar(4) comment '��˼���',
   verifier             varchar(32) comment '�����',
   primary key (id)
);

alter table reduce_management comment '�Ż�������';

/*==============================================================*/
/* Table: trainee_information                                   */
/*==============================================================*/
create table trainee_information
(
   id                   varchar(32) not null comment '����',
   name                 varchar(32) comment 'ѧԱ����',
   id_card_no           varchar(20) comment '���֤��',
   head_img             varchar(200),
   phone                varchar(20) comment '�ֻ�����',
   gender               varchar(4) comment '�Ա�',
   source               varchar(4) comment '��Դ',
   address              varchar(100) comment '��ַ',
   status               varchar(4) comment 'ѧԱ��ǰ״̬',
   id_card_start_time   varchar(20) comment '֤����Ч�ڿ�ʼʱ��',
   id_card_end_time     varchar(30) comment '֤����Ч�ڽ���ʱ��',
   institution_code     varchar(32) comment '��������',
   institution_name     varchar(20) comment '��������',
   class_type           varchar(4) comment '����',
   car_type             varchar(4) comment '����',
   registration_time    varchar(20) comment '����ʱ��',
   registration_fee     int comment '��������',
   reduce_price         int comment '�Żݽ��',
   reduce_code          varchar(32) comment '�Żݱ���',
   reduce_name          varchar(20) comment '�Ż�����',
   reduce_remark        varchar(100) comment '�Żݱ�ע',
   owe_amount           int comment 'Ƿ�ѽ��',
   real_pay             int comment 'ʵ�����',
   installment          varchar(4) comment '�Ƿ����',
   arrearage            varchar(4) comment '�Ƿ�Ƿ��',
   info_check_status    varchar(4) comment '������Ϣ���״̬',
   info_check_time      varchar(20) comment '������Ϣ���ʱ��',
   reduce_status        varchar(4) comment '�Ż���Ϣ���״̬',
   reduce_check_time    varchar(20) comment '�Ż���Ϣ���ʱ��',
   charge_status        varchar(4) comment '�շ�״̬',
   confirm_time         varchar(20) comment '�շ�ȷ��ʱ��',
   accept_status        varchar(4) comment '����״̬',
   accept_time          varchar(20) comment '����ɹ�ʱ��',
   serial_num           varchar(20) comment 'ѧԱ��ˮ��',
   fir_sub              varchar(4) comment '��Ŀһ״̬',
   fir_sub_payment_time varchar(20) comment '��Ŀһ�����ɷ�ʱ��',
   fir_sub_test_time    varchar(20) comment '��ĿһԼ��ʱ��',
   fir_sub_test_num     int comment '��Ŀһ���Դ���',
   fir_sub_train_status varchar(4) comment '��Ŀһ��ѵ״̬',
   sec_sub              varchar(4) comment '��Ŀ��״̬',
   sec_sub_payment_time varchar(20) comment '��Ŀ�������ɷ�ʱ��',
   sec_sub_test_time    varchar(20) comment '��Ŀ��Լ��ʱ��',
   sec_sub_test_num     int comment '��Ŀ�����Դ���',
   sec_sub_train_status varchar(4) comment '��Ŀ����ѵ״̬',
   third_sub            varchar(4) comment '��Ŀ��״̬',
   third_sub_payment_time varchar(20) comment '��Ŀ�������ɷ�ʱ��',
   third_sub_test_time  varchar(20) comment '��Ŀ��Լ��ʱ��',
   third_sub_test_num   int comment '��Ŀ�����Դ���',
   third_sub_train_status varchar(4) comment '��Ŀ����ѵ״̬',
   forth_sub            varchar(4) comment '��Ŀ��״̬',
   record_lib           varchar(32) comment '�������ڿ�',
   creator              varchar(20) comment '������',
   create_Time          varchar(20) comment '����ʱ��',
   modifier             varchar(64) comment '�޸���',
   modify_Time          varchar(20) comment '�޸�ʱ��',
   indate_start_time    varchar(20) comment 'ѧԱ��Ч�ڿ�ʼʱ��',
   indate_end_time      varchar(20) comment 'ѧԱ��Ч�ڽ���ʱ��',
   second_subject_coach varchar(32) comment '�ƶ�����Ա',
   third_subject_coach  varchar(32) comment '��������Ա',
   referrer             varchar(32) comment '�Ƽ���',
   remark               varchar(200) comment '��ע',
   open_id              varchar(64) comment '΢��opne_id',
   elec_sign            varchar(2000) comment '����ǩ��',
   primary key (id)
);

alter table trainee_information comment 'ѧ��������Ϣ��';

/*==============================================================*/
/* Table: trainee_status                                        */
/*==============================================================*/
create table trainee_status
(
   id                   varchar(32) not null comment 'Ψһ��ʶ',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(30) comment 'ѧԱ����',
   id_card_no           varchar(20) comment 'ѧԱ���֤',
   operator             varchar(64) comment '������',
   status               varchar(4) comment '״̬',
   type                 varchar(20) comment '����',
   remark               varchar(200) comment '��ע',
   operate_time         varchar(20) comment '����ʱ��',
   primary key (id)
);

alter table trainee_status comment 'ѧԱ״̬��';

/*==============================================================*/
/* Table: trainee_test_info                                     */
/*==============================================================*/
create table trainee_test_info
(
   ID                   varchar(32) not null comment 'Ψһ��ʶ',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(30) comment 'ѧԱ����',
   id_card_no           varchar(20) comment 'ѧԱ���֤��',
   subject              varchar(4) comment '��Ŀ',
   test_place           varchar(32) comment '���Գ���',
   test_result          varchar(4) comment '���Խ��',
   remark               varchar(200) comment '��ע',
   test_time            varchar(20) comment 'Լ��ʱ��',
   pay_status           varchar(4) comment '�ɷ�״̬',
   operate_time         varchar(20) comment '����ʱ��',
   operator             varchar(64) comment '������',
   primary key (ID)
);

alter table trainee_test_info comment 'ѧԱ������Ϣ��';

/*==============================================================*/
/* Table: training_record                                       */
/*==============================================================*/
create table training_record
(
   id                   varchar(32) not null comment '����',
   coach_id             varchar(32) comment '����id',
   coach_name           varchar(30) comment '��������',
   trainee_id           varchar(32) comment 'ѧԱid',
   trainee_name         varchar(30) comment 'ѧԱ����',
   train_start_time     varchar(20) comment '��ѵ��ʼʱ��',
   train_end_time       varchar(20) comment '��ѵ����ʱ��',
   train_times          int comment '��ѵʱ��',
   car_type             varchar(4) comment '����',
   operate_time         varchar(20) comment '����ʱ��',
   operator             varchar(64) comment '������',
   primary key (id)
);

alter table training_record comment '��ѵ��¼��';

/*
Navicat MySQL Data Transfer

Source Server         : 47.98.39.45
Source Server Version : 50636
Source Host           : 47.98.39.45:9097
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-08-27 11:51:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_clk_ptjs
-- ----------------------------
CREATE TABLE `sys_clk_ptjs` (
  `JS_ID` varchar(32) NOT NULL COMMENT '��ɫid',
  `JSMC` varchar(32) DEFAULT NULL COMMENT '��ɫ����',
  `JSLX` varchar(32) DEFAULT NULL COMMENT '��ɫ����',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `JGDM` varchar(20) DEFAULT NULL COMMENT '��������',
  `SM` text COMMENT '˵��',
  PRIMARY KEY (`JS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_clk_ptyh
-- ----------------------------

CREATE TABLE `sys_clk_ptyh` (
  `YHID` varchar(32) NOT NULL COMMENT '�û�id',
  `ZH` varchar(32) DEFAULT NULL COMMENT '�˺�',
  `MM` varchar(32) DEFAULT NULL COMMENT '����',
  `SJH` varchar(32) DEFAULT NULL COMMENT '�ֻ���',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `JGDM` varchar(20) DEFAULT NULL COMMENT '��������',
  `XM` varchar(32) DEFAULT NULL COMMENT '����',
  `LX` char(2) DEFAULT NULL COMMENT '����',
  `XB` char(1) DEFAULT NULL COMMENT '�Ա�',
  `ZJHM` varchar(32) DEFAULT NULL COMMENT '֤������',
  `MMYXQ` datetime(6) DEFAULT NULL COMMENT '������Ч��',
  `ZW` varchar(32) DEFAULT NULL COMMENT 'ְ��',
  PRIMARY KEY (`YHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ƽ̨�û���';


INSERT INTO `sys_clk_ptyh` VALUES ('1', 'admini', '4DA3BB20330A34F4', '�ֻ���', 'cjr', '2018-03-16 06:52:00.000000', null, null, '01', '100', '��������Ա', 'su', '1', '֤������', null, '����Ա');
-- ----------------------------
-- Table structure for sys_fwgn
-- ----------------------------

CREATE TABLE `sys_fwgn` (
  `GNDM` varchar(32) NOT NULL COMMENT '���ܴ���',
  `GNMC` varchar(32) DEFAULT NULL COMMENT '��������',
  `FWDM` varchar(32) DEFAULT NULL COMMENT '�������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `BZ` varchar(255) DEFAULT NULL COMMENT '��ע',
  `URL` varchar(255) DEFAULT NULL COMMENT 'URL',
  `FJD` varchar(32) DEFAULT NULL COMMENT '���ڵ�',
  `TZDZ` varchar(32) DEFAULT NULL COMMENT '��ת��ַ',
  `TB` varchar(32) DEFAULT NULL COMMENT 'ͼ��',
  `API_QZ` varchar(64) DEFAULT NULL COMMENT 'APIǰ׺',
  `API_HZ` varchar(64) DEFAULT NULL COMMENT 'API��׺',
  `PX` double DEFAULT NULL COMMENT '����',
  PRIMARY KEY (`GNDM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_fwgn` VALUES ('system', 'ϵͳ����', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-05-03 14:47:00.000000', '1-��������Ա', '00', null, 'system', null, null, 'navicon-round', '/', null, '1');
INSERT INTO `sys_fwgn` VALUES ('system-advertising', '�����', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 11:18:00.000000', '1-��������Ա', '00', null, 'system-advertising', 'system', null, 'images', '/api/hd/', null, '11');
INSERT INTO `sys_fwgn` VALUES ('system-daily', '��־����', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 11:00:03.000000', '1-��������Ա', '00', null, 'system-daily', 'system', null, 'android-create', '/api/rz/', null, '7');
INSERT INTO `sys_fwgn` VALUES ('system-dictionary', '�ֵ����', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 10:58:04.000000', '1-��������Ա', '00', null, 'system-dictionary', 'system', null, 'ios-keypad', '/api/zd/', null, '4');
INSERT INTO `sys_fwgn` VALUES ('system-framework', '��֯����', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 10:57:00.000000', '1-��������Ա', '00', null, 'system-framework', 'system', null, 'flag', '/api/gn/', null, '3');
INSERT INTO `sys_fwgn` VALUES ('system-function', '���ܹ���', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 10:58:00.000000', '1-��������Ա', '00', null, 'system-function', 'system', null, 'ios-cog', '/api/gn/', null, '6');
INSERT INTO `sys_fwgn` VALUES ('system-ITSM', '�������', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 10:59:00.000000', '1-��������Ա', '00', null, 'system-ITSM', 'system', null, 'ios-briefcase', '/api/fw/', null, '5');
INSERT INTO `sys_fwgn` VALUES ('system-notice', '�豸�ն�', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 11:16:00.000000', '1-��������Ա', '00', null, 'system-notice', 'system', null, 'android-camera', '/api/zdgl/', null, '9');
INSERT INTO `sys_fwgn` VALUES ('system-role', '��ɫ����', '1', '2018-04-23 00:00:00.000000', '1', '2018-04-27 17:24:02.000000', '1-��������Ա', '00', ' ', 'system-role', 'system', null, 'ios-people', '/api/js/', null, '2');
INSERT INTO `sys_fwgn` VALUES ('system-suggestions', '�������', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-28 11:16:05.000000', '1-��������Ա', '00', null, 'system-suggestions', 'system', null, 'ios-list-outline', '/api/yj/', null, '8');
INSERT INTO `sys_fwgn` VALUES ('system-user', '�û�����', '1', '2018-04-09 00:00:00.000000', '��ʼ����', '2018-04-27 17:23:04.000000', '1-��������Ա', '00', null, 'system-user', 'system', null, 'person-stalker', '/api/yh/', null, '1');


-- ----------------------------
-- Table structure for sys_fwgn_copy
-- ----------------------------

CREATE TABLE `sys_fwgn_copy` (
  `GNDM` varchar(32) NOT NULL COMMENT '���ܴ���',
  `GNMC` varchar(32) DEFAULT NULL COMMENT '��������',
  `FWDM` varchar(32) DEFAULT NULL COMMENT '�������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `BZ` varchar(255) DEFAULT NULL COMMENT '��ע',
  `URL` varchar(255) DEFAULT NULL COMMENT 'URL',
  `FJD` varchar(32) DEFAULT NULL COMMENT '���ڵ�',
  `TZDZ` varchar(32) DEFAULT NULL COMMENT '��ת��ַ',
  `TB` varchar(32) DEFAULT NULL COMMENT 'ͼ��',
  `API_QZ` varchar(64) DEFAULT NULL COMMENT 'APIǰ׺',
  `API_HZ` varchar(64) DEFAULT NULL COMMENT 'API��׺',
  PRIMARY KEY (`GNDM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_hdyx
-- ----------------------------

CREATE TABLE `sys_hdyx` (
  `HD_ID` varchar(32) NOT NULL COMMENT '�id',
  `KSSJ` datetime(6) DEFAULT NULL COMMENT '�ʱ�俪ʼ',
  `JSSJ` datetime(6) DEFAULT NULL COMMENT '�ʱ�����',
  `HDLX` varchar(32) DEFAULT NULL COMMENT '�����(00 ΢�š�10����վ��)',
  `JGDM` varchar(20) DEFAULT NULL COMMENT '��������',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬(00δ��ʼ 10 �ѿ�ʼ  20 �ѽ���)',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `HDBT` varchar(32) DEFAULT NULL COMMENT '�����',
  `URL` varchar(255) DEFAULT NULL COMMENT 'URL',
  `WJLX` varchar(32) DEFAULT NULL COMMENT '�ļ�����,ͼƬ����Ƶ',
  `WZ` varchar(32) DEFAULT NULL COMMENT '����վ��λ��(10�� 20�� 30��)',
  PRIMARY KEY (`HD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�Ӫ��';

-- ----------------------------
-- Table structure for sys_hsgs
-- ----------------------------

CREATE TABLE `sys_hsgs` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `CX` char(2) DEFAULT NULL COMMENT '����',
  `LX` char(2) DEFAULT NULL COMMENT '����',
  `NR` varchar(32) DEFAULT NULL COMMENT '����',
  `JE` decimal(10,2) DEFAULT NULL COMMENT '���',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���㹫ʽ';

-- ----------------------------
-- Table structure for sys_jgsqlb
-- ----------------------------

CREATE TABLE `sys_jgsqlb` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `JGDM` varchar(20) DEFAULT NULL COMMENT '��������',
  `FWDM` varchar(32) DEFAULT NULL COMMENT '�������',
  `GNDM` varchar(32) DEFAULT NULL COMMENT '���ܴ���',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `YXQ` datetime(6) DEFAULT NULL COMMENT '��Ч��'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_jgsqlb` VALUES ('443091727192948736', '100', '1', 'FleetManagement', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091727465578496', '100', '1', 'VehicleMonitoring', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091727771762688', '100', '1', 'abnormal', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091726173732864', '100', '1', 'system', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091727046148096', '100', '1', 'system-user', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091728732258304', '100', '1', 'system-role', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091728845504512', '100', '1', 'VehicleScheduling', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091728954556416', '100', '1', 'vehicle-management', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091729067802624', '100', '1', 'system-framework', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091729483038720', '100', '1', 'system-dictionary', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091729596284928', '100', '1', 'ElectronicFence', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091731169148928', '100', '1', 'DriverManagement', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091731290783744', '100', '1', 'system-ITSM', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091731399835648', '100', '1', 'OverspeedLimit', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091731504693248', '100', '1', 'mergeVideo', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091731609550848', '100', '1', 'CloudPhoto', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091731722797056', '100', '1', 'system-function', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091732045758464', '100', '1', 'CloudVideo', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091732456800256', '100', '1', 'OrderManagement', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091732561657856', '100', '1', 'Establish', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091732670709760', '100', '1', 'ToExamine', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091732796538880', '100', '1', 'Consult', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091732901396480', '100', '1', 'Assignment', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091733018836992', '100', '1', 'Confirm', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091734679781376', '100', '1', 'ShuttleBus', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091735225040896', '100', '1', 'dz_Confirm', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091736755961856', '100', '1', 'system-daily', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091737028591616', '100', '1', 'ScManage', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091737464799232', '100', '1', 'system-suggestions', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091737582239744', '100', '1', 'Sc_SiteMaintenance', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091737762594816', '100', '1', 'system-notice', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091738840530944', '100', '1', 'Sc_LineMaintenance', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091739083800576', '100', '1', 'system-propelling', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091739230601216', '100', '1', 'Sc_Scheduling', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091739465482240', '100', '1', 'system-advertising', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091739570339840', '100', '1', 'OperationMonitoring', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091739696168960', '100', '1', 'SiteMaintenance', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091740274982912', '100', '1', 'LineMaintenance', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091740375646208', '100', '1', 'Scheduling', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443091740480503808', '100', '1', 'BusMonitor', '2018-05-07 16:48:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443161825626816512', '100', '11', '11', '2018-05-07 21:26:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443514721631469568', '100', '1', 'FinancialSettlement', '2018-05-08 20:49:00.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443515028474167296', '100', '1', 'Reimbursement', '2018-05-08 20:50:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443737871900213248', '100', '1', 'ReceivablesManagement', '2018-05-09 11:35:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443738321554767872', '100', '1', 'PaymentManagement', '2018-05-09 11:37:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443738576300015616', '100', '1', 'AccountingFormula', '2018-05-09 11:38:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443739121047830528', '100', '1', 'Echarts', '2018-05-09 11:40:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443739895245045760', '100', '1', 'SafeDriving', '2018-05-09 11:43:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443740102347194368', '100', '1', 'OrderStatistics', '2018-05-09 11:44:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443740291619356672', '100', '1', 'BusStatistics', '2018-05-09 11:45:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443740475124350976', '100', '1', 'TrafficStatistics', '2018-05-09 11:46:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443740677700845568', '100', '1', 'TerminalAnomaly', '2018-05-09 11:47:00.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443740845934379008', '100', '1', 'VehicleDetails', '2018-05-09 11:47:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443741009910693888', '100', '1', 'OverspeedStatistics', '2018-05-09 11:48:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443741217797177344', '100', '1', 'VehicleAccident', '2018-05-09 11:49:01.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443741714767675392', '100', '1', 'CollectionStatistics', '2018-05-09 11:51:00.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443741898012622848', '100', '1', 'PaymentStatistics', '2018-05-09 11:51:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443742210559574016', '100', '1', 'ReimbursementStatistics', '2018-05-09 11:53:00.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443783929988644864', '100', '1', 'TemporaryCarManagement', '2018-05-09 14:38:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443784412799172608', '100', '1', 'UnitManagement', '2018-05-09 14:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443784655611625472', '100', '1', 'VehicleManagement', '2018-05-09 14:41:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('443785382023135232', '100', '1', 'AccidentManagement', '2018-05-09 14:44:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('446624800085901312', '100', '1', 'AccidentManagement', '2018-05-17 10:47:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167198777344', '100038', null, 'system-framework', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167198777345', '100038', null, 'system-suggestions', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167198777346', '100038', null, 'system-notice', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455497116333113344', '100002', null, 'mergeVideo', '2018-06-10 22:22:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455497116333113345', '100002', null, 'mergeVideo', '2018-06-10 22:22:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167198777347', '100038', null, 'system-propelling', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167198777348', '100038', null, 'system-advertising', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167198777349', '100038', null, 'VehicleScheduling', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886208', '100038', null, 'mergeVideo', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886209', '100038', null, 'CloudPhoto', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886210', '100038', null, 'abnormal', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886211', '100038', null, 'OrderManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886212', '100038', null, 'Establish', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543127261184', '100038029', null, 'BusMonitor', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543223730176', '100038029', null, 'VehicleMonitoring', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543316004864', '100038029', null, 'BusMonitor', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543412473856', '100038029', null, 'VehicleScheduling', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543513137152', '100038029', null, 'DriverManagement', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543605411840', '100038029', null, 'OrderManagement', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543697686528', '100038029', null, 'dz_Confirm', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691542938517504', '100038029', null, 'OperationMonitoring', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543030792192', '100038029', null, 'VehicleMonitoring', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543789961216', '100038029', null, 'dz_Confirm', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543882235904', '100038029', null, 'DriverManagement', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691543978704896', '100038029', null, 'OrderManagement', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691544070979584', '100038029', null, 'dz_Confirm', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455691544171642880', '100038029', null, 'dz_Confirm', '2018-06-11 11:15:03.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106121322498', '100014', null, 'system-framework', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106188431360', '100014', null, 'system-suggestions', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106188431361', '100014', null, 'system-notice', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106188431362', '100014', null, 'system-propelling', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106121322496', '100014', null, 'system-role', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145799237632', '100007', null, 'VehicleScheduling', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145799237633', '100007', null, 'mergeVideo', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145799237634', '100007', null, 'CloudPhoto', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145799237635', '100007', null, 'abnormal', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145866346496', '100007', null, 'OrderManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145866346497', '100007', null, 'Establish', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145866346498', '100007', null, 'ToExamine', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145866346499', '100007', null, 'Consult', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145866346500', '100007', null, 'Assignment', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145933455360', '100007', null, 'Confirm', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145933455361', '100007', null, 'dz_Confirm', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145933455362', '100007', null, 'DriverManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145933455363', '100007', null, 'ShuttleBus', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145933455364', '100007', null, 'SiteMaintenance', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145933455365', '100007', null, 'LineMaintenance', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145996369920', '100007', null, 'Scheduling', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145996369921', '100007', null, 'vehicle-management', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145996369922', '100007', null, 'FleetManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145996369923', '100007', null, 'ElectronicFence', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145996369924', '100007', null, 'OverspeedLimit', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467145996369925', '100007', null, 'CloudVideo', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478784', '100007', null, 'ScManage', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478785', '100007', null, 'Sc_SiteMaintenance', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478786', '100007', null, 'Sc_LineMaintenance', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478787', '100007', null, 'Sc_Scheduling', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478788', '100007', null, 'TemporaryCarManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478789', '100007', null, 'UnitManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146063478790', '100007', null, 'VehicleManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146130587648', '100007', null, 'AccidentManagement', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146130587649', '100007', null, 'OperationMonitoring', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146130587650', '100007', null, 'VehicleMonitoring', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456467146130587651', '100007', null, 'BusMonitor', '2018-06-13 14:37:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106188431363', '100014', null, 'system-advertising', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106188431364', '100014', null, 'VehicleScheduling', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106121322497', '100014', null, 'system-user', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106188431365', '100014', null, 'mergeVideo', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345920', '100014', null, 'CloudPhoto', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345921', '100014', null, 'abnormal', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345922', '100014', null, 'OrderManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345923', '100014', null, 'Establish', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345924', '100014', null, 'ToExamine', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345925', '100014', null, 'Consult', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106251345926', '100014', null, 'Assignment', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454784', '100014', null, 'Confirm', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454785', '100014', null, 'dz_Confirm', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454786', '100014', null, 'DriverManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454787', '100014', null, 'ShuttleBus', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454788', '100014', null, 'SiteMaintenance', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454789', '100014', null, 'LineMaintenance', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454790', '100014', null, 'Scheduling', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106318454791', '100014', null, 'vehicle-management', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106381369344', '100014', null, 'FleetManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106381369345', '100014', null, 'ElectronicFence', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106381369346', '100014', null, 'OverspeedLimit', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106381369347', '100014', null, 'CloudVideo', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106381369348', '100014', null, 'ScManage', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106381369349', '100014', null, 'Sc_SiteMaintenance', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478208', '100014', null, 'Sc_LineMaintenance', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478209', '100014', null, 'Sc_Scheduling', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478210', '100014', null, 'TemporaryCarManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478211', '100014', null, 'UnitManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478212', '100014', null, 'VehicleManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478213', '100014', null, 'AccidentManagement', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106448478214', '100014', null, 'OperationMonitoring', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106515587072', '100014', null, 'VehicleMonitoring', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498106515587073', '100014', null, 'BusMonitor', '2018-06-13 16:40:02.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167135862784', '100038', null, 'system-role', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167135862785', '100038', null, 'system-user', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886213', '100038', null, 'ToExamine', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167265886214', '100038', null, 'Consult', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995072', '100038', null, 'Assignment', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995073', '100038', null, 'Confirm', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995074', '100038', null, 'dz_Confirm', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995075', '100038', null, 'DriverManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995076', '100038', null, 'ShuttleBus', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995077', '100038', null, 'SiteMaintenance', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167332995078', '100038', null, 'LineMaintenance', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909632', '100038', null, 'Scheduling', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909633', '100038', null, 'vehicle-management', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909634', '100038', null, 'FleetManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909635', '100038', null, 'ElectronicFence', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909636', '100038', null, 'OverspeedLimit', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909637', '100038', null, 'CloudVideo', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167395909638', '100038', null, 'ScManage', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018496', '100038', null, 'Sc_SiteMaintenance', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018497', '100038', null, 'Sc_LineMaintenance', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018498', '100038', null, 'Sc_Scheduling', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018499', '100038', null, 'TemporaryCarManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018500', '100038', null, 'UnitManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018501', '100038', null, 'VehicleManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167463018502', '100038', null, 'AccidentManagement', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167530127360', '100038', null, 'OperationMonitoring', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167530127361', '100038', null, 'VehicleMonitoring', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('456498167530127362', '100038', null, 'BusMonitor', '2018-06-13 16:40:04.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455334786915893248', '100002001', null, 'VehicleScheduling', '2018-06-10 11:37:05.000000', '1-��������Ա', null, null, null);
INSERT INTO `sys_jgsqlb` VALUES ('455334787054305280', '100002001', null, 'mergeVideo', '2018-06-10 11:37:05.000000', '1-��������Ա', null, null, null);

-- ----------------------------
-- Table structure for sys_js_fw
-- ----------------------------

CREATE TABLE `sys_js_fw` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `JSDM` varchar(32) DEFAULT NULL COMMENT '��ɫ����',
  `FWDM` varchar(32) DEFAULT NULL COMMENT '�������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_js_gn
-- ----------------------------

CREATE TABLE `sys_js_gn` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `JSDM` varchar(32) DEFAULT NULL COMMENT '��ɫ����',
  `GNDM` varchar(32) DEFAULT NULL COMMENT '���ܴ���',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `FWDM` varchar(32) DEFAULT NULL COMMENT '�������',
  `FGNDM` varchar(32) DEFAULT NULL COMMENT '�����ܴ���',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sys_js_gn` VALUES ('1', '1', '1', null, null, '1', '1');
INSERT INTO `sys_js_gn` VALUES ('434305549195018240', 'eee', 'system-role', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018241', 'eee', 'system', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('434305549195018242', 'eee', 'system-user', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018243', 'eee', 'system-framework', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018244', 'eee', 'system-dictionary', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018245', 'eee', 'system-ITSM', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018246', 'eee', 'system-function', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018247', 'eee', 'system-daily', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018248', 'eee', 'system-suggestions', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018249', 'eee', 'system-notice', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018250', 'eee', 'system-propelling', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018251', 'eee', 'system-advertising', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('434305549195018252', 'eee', 'VehicleScheduling', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('434305549195018253', 'eee', 'vehicle-management', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018254', 'eee', 'DriverManagement', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018255', 'eee', 'FleetManagement', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018256', 'eee', 'ElectronicFence', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018257', 'eee', 'OverspeedLimit', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018258', 'eee', 'CloudVideo', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018259', 'eee', 'ScManage', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('434305549195018260', 'eee', 'Sc_SiteMaintenance', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('434305549195018261', 'eee', 'Sc_LineMaintenance', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('434305549195018262', 'eee', 'Sc_Scheduling', '2018-04-13 10:55:01.000000', '1-��������Ա', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('435778198454665216', '1231', 'system-role', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665217', '1231', 'system', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('435778198454665218', '1231', 'system-user', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665219', '1231', 'system-framework', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665220', '1231', 'system-dictionary', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665221', '1231', 'system-ITSM', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665222', '1231', 'system-function', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665223', '1231', 'system-daily', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665224', '1231', 'system-suggestions', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665225', '1231', 'system-notice', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665226', '1231', 'system-propelling', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435778198454665227', '1231', 'system-advertising', '2018-04-17 12:26:05.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286656', '1221', 'system-role', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286657', '1221', 'system', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('435908246457286658', '1221', 'system-user', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286659', '1221', 'system-framework', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286660', '1221', 'system-dictionary', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286661', '1221', 'system-ITSM', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286662', '1221', 'system-function', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286663', '1221', 'system-daily', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286664', '1221', 'system-suggestions', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286665', '1221', 'system-notice', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286666', '1221', 'system-propelling', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('435908246457286667', '1221', 'system-advertising', '2018-04-17 21:03:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741504', '1212', 'system-role', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741505', '1212', 'system', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('436255386190741506', '1212', 'system-user', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741507', '1212', 'system-framework', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741508', '1212', 'system-dictionary', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741509', '1212', 'system-ITSM', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741510', '1212', 'system-function', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741511', '1212', 'system-daily', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741512', '1212', 'system-suggestions', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741513', '1212', 'system-notice', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741514', '1212', 'system-propelling', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436255386190741515', '1212', 'system-advertising', '2018-04-18 20:03:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561920', '12', 'system-role', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561921', '12', 'system', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('436284395796561922', '12', 'system-user', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561923', '12', 'system-framework', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561924', '12', 'system-dictionary', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561925', '12', 'system-ITSM', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561926', '12', 'system-function', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561927', '12', 'system-daily', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561928', '12', 'system-suggestions', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561929', '12', 'system-notice', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561930', '12', 'system-propelling', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436284395796561931', '12', 'system-advertising', '2018-04-18 21:58:02.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116352', '23123', 'system-role', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116353', '23123', 'system', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('436288327990116354', '23123', 'system-user', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116355', '23123', 'system-framework', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116356', '23123', 'system-dictionary', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116357', '23123', 'system-ITSM', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116358', '23123', 'system-function', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116359', '23123', 'system-daily', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116360', '23123', 'system-suggestions', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116361', '23123', 'system-notice', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116362', '23123', 'system-propelling', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436288327990116363', '23123', 'system-advertising', '2018-04-18 22:14:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404928', '0000', 'system-role', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404929', '0000', 'system-framework', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404930', '0000', 'system-dictionary', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404931', '0000', 'system-ITSM', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404932', '0000', 'system-function', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404933', '0000', 'system-suggestions', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404934', '0000', 'system-notice', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404935', '0000', 'system-propelling', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436463544385404936', '0000', 'system-advertising', '2018-04-19 09:50:01.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728064', '111222', 'system-role', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728065', '111222', 'system', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('436471966480728066', '111222', 'system-user', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728067', '111222', 'system-framework', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728068', '111222', 'system-dictionary', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728069', '111222', 'system-ITSM', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728070', '111222', 'system-function', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728071', '111222', 'system-daily', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728072', '111222', 'system-suggestions', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728073', '111222', 'system-notice', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728074', '111222', 'system-propelling', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('436471966480728075', '111222', 'system-advertising', '2018-04-19 10:23:04.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('438104660780253184', '123', 'VehicleMonitoring', '2018-04-23 22:31:03.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('438104660780253185', '123', 'OperationMonitoring', '2018-04-23 22:31:03.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('438104660780253186', '123', 'BusMonitor', '2018-04-23 22:31:03.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('439154967182311424', 'asdgrgftnA', 'system-role', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311425', 'asdgrgftnA', 'system', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', null);
INSERT INTO `sys_js_gn` VALUES ('439154967182311426', 'asdgrgftnA', 'system-user', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311427', 'asdgrgftnA', 'system-framework', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311428', 'asdgrgftnA', 'system-dictionary', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311429', 'asdgrgftnA', 'system-ITSM', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311430', 'asdgrgftnA', 'system-function', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311431', 'asdgrgftnA', 'system-daily', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311432', 'asdgrgftnA', 'system-suggestions', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311433', 'asdgrgftnA', 'system-notice', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311434', 'asdgrgftnA', 'system-propelling', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('439154967182311435', 'asdgrgftnA', 'system-advertising', '2018-04-26 20:05:00.000000', '438108538678542336-����001', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026048', '000000', 'VehicleMonitoring', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('442809282145026049', '000000', 'mergeVideo', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026050', '000000', 'CloudPhoto', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026051', '000000', 'abnormal', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026052', '000000', 'OrderManagement', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026053', '000000', 'Establish', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026054', '000000', 'DriverManagement', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026055', '000000', 'system-role', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026056', '000000', 'system', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', null);
INSERT INTO `sys_js_gn` VALUES ('442809282145026057', '000000', 'system-user', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026058', '000000', 'system-framework', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026059', '000000', 'ToExamine', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026060', '000000', 'Consult', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026061', '000000', 'Assignment', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026062', '000000', 'Confirm', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026063', '000000', 'ShuttleBus', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026064', '000000', 'SiteMaintenance', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'ShuttleBus');
INSERT INTO `sys_js_gn` VALUES ('442809282145026065', '000000', 'LineMaintenance', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'ShuttleBus');
INSERT INTO `sys_js_gn` VALUES ('442809282145026066', '000000', 'Scheduling', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'ShuttleBus');
INSERT INTO `sys_js_gn` VALUES ('442809282145026067', '000000', 'dz_Confirm', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026068', '000000', 'Assignment_max', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('442809282145026069', '000000', 'system-dictionary', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026070', '000000', 'system-ITSM', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026071', '000000', 'system-function', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026072', '000000', 'system-daily', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026073', '000000', 'system-suggestions', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026074', '000000', 'system-notice', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026075', '000000', 'system-propelling', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026076', '000000', 'system-advertising', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('442809282145026077', '000000', 'VehicleScheduling', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', null);
INSERT INTO `sys_js_gn` VALUES ('442809282145026078', '000000', 'vehicle-management', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026079', '000000', 'FleetManagement', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026080', '000000', 'ElectronicFence', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026081', '000000', 'OverspeedLimit', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026082', '000000', 'CloudVideo', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026083', '000000', 'ScManage', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('442809282145026084', '000000', 'Sc_SiteMaintenance', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('442809282145026085', '000000', 'Sc_LineMaintenance', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('442809282145026086', '000000', 'Sc_Scheduling', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('442809282145026087', '000000', 'OperationMonitoring', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', null);
INSERT INTO `sys_js_gn` VALUES ('442809282145026088', '000000', 'BusMonitor', '2018-05-06 22:05:05.000000', '442806265194741760-��������B', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('455691389355687936', '111', 'VehicleMonitoring', '2018-06-11 11:14:05.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('455691389355687937', '111', 'DriverManagement', '2018-06-11 11:14:05.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('455691389355687938', '111', 'dz_Confirm', '2018-06-11 11:14:05.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('455691389355687939', '111', 'OperationMonitoring', '2018-06-11 11:14:05.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('455691389355687940', '111', 'BusMonitor', '2018-06-11 11:14:05.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('455691444028440576', '0009222', 'VehicleMonitoring', '2018-06-11 11:15:00.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('455691444028440577', '0009222', 'DriverManagement', '2018-06-11 11:15:00.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('455691444028440578', '0009222', 'dz_Confirm', '2018-06-11 11:15:00.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('455691444028440579', '0009222', 'OperationMonitoring', '2018-06-11 11:15:00.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('455691444028440580', '0009222', 'BusMonitor', '2018-06-11 11:15:00.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('455696480204750848', '10012', 'system-role', '2018-06-11 11:35:00.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('455696480204750849', '10012', 'FinancialSettlement', '2018-06-11 11:35:00.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('455696480204750850', '10012', 'Reimbursement', '2018-06-11 11:35:00.000000', '1-��������Ա', '1', 'FinancialSettlement');
INSERT INTO `sys_js_gn` VALUES ('455696480204750851', '10012', 'ReceivablesManagement', '2018-06-11 11:35:00.000000', '1-��������Ա', '1', 'FinancialSettlement');
INSERT INTO `sys_js_gn` VALUES ('455696480204750852', '10012', 'PaymentManagement', '2018-06-11 11:35:00.000000', '1-��������Ա', '1', 'FinancialSettlement');
INSERT INTO `sys_js_gn` VALUES ('455696480204750853', '10012', 'AccountingFormula', '2018-06-11 11:35:00.000000', '1-��������Ա', '1', 'FinancialSettlement');
INSERT INTO `sys_js_gn` VALUES ('455730829021151232', 'test', 'Establish', '2018-06-11 13:51:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('455730829021151233', 'test', 'system-notice', '2018-06-11 13:51:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414208', 'wdgly', 'VehicleMonitoring', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('461852907256414209', 'wdgly', 'mergeVideo', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414210', 'wdgly', 'CloudPhoto', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414211', 'wdgly', 'abnormal', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414212', 'wdgly', 'OrderManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414213', 'wdgly', 'Establish', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414214', 'wdgly', 'DriverManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414215', 'wdgly', 'system-role', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414216', 'wdgly', 'system-user', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414217', 'wdgly', 'system-framework', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414218', 'wdgly', 'ToExamine', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414219', 'wdgly', 'Consult', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414220', 'wdgly', 'Assignment', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414221', 'wdgly', 'Confirm', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414222', 'wdgly', 'ShuttleBus', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414223', 'wdgly', 'SiteMaintenance', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'ShuttleBus');
INSERT INTO `sys_js_gn` VALUES ('461852907256414224', 'wdgly', 'LineMaintenance', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'ShuttleBus');
INSERT INTO `sys_js_gn` VALUES ('461852907256414225', 'wdgly', 'Scheduling', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'ShuttleBus');
INSERT INTO `sys_js_gn` VALUES ('461852907256414226', 'wdgly', 'dz_Confirm', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OrderManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414227', 'wdgly', 'system-suggestions', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414228', 'wdgly', 'system-notice', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414229', 'wdgly', 'system-propelling', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414230', 'wdgly', 'system-advertising', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'system');
INSERT INTO `sys_js_gn` VALUES ('461852907256414231', 'wdgly', 'VehicleScheduling', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('461852907256414232', 'wdgly', 'vehicle-management', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414233', 'wdgly', 'FleetManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414234', 'wdgly', 'ElectronicFence', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414235', 'wdgly', 'OverspeedLimit', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414236', 'wdgly', 'CloudVideo', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414237', 'wdgly', 'ScManage', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414238', 'wdgly', 'Sc_SiteMaintenance', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('461852907256414239', 'wdgly', 'Sc_LineMaintenance', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('461852907256414240', 'wdgly', 'Sc_Scheduling', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'ScManage');
INSERT INTO `sys_js_gn` VALUES ('461852907256414241', 'wdgly', 'OperationMonitoring', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', null);
INSERT INTO `sys_js_gn` VALUES ('461852907256414242', 'wdgly', 'BusMonitor', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'OperationMonitoring');
INSERT INTO `sys_js_gn` VALUES ('461852907256414243', 'wdgly', 'TemporaryCarManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');
INSERT INTO `sys_js_gn` VALUES ('461852907256414244', 'wdgly', 'UnitManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'TemporaryCarManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414245', 'wdgly', 'VehicleManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'TemporaryCarManagement');
INSERT INTO `sys_js_gn` VALUES ('461852907256414246', 'wdgly', 'AccidentManagement', '2018-06-28 11:18:03.000000', '1-��������Ա', '1', 'VehicleScheduling');

-- ----------------------------
-- Table structure for sys_jzgxx
-- ----------------------------

CREATE TABLE `sys_jzgxx` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `XM` varchar(32) DEFAULT NULL COMMENT '����',
  `XB` char(2) DEFAULT NULL COMMENT '�Ա�',
  `ZW` varchar(16) DEFAULT NULL COMMENT 'ְ��',
  `ZJHM` varchar(16) DEFAULT NULL COMMENT '֤������',
  `JGDM` varchar(32) DEFAULT NULL COMMENT '��������',
  `JDMC` varchar(32) DEFAULT NULL COMMENT '��������',
  `ZGLX` char(4) DEFAULT NULL COMMENT 'ְ������',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `SJHM` varchar(16) DEFAULT NULL COMMENT '�ֻ�����',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------

CREATE TABLE `sys_message` (
  `ID` varchar(32) DEFAULT NULL COMMENT '����',
  `CREATION_TIME` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `MESSAGE` text COMMENT '���ű��⣬��ҵ��ͬ��Ҳ�������ģ�Ҳ����JSON����',
  `TYPE` char(3) DEFAULT NULL COMMENT '1������',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '����',
  `STATUS` char(3) DEFAULT NULL COMMENT '0��δ���� 1���ѷ���  2������ʧ��',
  `SEND_COUNT` char(3) DEFAULT NULL COMMENT '���ʹ���',
  `SEND_TIME` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `REMARK` text COMMENT '��ע',
  `SENDEE_CODE` varchar(200) DEFAULT NULL COMMENT '���շ����(�������ֻ��š�΢����open_id)',
  `BIZ_ID` varchar(32) DEFAULT NULL COMMENT 'ҵ����(����ҵ��)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϣ��-ƽ̨������Ϣ����';

-- ----------------------------
-- Table structure for sys_ptfw
-- ----------------------------

CREATE TABLE `sys_ptfw` (
  `FW_ID` varchar(32) NOT NULL COMMENT '����id',
  `FWMC` varchar(32) DEFAULT NULL COMMENT '��������',
  `FWDM` varchar(32) DEFAULT NULL COMMENT '�������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `API_QZ` varchar(64) DEFAULT NULL COMMENT 'APIǰ׺',
  `TB` varchar(32) DEFAULT NULL COMMENT 'ͼ��',
  PRIMARY KEY (`FW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_ptjg
-- ----------------------------

CREATE TABLE `sys_ptjg` (
  `JGDM` varchar(20) NOT NULL COMMENT '��������',
  `JGMC` varchar(32) DEFAULT NULL COMMENT '��������',
  `JGLX` char(2) DEFAULT NULL COMMENT '��������',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `GLY` varchar(32) DEFAULT NULL COMMENT '����Ա',
  `GLYXM` varchar(32) DEFAULT NULL COMMENT '����Ա����',
  `FJGDM` varchar(32) DEFAULT NULL COMMENT '����������',
  `BZ` varchar(255) DEFAULT NULL COMMENT '��ע',
  `JGDJ` decimal(65,30) DEFAULT NULL COMMENT '�����ȼ�',
  PRIMARY KEY (`JGDM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ƽ̨������';

INSERT INTO `sys_ptjg` VALUES ('100', '�人��ѧ', '10', '10', '2018-03-15 00:00:00.000000', '������', 'w�޸���', '2018-03-15 00:00:00.000000', null, 't����Ա����', null, null, '1.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002', '��ѧѧԺ', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '����', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002001', '��ѧϵ', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002002', '�ڽ�ѧϵ', '10', '10', '2018-05-06 16:09:01.000000', '1-��������Ա', null, null, null, '����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002003', '����ѧϵ', '10', '10', '2018-05-06 16:09:04.000000', '1-��������Ա', null, null, null, '����ѧϵ', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002004', '�����칫��', '10', '10', '2018-05-06 16:10:01.000000', '1-��������Ա', null, null, null, '�����칫��', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002005', 'ѧ�������칫��', '10', '10', '2018-05-06 16:19:02.000000', '1-��������Ա', null, null, null, 'ѧ�������칫��', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002006', '������', '10', '10', '2018-05-06 16:20:00.000000', '1-��������Ա', null, null, null, '������', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002007', '����ѧʵ����', '10', '10', '2018-05-06 18:05:05.000000', '1-��������Ա', null, null, null, '����ѧʵ����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002008', '�����Ƚ���ѧ�о�����', '10', '10', '2018-05-06 18:35:00.000000', '1-��������Ա', null, null, null, '�����Ƚ���ѧ�о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002009', '�����ڽ��������ڽ��Ļ��о�����', '10', '10', '2018-05-06 18:35:02.000000', '1-��������Ա', null, null, null, '�����ڽ��������ڽ��Ļ��о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002010', 'ŷ���ڽ��Ļ��о���', '10', '10', '2018-05-06 18:35:04.000000', '1-��������Ա', null, null, null, 'ŷ���ڽ��Ļ��о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002011', '�й���ѧ���������о�����', '10', '10', '2018-05-06 18:35:05.000000', '1-��������Ա', null, null, null, '�й���ѧ���������о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002012', '��������о�����', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '��������о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002013', '�����о�����', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '�����о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002014', 'Ƥ��ʿ�о�����', '10', '10', '2018-05-06 18:37:01.000000', '1-��������Ա', null, null, null, 'Ƥ��ʿ�о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002015', '��������ѧ�о�����', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '��������ѧ�о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002016', '��ѧ�о���', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '��ѧ�о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002017', '���˼������ѧ�о���', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '���˼������ѧ�о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002018', '�������˼������ѧ�о���', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '�������˼������ѧ�о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002019', '�й���ѧ�о���', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '�й���ѧ�о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002020', 'ë��˼���о���', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, 'ë��˼���о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002021', '�ִ�����ѧ�о�����', '10', '10', '2018-05-06 18:39:03.000000', '1-��������Ա', null, null, null, '�ִ�����ѧ�о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002022', '���״����о���', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '���״����о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002023', '�人��ѧ�����о�����', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '�人��ѧ�����о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002024', '�人��ѧ���������о�����', '10', '10', '2018-05-06 18:40:02.000000', '1-��������Ա', null, null, null, '�人��ѧ���������о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002025', '�й�Ů���о�����', '10', '10', '2018-05-06 18:40:03.000000', '1-��������Ա', null, null, null, '�й�Ů���о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002026', '����ְҵ�����о�����', '10', '10', '2018-05-06 18:40:05.000000', '1-��������Ա', null, null, null, '����ְҵ�����о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002027', '�����Ļ��滮�о�����', '10', '10', '2018-05-06 18:41:00.000000', '1-��������Ա', null, null, null, '�����Ļ��滮�о�����', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002028', '�¹���ѧ�о���', '10', '10', '2018-05-06 18:41:02.000000', '1-��������Ա', null, null, null, '�¹���ѧ�о���', '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100002031', '111', '10', '10', '2018-06-10 10:51:03.000000', '1-��������Ա', null, null, null, null, '100002', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100004', '���������ѧѧԺ', '10', '10', '2018-05-06 16:21:00.000000', '1-��������Ա', null, null, null, '���������ѧѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100005', '�����봫��ѧԺ', '10', '10', '2018-05-06 16:21:04.000000', '1-��������Ա', null, null, null, '�����봫��ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100006', '��ʷѧԺ', '10', '10', '2018-05-06 16:22:00.000000', '1-��������Ա', null, null, null, '��ʷѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100007', '����ϵ', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '����', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100008', '���������ѧԺ', '10', '10', '2018-05-06 16:30:02.000000', '1-��������Ա', null, null, null, '���������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100009', '��ѧԺ', '10', '10', '2018-05-06 17:24:05.000000', '1-��������Ա', null, null, null, '��ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100010', '�����빫������ѧԺ', '10', '10', '2018-05-06 17:25:01.000000', '1-��������Ա', null, null, null, '�����빫������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100011', '���˼����ѧԺ', '10', '10', '2018-05-06 17:33:01.000000', '1-��������Ա', null, null, null, '���˼����ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100012', '���ѧϵ', '10', '10', '2018-05-06 17:34:03.000000', '1-��������Ա', null, null, null, '���ѧϵ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100013', '��Ϣ����ѧԺ', '10', '10', '2018-05-06 17:34:05.000000', '1-��������Ա', null, null, null, '��Ϣ����ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100014', '��ѧ��ͳ��ѧԺ', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '��ѧ��ͳ��ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100015', '��ѧ��ͳ��ѧԺ', '10', '10', '2018-05-06 17:35:05.000000', '1-��������Ա', null, null, null, '��ѧ��ͳ��ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100016', '�����ѧ�뼼��ѧԺ', '10', '10', '2018-05-06 17:36:00.000000', '1-��������Ա', null, null, null, '�����ѧ�뼼��ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100017', '��ѧ����ӿ�ѧѧԺ', '10', '10', '2018-05-06 17:36:01.000000', '1-��������Ա', null, null, null, '��ѧ����ӿ�ѧѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100018', '������ѧѧԺ', '10', '10', '2018-05-06 17:36:02.000000', '1-��������Ա', null, null, null, '������ѧѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100019', '��Դ�뻷����ѧѧԺ', '10', '10', '2018-05-06 17:36:03.000000', '1-��������Ա', null, null, null, '��Դ�뻷����ѧѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100020', '�������еѧԺ', '10', '10', '2018-05-06 17:36:04.000000', '1-��������Ա', null, null, null, '�������еѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100021', '��������ѧԺ', '10', '10', '2018-05-06 17:36:05.000000', '1-��������Ա', null, null, null, '��������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100022', '��ľ��������ѧԺ', '10', '10', '2018-05-06 17:37:00.000000', '1-��������Ա', null, null, null, '��ľ��������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100023', 'ˮ������ѧԺ', '10', '10', '2018-05-06 17:37:01.000000', '1-��������Ա', null, null, null, 'ˮ������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100024', '�������ѧԺ', '10', '10', '2018-05-06 17:38:01.000000', '1-��������Ա', null, null, null, '�������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100025', '������ϢѧԺ', '10', '10', '2018-05-06 17:38:02.000000', '1-��������Ա', null, null, null, '������ϢѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100026', '�����ѧԺ', '10', '10', '2018-05-06 17:38:03.000000', '1-��������Ա', null, null, null, '�����ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100027', '�������ѧԺ', '10', '10', '2018-05-06 17:38:04.000000', '1-��������Ա', null, null, null, '�������ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100028', 'ң����Ϣ����ѧԺ', '10', '10', '2018-05-06 17:38:05.000000', '1-��������Ա', null, null, null, 'ң����Ϣ����ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100029', '���ѧԺ', '10', '10', '2018-05-06 17:39:00.000000', '1-��������Ա', null, null, null, '���ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100030', 'ӡˢ���װϵ', '10', '10', '2018-05-06 17:39:01.000000', '1-��������Ա', null, null, null, 'ӡˢ���װϵ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100031', '����ҽѧԺ', '10', '10', '2018-05-06 17:39:02.000000', '1-��������Ա', null, null, null, '����ҽѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100032', '����ѧԺ', '10', '10', '2018-05-06 17:39:03.000000', '1-��������Ա', null, null, null, '����ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100033', 'ҩѧԺ', '10', '10', '2018-05-06 17:42:05.000000', '1-��������Ա', null, null, null, 'ҩѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100034', 'HOPE����ѧԺ', '10', '10', '2018-05-06 17:43:00.000000', '1-��������Ա', null, null, null, 'HOPE����ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100035', '��һ�ٴ�ѧԺ', '10', '10', '2018-05-06 17:43:01.000000', '1-��������Ա', null, null, null, '��һ�ٴ�ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100036', '�ڶ��ٴ�ѧԺ', '10', '10', '2018-05-06 17:43:02.000000', '1-��������Ա', null, null, null, '�ڶ��ٴ�ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100037', '��ǻҽѧԺ', '10', '10', '2018-05-06 17:43:03.000000', '1-��������Ա', null, null, null, '��ǻҽѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100038', '��ѧԺ', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '��ѧԺ', '100', null, '2.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100038029', '�й��ֵ�����ѧ������', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '�й��ֵ�����ѧ������', '100038', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('100038030', '�й��Ŵ���ѧ������', '10', '10', '2018-05-06 00:00:00.000000', '1-��������Ա', null, null, null, '�й��Ŵ���ѧ������', '100038', null, '3.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('101', '11', '10', '10', '2018-06-10 10:49:04.000000', '1-��������Ա', null, null, null, null, null, null, '1.000000000000000000000000000000');
INSERT INTO `sys_ptjg` VALUES ('102', '���Դ�ѧ', '10', '10', '2018-03-15 00:00:00.000000', '������', 'w�޸���', '2018-03-15 00:00:00.000000', null, 't����Ա����', null, null, '1.000000000000000000000000000000');

-- ----------------------------
-- Table structure for sys_ptrz
-- ----------------------------

CREATE TABLE `sys_ptrz` (
  `RZ_ID` varchar(32) NOT NULL COMMENT '��־id',
  `CZLX` varchar(32) DEFAULT NULL COMMENT '��������',
  `CZSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CZR` varchar(64) DEFAULT NULL COMMENT '������',
  `DX_ID` varchar(32) DEFAULT NULL COMMENT '����id',
  `DXLX` varchar(32) DEFAULT NULL COMMENT '��������',
  `CS` text COMMENT '����',
  `JG` text COMMENT '���',
  `ZXSJ` decimal(65,30) DEFAULT NULL COMMENT 'ִ��ʱ��',
  `SM` varchar(32) DEFAULT NULL COMMENT '˵��',
  `FF` varchar(64) DEFAULT NULL COMMENT '����',
  PRIMARY KEY (`RZ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ƽ̨��־��';

-- ----------------------------
-- Table structure for sys_rlb
-- ----------------------------

CREATE TABLE `sys_rlb` (
  `RQDM` varchar(8) NOT NULL COMMENT '���ڴ���',
  `XQ` decimal(65,30) DEFAULT NULL COMMENT '����',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `RQ` varchar(16) DEFAULT NULL COMMENT '����',
  PRIMARY KEY (`RQDM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������';

INSERT INTO `sys_rlb` VALUES ('1122', '2.000000000000000000000000000000', '1', '2018-01-02');
INSERT INTO `sys_rlb` VALUES ('1123', '3.000000000000000000000000000000', '1', '2018-01-03');
INSERT INTO `sys_rlb` VALUES ('1124', '4.000000000000000000000000000000', '1', '2018-01-04');
INSERT INTO `sys_rlb` VALUES ('1125', '5.000000000000000000000000000000', '1', '2018-01-05');
INSERT INTO `sys_rlb` VALUES ('1126', '6.000000000000000000000000000000', '2', '2018-01-06');
INSERT INTO `sys_rlb` VALUES ('1127', '7.000000000000000000000000000000', '2', '2018-01-07');
INSERT INTO `sys_rlb` VALUES ('1128', '1.000000000000000000000000000000', '1', '2018-01-08');
INSERT INTO `sys_rlb` VALUES ('1129', '2.000000000000000000000000000000', '1', '2018-01-09');
INSERT INTO `sys_rlb` VALUES ('1130', '3.000000000000000000000000000000', '1', '2018-01-10');
INSERT INTO `sys_rlb` VALUES ('1131', '4.000000000000000000000000000000', '1', '2018-01-11');
INSERT INTO `sys_rlb` VALUES ('1132', '5.000000000000000000000000000000', '1', '2018-01-12');
INSERT INTO `sys_rlb` VALUES ('1133', '6.000000000000000000000000000000', '2', '2018-01-13');
INSERT INTO `sys_rlb` VALUES ('1134', '7.000000000000000000000000000000', '2', '2018-01-14');
INSERT INTO `sys_rlb` VALUES ('1135', '1.000000000000000000000000000000', '1', '2018-01-15');
INSERT INTO `sys_rlb` VALUES ('1136', '2.000000000000000000000000000000', '1', '2018-01-16');
INSERT INTO `sys_rlb` VALUES ('1137', '3.000000000000000000000000000000', '1', '2018-01-17');
INSERT INTO `sys_rlb` VALUES ('1138', '4.000000000000000000000000000000', '1', '2018-01-18');
INSERT INTO `sys_rlb` VALUES ('1139', '5.000000000000000000000000000000', '1', '2018-01-19');
INSERT INTO `sys_rlb` VALUES ('1140', '6.000000000000000000000000000000', '2', '2018-01-20');
INSERT INTO `sys_rlb` VALUES ('1141', '7.000000000000000000000000000000', '2', '2018-01-21');
INSERT INTO `sys_rlb` VALUES ('1142', '1.000000000000000000000000000000', '1', '2018-01-22');
INSERT INTO `sys_rlb` VALUES ('1143', '2.000000000000000000000000000000', '1', '2018-01-23');
INSERT INTO `sys_rlb` VALUES ('1144', '3.000000000000000000000000000000', '1', '2018-01-24');
INSERT INTO `sys_rlb` VALUES ('1145', '4.000000000000000000000000000000', '1', '2018-01-25');
INSERT INTO `sys_rlb` VALUES ('1146', '5.000000000000000000000000000000', '1', '2018-01-26');
INSERT INTO `sys_rlb` VALUES ('1147', '6.000000000000000000000000000000', '2', '2018-01-27');
INSERT INTO `sys_rlb` VALUES ('1148', '7.000000000000000000000000000000', '2', '2018-01-28');
INSERT INTO `sys_rlb` VALUES ('1149', '1.000000000000000000000000000000', '1', '2018-01-29');
INSERT INTO `sys_rlb` VALUES ('1150', '2.000000000000000000000000000000', '1', '2018-01-30');
INSERT INTO `sys_rlb` VALUES ('1151', '3.000000000000000000000000000000', '1', '2018-01-31');
INSERT INTO `sys_rlb` VALUES ('1152', '4.000000000000000000000000000000', '1', '2018-02-01');
INSERT INTO `sys_rlb` VALUES ('1153', '5.000000000000000000000000000000', '1', '2018-02-02');
INSERT INTO `sys_rlb` VALUES ('1154', '6.000000000000000000000000000000', '2', '2018-02-03');
INSERT INTO `sys_rlb` VALUES ('1155', '7.000000000000000000000000000000', '2', '2018-02-04');
INSERT INTO `sys_rlb` VALUES ('1156', '1.000000000000000000000000000000', '1', '2018-02-05');
INSERT INTO `sys_rlb` VALUES ('1157', '2.000000000000000000000000000000', '1', '2018-02-06');
INSERT INTO `sys_rlb` VALUES ('1158', '3.000000000000000000000000000000', '1', '2018-02-07');
INSERT INTO `sys_rlb` VALUES ('1159', '4.000000000000000000000000000000', '1', '2018-02-08');
INSERT INTO `sys_rlb` VALUES ('1160', '5.000000000000000000000000000000', '1', '2018-02-09');
INSERT INTO `sys_rlb` VALUES ('1161', '6.000000000000000000000000000000', '2', '2018-02-10');
INSERT INTO `sys_rlb` VALUES ('1162', '7.000000000000000000000000000000', '4', '2018-02-11');
INSERT INTO `sys_rlb` VALUES ('1163', '1.000000000000000000000000000000', '1', '2018-02-12');
INSERT INTO `sys_rlb` VALUES ('1164', '2.000000000000000000000000000000', '1', '2018-02-13');
INSERT INTO `sys_rlb` VALUES ('1165', '3.000000000000000000000000000000', '1', '2018-02-14');
INSERT INTO `sys_rlb` VALUES ('1166', '4.000000000000000000000000000000', '3', '2018-02-15');
INSERT INTO `sys_rlb` VALUES ('1167', '5.000000000000000000000000000000', '3', '2018-02-16');
INSERT INTO `sys_rlb` VALUES ('1168', '6.000000000000000000000000000000', '3', '2018-02-17');
INSERT INTO `sys_rlb` VALUES ('1169', '7.000000000000000000000000000000', '3', '2018-02-18');
INSERT INTO `sys_rlb` VALUES ('1170', '1.000000000000000000000000000000', '3', '2018-02-19');
INSERT INTO `sys_rlb` VALUES ('1171', '2.000000000000000000000000000000', '3', '2018-02-20');
INSERT INTO `sys_rlb` VALUES ('1172', '3.000000000000000000000000000000', '3', '2018-02-21');
INSERT INTO `sys_rlb` VALUES ('1173', '4.000000000000000000000000000000', '1', '2018-02-22');
INSERT INTO `sys_rlb` VALUES ('1174', '5.000000000000000000000000000000', '1', '2018-02-23');
INSERT INTO `sys_rlb` VALUES ('1175', '6.000000000000000000000000000000', '1', '2018-02-24');
INSERT INTO `sys_rlb` VALUES ('1176', '7.000000000000000000000000000000', '2', '2018-02-25');
INSERT INTO `sys_rlb` VALUES ('1177', '1.000000000000000000000000000000', '1', '2018-02-26');
INSERT INTO `sys_rlb` VALUES ('1178', '2.000000000000000000000000000000', '1', '2018-02-27');
INSERT INTO `sys_rlb` VALUES ('1179', '3.000000000000000000000000000000', '1', '2018-02-28');
INSERT INTO `sys_rlb` VALUES ('1180', '4.000000000000000000000000000000', '1', '2018-03-01');
INSERT INTO `sys_rlb` VALUES ('1181', '5.000000000000000000000000000000', '1', '2018-03-02');
INSERT INTO `sys_rlb` VALUES ('1182', '6.000000000000000000000000000000', '2', '2018-03-03');
INSERT INTO `sys_rlb` VALUES ('1183', '7.000000000000000000000000000000', '2', '2018-03-04');
INSERT INTO `sys_rlb` VALUES ('1184', '1.000000000000000000000000000000', '1', '2018-03-05');
INSERT INTO `sys_rlb` VALUES ('1185', '2.000000000000000000000000000000', '1', '2018-03-06');
INSERT INTO `sys_rlb` VALUES ('1186', '3.000000000000000000000000000000', '1', '2018-03-07');
INSERT INTO `sys_rlb` VALUES ('1187', '4.000000000000000000000000000000', '1', '2018-03-08');
INSERT INTO `sys_rlb` VALUES ('1188', '5.000000000000000000000000000000', '1', '2018-03-09');
INSERT INTO `sys_rlb` VALUES ('1189', '6.000000000000000000000000000000', '2', '2018-03-10');
INSERT INTO `sys_rlb` VALUES ('1190', '7.000000000000000000000000000000', '2', '2018-03-11');
INSERT INTO `sys_rlb` VALUES ('1191', '1.000000000000000000000000000000', '1', '2018-03-12');
INSERT INTO `sys_rlb` VALUES ('1192', '2.000000000000000000000000000000', '1', '2018-03-13');
INSERT INTO `sys_rlb` VALUES ('1193', '3.000000000000000000000000000000', '1', '2018-03-14');
INSERT INTO `sys_rlb` VALUES ('1194', '4.000000000000000000000000000000', '1', '2018-03-15');
INSERT INTO `sys_rlb` VALUES ('1195', '5.000000000000000000000000000000', '1', '2018-03-16');
INSERT INTO `sys_rlb` VALUES ('1196', '6.000000000000000000000000000000', '2', '2018-03-17');
INSERT INTO `sys_rlb` VALUES ('1197', '7.000000000000000000000000000000', '2', '2018-03-18');
INSERT INTO `sys_rlb` VALUES ('1198', '1.000000000000000000000000000000', '1', '2018-03-19');
INSERT INTO `sys_rlb` VALUES ('1199', '2.000000000000000000000000000000', '1', '2018-03-20');
INSERT INTO `sys_rlb` VALUES ('1200', '3.000000000000000000000000000000', '1', '2018-03-21');
INSERT INTO `sys_rlb` VALUES ('1201', '4.000000000000000000000000000000', '1', '2018-03-22');
INSERT INTO `sys_rlb` VALUES ('1202', '5.000000000000000000000000000000', '1', '2018-03-23');
INSERT INTO `sys_rlb` VALUES ('1203', '6.000000000000000000000000000000', '2', '2018-03-24');
INSERT INTO `sys_rlb` VALUES ('1204', '7.000000000000000000000000000000', '2', '2018-03-25');
INSERT INTO `sys_rlb` VALUES ('1205', '1.000000000000000000000000000000', '1', '2018-03-26');
INSERT INTO `sys_rlb` VALUES ('1206', '2.000000000000000000000000000000', '1', '2018-03-27');
INSERT INTO `sys_rlb` VALUES ('1207', '3.000000000000000000000000000000', '1', '2018-03-28');
INSERT INTO `sys_rlb` VALUES ('1208', '4.000000000000000000000000000000', '1', '2018-03-29');
INSERT INTO `sys_rlb` VALUES ('1209', '5.000000000000000000000000000000', '1', '2018-03-30');
INSERT INTO `sys_rlb` VALUES ('1210', '6.000000000000000000000000000000', '2', '2018-03-31');
INSERT INTO `sys_rlb` VALUES ('1211', '7.000000000000000000000000000000', '2', '2018-04-01');
INSERT INTO `sys_rlb` VALUES ('1212', '1.000000000000000000000000000000', '1', '2018-04-02');
INSERT INTO `sys_rlb` VALUES ('1213', '2.000000000000000000000000000000', '1', '2018-04-03');
INSERT INTO `sys_rlb` VALUES ('1214', '3.000000000000000000000000000000', '1', '2018-04-04');
INSERT INTO `sys_rlb` VALUES ('1215', '4.000000000000000000000000000000', '3', '2018-04-05');
INSERT INTO `sys_rlb` VALUES ('1216', '5.000000000000000000000000000000', '3', '2018-04-06');
INSERT INTO `sys_rlb` VALUES ('1217', '6.000000000000000000000000000000', '3', '2018-04-07');
INSERT INTO `sys_rlb` VALUES ('1218', '7.000000000000000000000000000000', '4', '2018-04-08');
INSERT INTO `sys_rlb` VALUES ('1219', '1.000000000000000000000000000000', '1', '2018-04-09');
INSERT INTO `sys_rlb` VALUES ('1220', '2.000000000000000000000000000000', '1', '2018-04-10');
INSERT INTO `sys_rlb` VALUES ('1221', '3.000000000000000000000000000000', '1', '2018-04-11');
INSERT INTO `sys_rlb` VALUES ('1222', '4.000000000000000000000000000000', '1', '2018-04-12');
INSERT INTO `sys_rlb` VALUES ('1223', '5.000000000000000000000000000000', '1', '2018-04-13');
INSERT INTO `sys_rlb` VALUES ('1224', '6.000000000000000000000000000000', '2', '2018-04-14');
INSERT INTO `sys_rlb` VALUES ('1225', '7.000000000000000000000000000000', '2', '2018-04-15');
INSERT INTO `sys_rlb` VALUES ('1226', '1.000000000000000000000000000000', '1', '2018-04-16');
INSERT INTO `sys_rlb` VALUES ('1227', '2.000000000000000000000000000000', '1', '2018-04-17');
INSERT INTO `sys_rlb` VALUES ('1228', '3.000000000000000000000000000000', '1', '2018-04-18');
INSERT INTO `sys_rlb` VALUES ('1229', '4.000000000000000000000000000000', '1', '2018-04-19');
INSERT INTO `sys_rlb` VALUES ('1230', '5.000000000000000000000000000000', '1', '2018-04-20');
INSERT INTO `sys_rlb` VALUES ('1231', '6.000000000000000000000000000000', '2', '2018-04-21');
INSERT INTO `sys_rlb` VALUES ('1232', '7.000000000000000000000000000000', '2', '2018-04-22');
INSERT INTO `sys_rlb` VALUES ('1233', '1.000000000000000000000000000000', '1', '2018-04-23');
INSERT INTO `sys_rlb` VALUES ('1234', '2.000000000000000000000000000000', '1', '2018-04-24');
INSERT INTO `sys_rlb` VALUES ('1235', '3.000000000000000000000000000000', '1', '2018-04-25');
INSERT INTO `sys_rlb` VALUES ('1236', '4.000000000000000000000000000000', '1', '2018-04-26');
INSERT INTO `sys_rlb` VALUES ('1237', '5.000000000000000000000000000000', '1', '2018-04-27');
INSERT INTO `sys_rlb` VALUES ('1238', '6.000000000000000000000000000000', '4', '2018-04-28');
INSERT INTO `sys_rlb` VALUES ('1239', '7.000000000000000000000000000000', '3', '2018-04-29');
INSERT INTO `sys_rlb` VALUES ('1240', '1.000000000000000000000000000000', '3', '2018-04-30');
INSERT INTO `sys_rlb` VALUES ('1241', '2.000000000000000000000000000000', '3', '2018-05-01');
INSERT INTO `sys_rlb` VALUES ('1242', '3.000000000000000000000000000000', '1', '2018-05-02');
INSERT INTO `sys_rlb` VALUES ('1243', '4.000000000000000000000000000000', '1', '2018-05-03');
INSERT INTO `sys_rlb` VALUES ('1244', '5.000000000000000000000000000000', '1', '2018-05-04');
INSERT INTO `sys_rlb` VALUES ('1245', '6.000000000000000000000000000000', '2', '2018-05-05');
INSERT INTO `sys_rlb` VALUES ('1246', '7.000000000000000000000000000000', '2', '2018-05-06');
INSERT INTO `sys_rlb` VALUES ('1247', '1.000000000000000000000000000000', '1', '2018-05-07');
INSERT INTO `sys_rlb` VALUES ('1248', '2.000000000000000000000000000000', '1', '2018-05-08');
INSERT INTO `sys_rlb` VALUES ('1249', '3.000000000000000000000000000000', '1', '2018-05-09');
INSERT INTO `sys_rlb` VALUES ('1250', '4.000000000000000000000000000000', '1', '2018-05-10');
INSERT INTO `sys_rlb` VALUES ('1251', '5.000000000000000000000000000000', '1', '2018-05-11');
INSERT INTO `sys_rlb` VALUES ('1252', '6.000000000000000000000000000000', '2', '2018-05-12');
INSERT INTO `sys_rlb` VALUES ('1253', '7.000000000000000000000000000000', '2', '2018-05-13');
INSERT INTO `sys_rlb` VALUES ('1254', '1.000000000000000000000000000000', '1', '2018-05-14');
INSERT INTO `sys_rlb` VALUES ('1255', '2.000000000000000000000000000000', '1', '2018-05-15');
INSERT INTO `sys_rlb` VALUES ('1256', '3.000000000000000000000000000000', '1', '2018-05-16');
INSERT INTO `sys_rlb` VALUES ('1257', '4.000000000000000000000000000000', '1', '2018-05-17');
INSERT INTO `sys_rlb` VALUES ('1258', '5.000000000000000000000000000000', '1', '2018-05-18');
INSERT INTO `sys_rlb` VALUES ('1259', '6.000000000000000000000000000000', '2', '2018-05-19');
INSERT INTO `sys_rlb` VALUES ('1260', '7.000000000000000000000000000000', '2', '2018-05-20');
INSERT INTO `sys_rlb` VALUES ('1261', '1.000000000000000000000000000000', '1', '2018-05-21');
INSERT INTO `sys_rlb` VALUES ('1262', '2.000000000000000000000000000000', '1', '2018-05-22');
INSERT INTO `sys_rlb` VALUES ('1263', '3.000000000000000000000000000000', '1', '2018-05-23');
INSERT INTO `sys_rlb` VALUES ('1264', '4.000000000000000000000000000000', '1', '2018-05-24');
INSERT INTO `sys_rlb` VALUES ('1265', '5.000000000000000000000000000000', '1', '2018-05-25');
INSERT INTO `sys_rlb` VALUES ('1266', '6.000000000000000000000000000000', '2', '2018-05-26');
INSERT INTO `sys_rlb` VALUES ('1267', '7.000000000000000000000000000000', '2', '2018-05-27');
INSERT INTO `sys_rlb` VALUES ('1268', '1.000000000000000000000000000000', '1', '2018-05-28');
INSERT INTO `sys_rlb` VALUES ('1269', '2.000000000000000000000000000000', '1', '2018-05-29');
INSERT INTO `sys_rlb` VALUES ('1270', '3.000000000000000000000000000000', '1', '2018-05-30');
INSERT INTO `sys_rlb` VALUES ('1271', '4.000000000000000000000000000000', '1', '2018-05-31');
INSERT INTO `sys_rlb` VALUES ('1272', '5.000000000000000000000000000000', '1', '2018-06-01');
INSERT INTO `sys_rlb` VALUES ('1273', '6.000000000000000000000000000000', '2', '2018-06-02');
INSERT INTO `sys_rlb` VALUES ('1274', '7.000000000000000000000000000000', '2', '2018-06-03');
INSERT INTO `sys_rlb` VALUES ('1275', '1.000000000000000000000000000000', '1', '2018-06-04');
INSERT INTO `sys_rlb` VALUES ('1276', '2.000000000000000000000000000000', '1', '2018-06-05');
INSERT INTO `sys_rlb` VALUES ('1277', '3.000000000000000000000000000000', '1', '2018-06-06');
INSERT INTO `sys_rlb` VALUES ('1278', '4.000000000000000000000000000000', '1', '2018-06-07');
INSERT INTO `sys_rlb` VALUES ('1279', '5.000000000000000000000000000000', '1', '2018-06-08');
INSERT INTO `sys_rlb` VALUES ('1280', '6.000000000000000000000000000000', '2', '2018-06-09');
INSERT INTO `sys_rlb` VALUES ('1281', '7.000000000000000000000000000000', '2', '2018-06-10');
INSERT INTO `sys_rlb` VALUES ('1282', '1.000000000000000000000000000000', '1', '2018-06-11');
INSERT INTO `sys_rlb` VALUES ('1283', '2.000000000000000000000000000000', '1', '2018-06-12');
INSERT INTO `sys_rlb` VALUES ('1284', '3.000000000000000000000000000000', '1', '2018-06-13');
INSERT INTO `sys_rlb` VALUES ('1285', '4.000000000000000000000000000000', '1', '2018-06-14');
INSERT INTO `sys_rlb` VALUES ('1286', '5.000000000000000000000000000000', '1', '2018-06-15');
INSERT INTO `sys_rlb` VALUES ('1287', '6.000000000000000000000000000000', '3', '2018-06-16');
INSERT INTO `sys_rlb` VALUES ('1288', '7.000000000000000000000000000000', '3', '2018-06-17');
INSERT INTO `sys_rlb` VALUES ('1289', '1.000000000000000000000000000000', '3', '2018-06-18');
INSERT INTO `sys_rlb` VALUES ('1290', '2.000000000000000000000000000000', '1', '2018-06-19');
INSERT INTO `sys_rlb` VALUES ('1291', '3.000000000000000000000000000000', '1', '2018-06-20');
INSERT INTO `sys_rlb` VALUES ('1292', '4.000000000000000000000000000000', '1', '2018-06-21');
INSERT INTO `sys_rlb` VALUES ('1293', '5.000000000000000000000000000000', '1', '2018-06-22');
INSERT INTO `sys_rlb` VALUES ('1294', '6.000000000000000000000000000000', '2', '2018-06-23');
INSERT INTO `sys_rlb` VALUES ('1295', '7.000000000000000000000000000000', '2', '2018-06-24');
INSERT INTO `sys_rlb` VALUES ('1296', '1.000000000000000000000000000000', '1', '2018-06-25');
INSERT INTO `sys_rlb` VALUES ('1297', '2.000000000000000000000000000000', '1', '2018-06-26');
INSERT INTO `sys_rlb` VALUES ('1298', '3.000000000000000000000000000000', '1', '2018-06-27');
INSERT INTO `sys_rlb` VALUES ('1299', '4.000000000000000000000000000000', '1', '2018-06-28');
INSERT INTO `sys_rlb` VALUES ('1300', '5.000000000000000000000000000000', '1', '2018-06-29');
INSERT INTO `sys_rlb` VALUES ('1301', '6.000000000000000000000000000000', '2', '2018-06-30');
INSERT INTO `sys_rlb` VALUES ('1302', '7.000000000000000000000000000000', '2', '2018-07-01');
INSERT INTO `sys_rlb` VALUES ('1303', '1.000000000000000000000000000000', '1', '2018-07-02');
INSERT INTO `sys_rlb` VALUES ('1304', '2.000000000000000000000000000000', '1', '2018-07-03');
INSERT INTO `sys_rlb` VALUES ('1305', '3.000000000000000000000000000000', '1', '2018-07-04');
INSERT INTO `sys_rlb` VALUES ('1306', '4.000000000000000000000000000000', '1', '2018-07-05');
INSERT INTO `sys_rlb` VALUES ('1307', '5.000000000000000000000000000000', '1', '2018-07-06');
INSERT INTO `sys_rlb` VALUES ('1308', '6.000000000000000000000000000000', '2', '2018-07-07');
INSERT INTO `sys_rlb` VALUES ('1309', '7.000000000000000000000000000000', '2', '2018-07-08');
INSERT INTO `sys_rlb` VALUES ('1310', '1.000000000000000000000000000000', '1', '2018-07-09');
INSERT INTO `sys_rlb` VALUES ('1311', '2.000000000000000000000000000000', '1', '2018-07-10');
INSERT INTO `sys_rlb` VALUES ('1312', '3.000000000000000000000000000000', '1', '2018-07-11');
INSERT INTO `sys_rlb` VALUES ('1313', '4.000000000000000000000000000000', '1', '2018-07-12');
INSERT INTO `sys_rlb` VALUES ('1314', '5.000000000000000000000000000000', '1', '2018-07-13');
INSERT INTO `sys_rlb` VALUES ('1315', '6.000000000000000000000000000000', '2', '2018-07-14');
INSERT INTO `sys_rlb` VALUES ('1316', '7.000000000000000000000000000000', '2', '2018-07-15');
INSERT INTO `sys_rlb` VALUES ('1317', '1.000000000000000000000000000000', '1', '2018-07-16');
INSERT INTO `sys_rlb` VALUES ('1318', '2.000000000000000000000000000000', '1', '2018-07-17');
INSERT INTO `sys_rlb` VALUES ('1319', '3.000000000000000000000000000000', '1', '2018-07-18');
INSERT INTO `sys_rlb` VALUES ('1320', '4.000000000000000000000000000000', '1', '2018-07-19');
INSERT INTO `sys_rlb` VALUES ('1321', '5.000000000000000000000000000000', '1', '2018-07-20');
INSERT INTO `sys_rlb` VALUES ('1322', '6.000000000000000000000000000000', '2', '2018-07-21');
INSERT INTO `sys_rlb` VALUES ('1323', '7.000000000000000000000000000000', '2', '2018-07-22');
INSERT INTO `sys_rlb` VALUES ('1324', '1.000000000000000000000000000000', '1', '2018-07-23');
INSERT INTO `sys_rlb` VALUES ('1325', '2.000000000000000000000000000000', '1', '2018-07-24');
INSERT INTO `sys_rlb` VALUES ('1326', '3.000000000000000000000000000000', '1', '2018-07-25');
INSERT INTO `sys_rlb` VALUES ('1327', '4.000000000000000000000000000000', '1', '2018-07-26');
INSERT INTO `sys_rlb` VALUES ('1328', '5.000000000000000000000000000000', '1', '2018-07-27');
INSERT INTO `sys_rlb` VALUES ('1329', '6.000000000000000000000000000000', '2', '2018-07-28');
INSERT INTO `sys_rlb` VALUES ('1330', '7.000000000000000000000000000000', '2', '2018-07-29');
INSERT INTO `sys_rlb` VALUES ('1331', '1.000000000000000000000000000000', '1', '2018-07-30');
INSERT INTO `sys_rlb` VALUES ('1332', '2.000000000000000000000000000000', '1', '2018-07-31');
INSERT INTO `sys_rlb` VALUES ('1333', '3.000000000000000000000000000000', '1', '2018-08-01');
INSERT INTO `sys_rlb` VALUES ('1334', '4.000000000000000000000000000000', '1', '2018-08-02');
INSERT INTO `sys_rlb` VALUES ('1335', '5.000000000000000000000000000000', '1', '2018-08-03');
INSERT INTO `sys_rlb` VALUES ('1336', '6.000000000000000000000000000000', '2', '2018-08-04');
INSERT INTO `sys_rlb` VALUES ('1337', '7.000000000000000000000000000000', '2', '2018-08-05');
INSERT INTO `sys_rlb` VALUES ('1338', '1.000000000000000000000000000000', '1', '2018-08-06');
INSERT INTO `sys_rlb` VALUES ('1339', '2.000000000000000000000000000000', '1', '2018-08-07');
INSERT INTO `sys_rlb` VALUES ('1340', '3.000000000000000000000000000000', '1', '2018-08-08');
INSERT INTO `sys_rlb` VALUES ('1341', '4.000000000000000000000000000000', '1', '2018-08-09');
INSERT INTO `sys_rlb` VALUES ('1342', '5.000000000000000000000000000000', '1', '2018-08-10');
INSERT INTO `sys_rlb` VALUES ('1343', '6.000000000000000000000000000000', '2', '2018-08-11');
INSERT INTO `sys_rlb` VALUES ('1344', '7.000000000000000000000000000000', '2', '2018-08-12');
INSERT INTO `sys_rlb` VALUES ('1345', '1.000000000000000000000000000000', '1', '2018-08-13');
INSERT INTO `sys_rlb` VALUES ('1346', '2.000000000000000000000000000000', '1', '2018-08-14');
INSERT INTO `sys_rlb` VALUES ('1347', '3.000000000000000000000000000000', '1', '2018-08-15');
INSERT INTO `sys_rlb` VALUES ('1348', '4.000000000000000000000000000000', '1', '2018-08-16');
INSERT INTO `sys_rlb` VALUES ('1349', '5.000000000000000000000000000000', '1', '2018-08-17');
INSERT INTO `sys_rlb` VALUES ('1350', '6.000000000000000000000000000000', '2', '2018-08-18');
INSERT INTO `sys_rlb` VALUES ('1351', '7.000000000000000000000000000000', '2', '2018-08-19');
INSERT INTO `sys_rlb` VALUES ('1352', '1.000000000000000000000000000000', '1', '2018-08-20');
INSERT INTO `sys_rlb` VALUES ('1353', '2.000000000000000000000000000000', '1', '2018-08-21');
INSERT INTO `sys_rlb` VALUES ('1354', '3.000000000000000000000000000000', '1', '2018-08-22');
INSERT INTO `sys_rlb` VALUES ('1355', '4.000000000000000000000000000000', '1', '2018-08-23');
INSERT INTO `sys_rlb` VALUES ('1356', '5.000000000000000000000000000000', '1', '2018-08-24');
INSERT INTO `sys_rlb` VALUES ('1357', '6.000000000000000000000000000000', '2', '2018-08-25');
INSERT INTO `sys_rlb` VALUES ('1358', '7.000000000000000000000000000000', '2', '2018-08-26');
INSERT INTO `sys_rlb` VALUES ('1359', '1.000000000000000000000000000000', '1', '2018-08-27');
INSERT INTO `sys_rlb` VALUES ('1360', '2.000000000000000000000000000000', '1', '2018-08-28');
INSERT INTO `sys_rlb` VALUES ('1361', '3.000000000000000000000000000000', '1', '2018-08-29');
INSERT INTO `sys_rlb` VALUES ('1362', '4.000000000000000000000000000000', '1', '2018-08-30');
INSERT INTO `sys_rlb` VALUES ('1363', '5.000000000000000000000000000000', '1', '2018-08-31');
INSERT INTO `sys_rlb` VALUES ('1364', '6.000000000000000000000000000000', '2', '2018-09-01');
INSERT INTO `sys_rlb` VALUES ('1365', '7.000000000000000000000000000000', '2', '2018-09-02');
INSERT INTO `sys_rlb` VALUES ('1366', '1.000000000000000000000000000000', '1', '2018-09-03');
INSERT INTO `sys_rlb` VALUES ('1367', '2.000000000000000000000000000000', '1', '2018-09-04');
INSERT INTO `sys_rlb` VALUES ('1368', '3.000000000000000000000000000000', '1', '2018-09-05');
INSERT INTO `sys_rlb` VALUES ('1369', '4.000000000000000000000000000000', '1', '2018-09-06');
INSERT INTO `sys_rlb` VALUES ('1370', '5.000000000000000000000000000000', '1', '2018-09-07');
INSERT INTO `sys_rlb` VALUES ('1371', '6.000000000000000000000000000000', '2', '2018-09-08');
INSERT INTO `sys_rlb` VALUES ('1372', '7.000000000000000000000000000000', '2', '2018-09-09');
INSERT INTO `sys_rlb` VALUES ('1373', '1.000000000000000000000000000000', '1', '2018-09-10');
INSERT INTO `sys_rlb` VALUES ('1374', '2.000000000000000000000000000000', '1', '2018-09-11');
INSERT INTO `sys_rlb` VALUES ('1375', '3.000000000000000000000000000000', '1', '2018-09-12');
INSERT INTO `sys_rlb` VALUES ('1376', '4.000000000000000000000000000000', '1', '2018-09-13');
INSERT INTO `sys_rlb` VALUES ('1377', '5.000000000000000000000000000000', '1', '2018-09-14');
INSERT INTO `sys_rlb` VALUES ('1378', '6.000000000000000000000000000000', '2', '2018-09-15');
INSERT INTO `sys_rlb` VALUES ('1379', '7.000000000000000000000000000000', '2', '2018-09-16');
INSERT INTO `sys_rlb` VALUES ('1380', '1.000000000000000000000000000000', '1', '2018-09-17');
INSERT INTO `sys_rlb` VALUES ('1381', '2.000000000000000000000000000000', '1', '2018-09-18');
INSERT INTO `sys_rlb` VALUES ('1382', '3.000000000000000000000000000000', '1', '2018-09-19');
INSERT INTO `sys_rlb` VALUES ('1383', '4.000000000000000000000000000000', '1', '2018-09-20');
INSERT INTO `sys_rlb` VALUES ('1384', '5.000000000000000000000000000000', '1', '2018-09-21');
INSERT INTO `sys_rlb` VALUES ('1385', '6.000000000000000000000000000000', '3', '2018-09-22');
INSERT INTO `sys_rlb` VALUES ('1386', '7.000000000000000000000000000000', '3', '2018-09-23');
INSERT INTO `sys_rlb` VALUES ('1387', '1.000000000000000000000000000000', '3', '2018-09-24');
INSERT INTO `sys_rlb` VALUES ('1388', '2.000000000000000000000000000000', '1', '2018-09-25');
INSERT INTO `sys_rlb` VALUES ('1389', '3.000000000000000000000000000000', '1', '2018-09-26');
INSERT INTO `sys_rlb` VALUES ('1390', '4.000000000000000000000000000000', '1', '2018-09-27');
INSERT INTO `sys_rlb` VALUES ('1391', '5.000000000000000000000000000000', '1', '2018-09-28');
INSERT INTO `sys_rlb` VALUES ('1392', '6.000000000000000000000000000000', '4', '2018-09-29');
INSERT INTO `sys_rlb` VALUES ('1393', '7.000000000000000000000000000000', '4', '2018-09-30');
INSERT INTO `sys_rlb` VALUES ('1394', '1.000000000000000000000000000000', '3', '2018-10-01');
INSERT INTO `sys_rlb` VALUES ('1395', '2.000000000000000000000000000000', '3', '2018-10-02');
INSERT INTO `sys_rlb` VALUES ('1396', '3.000000000000000000000000000000', '3', '2018-10-03');
INSERT INTO `sys_rlb` VALUES ('1397', '4.000000000000000000000000000000', '3', '2018-10-04');
INSERT INTO `sys_rlb` VALUES ('1398', '5.000000000000000000000000000000', '3', '2018-10-05');
INSERT INTO `sys_rlb` VALUES ('1399', '6.000000000000000000000000000000', '3', '2018-10-06');
INSERT INTO `sys_rlb` VALUES ('1400', '7.000000000000000000000000000000', '3', '2018-10-07');
INSERT INTO `sys_rlb` VALUES ('1401', '1.000000000000000000000000000000', '1', '2018-10-08');
INSERT INTO `sys_rlb` VALUES ('1402', '2.000000000000000000000000000000', '1', '2018-10-09');
INSERT INTO `sys_rlb` VALUES ('1403', '3.000000000000000000000000000000', '1', '2018-10-10');
INSERT INTO `sys_rlb` VALUES ('1404', '4.000000000000000000000000000000', '1', '2018-10-11');
INSERT INTO `sys_rlb` VALUES ('1405', '5.000000000000000000000000000000', '1', '2018-10-12');
INSERT INTO `sys_rlb` VALUES ('1406', '6.000000000000000000000000000000', '2', '2018-10-13');
INSERT INTO `sys_rlb` VALUES ('1407', '7.000000000000000000000000000000', '2', '2018-10-14');
INSERT INTO `sys_rlb` VALUES ('1408', '1.000000000000000000000000000000', '1', '2018-10-15');
INSERT INTO `sys_rlb` VALUES ('1409', '2.000000000000000000000000000000', '1', '2018-10-16');
INSERT INTO `sys_rlb` VALUES ('1410', '3.000000000000000000000000000000', '1', '2018-10-17');
INSERT INTO `sys_rlb` VALUES ('1411', '4.000000000000000000000000000000', '1', '2018-10-18');
INSERT INTO `sys_rlb` VALUES ('1412', '5.000000000000000000000000000000', '1', '2018-10-19');
INSERT INTO `sys_rlb` VALUES ('1413', '6.000000000000000000000000000000', '2', '2018-10-20');
INSERT INTO `sys_rlb` VALUES ('1414', '7.000000000000000000000000000000', '2', '2018-10-21');
INSERT INTO `sys_rlb` VALUES ('1415', '1.000000000000000000000000000000', '1', '2018-10-22');
INSERT INTO `sys_rlb` VALUES ('1416', '2.000000000000000000000000000000', '1', '2018-10-23');
INSERT INTO `sys_rlb` VALUES ('1417', '3.000000000000000000000000000000', '1', '2018-10-24');
INSERT INTO `sys_rlb` VALUES ('1418', '4.000000000000000000000000000000', '1', '2018-10-25');
INSERT INTO `sys_rlb` VALUES ('1419', '5.000000000000000000000000000000', '1', '2018-10-26');
INSERT INTO `sys_rlb` VALUES ('1420', '6.000000000000000000000000000000', '2', '2018-10-27');
INSERT INTO `sys_rlb` VALUES ('1421', '7.000000000000000000000000000000', '2', '2018-10-28');
INSERT INTO `sys_rlb` VALUES ('1422', '1.000000000000000000000000000000', '1', '2018-10-29');
INSERT INTO `sys_rlb` VALUES ('1423', '2.000000000000000000000000000000', '1', '2018-10-30');
INSERT INTO `sys_rlb` VALUES ('1424', '3.000000000000000000000000000000', '1', '2018-10-31');
INSERT INTO `sys_rlb` VALUES ('1425', '4.000000000000000000000000000000', '1', '2018-11-01');
INSERT INTO `sys_rlb` VALUES ('1426', '5.000000000000000000000000000000', '1', '2018-11-02');
INSERT INTO `sys_rlb` VALUES ('1427', '6.000000000000000000000000000000', '2', '2018-11-03');
INSERT INTO `sys_rlb` VALUES ('1428', '7.000000000000000000000000000000', '2', '2018-11-04');
INSERT INTO `sys_rlb` VALUES ('1429', '1.000000000000000000000000000000', '1', '2018-11-05');
INSERT INTO `sys_rlb` VALUES ('1430', '2.000000000000000000000000000000', '1', '2018-11-06');
INSERT INTO `sys_rlb` VALUES ('1431', '3.000000000000000000000000000000', '1', '2018-11-07');
INSERT INTO `sys_rlb` VALUES ('1432', '4.000000000000000000000000000000', '1', '2018-11-08');
INSERT INTO `sys_rlb` VALUES ('1433', '5.000000000000000000000000000000', '1', '2018-11-09');
INSERT INTO `sys_rlb` VALUES ('1434', '6.000000000000000000000000000000', '2', '2018-11-10');
INSERT INTO `sys_rlb` VALUES ('1435', '7.000000000000000000000000000000', '2', '2018-11-11');
INSERT INTO `sys_rlb` VALUES ('1436', '1.000000000000000000000000000000', '1', '2018-11-12');
INSERT INTO `sys_rlb` VALUES ('1437', '2.000000000000000000000000000000', '1', '2018-11-13');
INSERT INTO `sys_rlb` VALUES ('1438', '3.000000000000000000000000000000', '1', '2018-11-14');
INSERT INTO `sys_rlb` VALUES ('1439', '4.000000000000000000000000000000', '1', '2018-11-15');
INSERT INTO `sys_rlb` VALUES ('1440', '5.000000000000000000000000000000', '1', '2018-11-16');
INSERT INTO `sys_rlb` VALUES ('1441', '6.000000000000000000000000000000', '2', '2018-11-17');
INSERT INTO `sys_rlb` VALUES ('1442', '7.000000000000000000000000000000', '2', '2018-11-18');
INSERT INTO `sys_rlb` VALUES ('1443', '1.000000000000000000000000000000', '1', '2018-11-19');
INSERT INTO `sys_rlb` VALUES ('1444', '2.000000000000000000000000000000', '1', '2018-11-20');
INSERT INTO `sys_rlb` VALUES ('1445', '3.000000000000000000000000000000', '1', '2018-11-21');
INSERT INTO `sys_rlb` VALUES ('1446', '4.000000000000000000000000000000', '1', '2018-11-22');
INSERT INTO `sys_rlb` VALUES ('1447', '5.000000000000000000000000000000', '1', '2018-11-23');
INSERT INTO `sys_rlb` VALUES ('1448', '6.000000000000000000000000000000', '2', '2018-11-24');
INSERT INTO `sys_rlb` VALUES ('1449', '7.000000000000000000000000000000', '2', '2018-11-25');
INSERT INTO `sys_rlb` VALUES ('1450', '1.000000000000000000000000000000', '1', '2018-11-26');
INSERT INTO `sys_rlb` VALUES ('1451', '2.000000000000000000000000000000', '1', '2018-11-27');
INSERT INTO `sys_rlb` VALUES ('1452', '3.000000000000000000000000000000', '1', '2018-11-28');
INSERT INTO `sys_rlb` VALUES ('1453', '4.000000000000000000000000000000', '1', '2018-11-29');
INSERT INTO `sys_rlb` VALUES ('1454', '5.000000000000000000000000000000', '1', '2018-11-30');
INSERT INTO `sys_rlb` VALUES ('1455', '6.000000000000000000000000000000', '2', '2018-12-01');
INSERT INTO `sys_rlb` VALUES ('1456', '7.000000000000000000000000000000', '2', '2018-12-02');
INSERT INTO `sys_rlb` VALUES ('1457', '1.000000000000000000000000000000', '1', '2018-12-03');
INSERT INTO `sys_rlb` VALUES ('1458', '2.000000000000000000000000000000', '1', '2018-12-04');
INSERT INTO `sys_rlb` VALUES ('1459', '3.000000000000000000000000000000', '1', '2018-12-05');
INSERT INTO `sys_rlb` VALUES ('1460', '4.000000000000000000000000000000', '1', '2018-12-06');
INSERT INTO `sys_rlb` VALUES ('1461', '5.000000000000000000000000000000', '1', '2018-12-07');
INSERT INTO `sys_rlb` VALUES ('1462', '6.000000000000000000000000000000', '2', '2018-12-08');
INSERT INTO `sys_rlb` VALUES ('1463', '7.000000000000000000000000000000', '2', '2018-12-09');
INSERT INTO `sys_rlb` VALUES ('1464', '1.000000000000000000000000000000', '1', '2018-12-10');
INSERT INTO `sys_rlb` VALUES ('1465', '2.000000000000000000000000000000', '1', '2018-12-11');
INSERT INTO `sys_rlb` VALUES ('1466', '3.000000000000000000000000000000', '1', '2018-12-12');
INSERT INTO `sys_rlb` VALUES ('1467', '4.000000000000000000000000000000', '1', '2018-12-13');
INSERT INTO `sys_rlb` VALUES ('1468', '5.000000000000000000000000000000', '1', '2018-12-14');
INSERT INTO `sys_rlb` VALUES ('1469', '6.000000000000000000000000000000', '2', '2018-12-15');
INSERT INTO `sys_rlb` VALUES ('1470', '7.000000000000000000000000000000', '2', '2018-12-16');
INSERT INTO `sys_rlb` VALUES ('1471', '1.000000000000000000000000000000', '1', '2018-12-17');
INSERT INTO `sys_rlb` VALUES ('1472', '2.000000000000000000000000000000', '1', '2018-12-18');
INSERT INTO `sys_rlb` VALUES ('1473', '3.000000000000000000000000000000', '1', '2018-12-19');
INSERT INTO `sys_rlb` VALUES ('1474', '4.000000000000000000000000000000', '1', '2018-12-20');
INSERT INTO `sys_rlb` VALUES ('1475', '5.000000000000000000000000000000', '1', '2018-12-21');
INSERT INTO `sys_rlb` VALUES ('1476', '6.000000000000000000000000000000', '2', '2018-12-22');
INSERT INTO `sys_rlb` VALUES ('1477', '7.000000000000000000000000000000', '2', '2018-12-23');
INSERT INTO `sys_rlb` VALUES ('1478', '1.000000000000000000000000000000', '1', '2018-12-24');
INSERT INTO `sys_rlb` VALUES ('1479', '2.000000000000000000000000000000', '1', '2018-12-25');
INSERT INTO `sys_rlb` VALUES ('1480', '3.000000000000000000000000000000', '1', '2018-12-26');
INSERT INTO `sys_rlb` VALUES ('1481', '4.000000000000000000000000000000', '1', '2018-12-27');
INSERT INTO `sys_rlb` VALUES ('1482', '5.000000000000000000000000000000', '1', '2018-12-28');
INSERT INTO `sys_rlb` VALUES ('1483', '6.000000000000000000000000000000', '2', '2018-12-29');
INSERT INTO `sys_rlb` VALUES ('1484', '7.000000000000000000000000000000', '2', '2018-12-30');
INSERT INTO `sys_rlb` VALUES ('1485', '1.000000000000000000000000000000', '1', '2018-12-31');

-- ----------------------------
-- Table structure for sys_wxyh
-- ----------------------------

CREATE TABLE `sys_wxyh` (
  `OPENID` varchar(32) NOT NULL COMMENT 'OPENID',
  `XM` varchar(32) DEFAULT NULL COMMENT '����',
  `DH` varchar(16) DEFAULT NULL COMMENT '�绰',
  `YHLX` char(2) DEFAULT NULL COMMENT '�û�����',
  `XY` varchar(16) DEFAULT NULL COMMENT 'ѧԺ',
  `ZJHM` varchar(16) DEFAULT NULL COMMENT '֤������',
  `ZW` varchar(16) DEFAULT NULL COMMENT 'ְ��',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `JGDM` varchar(32) DEFAULT NULL,
  `JGMC` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`OPENID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_xxts
-- ----------------------------

CREATE TABLE `sys_xxts` (
  `XX_ID` varchar(32) NOT NULL COMMENT '��Ϣid',
  `XXNR` text COMMENT '��Ϣ����',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `KJFW` varchar(32) DEFAULT NULL COMMENT '�ɼ���Χ',
  `KSSJ` datetime(6) DEFAULT NULL COMMENT '��ʼʱ��',
  `JSSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`XX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_yh_js
-- ----------------------------

CREATE TABLE `sys_yh_js` (
  `YHJS_ID` varchar(32) NOT NULL COMMENT '�û���ɫ������id',
  `YH_ID` varchar(32) DEFAULT NULL COMMENT '�û�id',
  `JS_ID` varchar(32) DEFAULT NULL COMMENT '��ɫid',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`YHJS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_yh_xx
-- ----------------------------

CREATE TABLE `sys_yh_xx` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `YH_ID` varchar(32) DEFAULT NULL COMMENT '�û�id',
  `XX_ID` varchar(32) DEFAULT NULL COMMENT '��Ϣid',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_yjfk
-- ----------------------------

CREATE TABLE `sys_yjfk` (
  `YJ_ID` varchar(32) NOT NULL COMMENT '���id',
  `YH_ID` varchar(32) DEFAULT NULL COMMENT '�û�id',
  `NR` text COMMENT '����',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `ZT` char(2) DEFAULT NULL COMMENT '״̬',
  `YJLX` char(2) DEFAULT NULL COMMENT '�������',
  `CLJG` text COMMENT '������',
  `LXRXM` varchar(32) DEFAULT NULL COMMENT '��ϵ������',
  `LXFS` varchar(32) DEFAULT NULL COMMENT '��ϵ��ʽ',
  `XGR` varchar(32) DEFAULT NULL COMMENT '�޸���',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`YJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_yxhdwj
-- ----------------------------

CREATE TABLE `sys_yxhdwj` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `HD_ID` varchar(32) DEFAULT NULL COMMENT '�id',
  `WJLX` varchar(32) DEFAULT NULL COMMENT '�ļ�����',
  `WJLJ` varchar(255) DEFAULT NULL COMMENT '�ļ�·��',
  `WLLJ` varchar(255) DEFAULT NULL COMMENT '����·��',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_zdlm
-- ----------------------------

CREATE TABLE `sys_zdlm` (
  `LMDM` varchar(32) NOT NULL COMMENT '��Ŀ����',
  `LMMC` varchar(32) DEFAULT NULL COMMENT '��Ŀ����',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `XGSJ` datetime(6) DEFAULT NULL COMMENT '�޸�ʱ��',
  `XGR` varchar(64) DEFAULT NULL COMMENT '�޸���',
  `QZ` double DEFAULT NULL COMMENT 'Ȩ��',
  PRIMARY KEY (`LMDM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ƽ̨�ֵ���Ŀ��(�ֵ����)';

-- ----------------------------
-- Table structure for sys_zdxm
-- ----------------------------

CREATE TABLE `sys_zdxm` (
  `ZD_ID` varchar(32) NOT NULL COMMENT '�ֵ�id',
  `ZDLMDM` varchar(32) DEFAULT NULL COMMENT '�ֵ���Ŀ����',
  `ZDDM` varchar(32) DEFAULT NULL COMMENT '�ֵ����',
  `ZDMC` varchar(32) DEFAULT NULL COMMENT '�ֵ�����',
  `QZ` double DEFAULT NULL COMMENT 'Ȩ��',
  `CJSJ` datetime(6) DEFAULT NULL COMMENT '����ʱ��',
  `CJR` varchar(64) DEFAULT NULL COMMENT '������',
  `BY1` varchar(32) DEFAULT NULL COMMENT '����1',
  `BY2` varchar(32) DEFAULT NULL COMMENT '����2',
  `BY3` varchar(32) DEFAULT NULL COMMENT '����3',
  PRIMARY KEY (`ZD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ƽ̨�ֵ��';
