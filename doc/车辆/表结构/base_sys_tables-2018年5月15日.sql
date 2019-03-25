/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/11/14 18:19:38                          */
/*==============================================================*/


drop table if exists biz_car;

drop table if exists biz_car_annual_exam;

drop table if exists biz_car_ba;

drop table if exists biz_car_e_record;

drop table if exists biz_car_gas;

drop table if exists biz_car_insurance_jq;

drop table if exists biz_car_property;

drop table if exists biz_car_usage;

drop table if exists biz_car_warn;


DROP TABLE IF EXISTS biz_car;
CREATE TABLE biz_car (
  id varchar(32) NOT NULL COMMENT 'id',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  dah varchar(32) DEFAULT NULL COMMENT '������',
  pxcx varchar(6) DEFAULT NULL COMMENT '��ѵ����  ׼�ݳ��� [ZDCLK0040] ',
  hpzl varchar(6) DEFAULT NULL COMMENT '�������� ����_�������� [ZDCLK1036] 1��ѧ�� 2������ ',
  syxz varchar(6) DEFAULT NULL COMMENT 'ʹ������  [ZDCLK1037] 1������ 2���ǽ��� 3����Ӫ��',
  car_property_type varchar(6) DEFAULT NULL COMMENT '������Ȩ״̬ [ZDCLK1041] 1��ѧ�Ƴ� 2����ѧ�Ƴ� 3���ѱ��ϳ� 4�����۳�',
  clpp varchar(32) DEFAULT NULL COMMENT '����Ʒ��',
  cllx varchar(32) DEFAULT NULL COMMENT '��������',
  ppxh varchar(64) DEFAULT NULL COMMENT 'Ʒ���ͺ�',
  clxh varchar(16) DEFAULT NULL COMMENT '�����ͺ�',
  ccdjrq varchar(20) DEFAULT NULL COMMENT '���εǼ�����',
  qzbfq varchar(20) DEFAULT NULL COMMENT 'ǿ�Ʊ�����',
  clsbm varchar(20) DEFAULT NULL COMMENT '����ʶ����',
  fdjh varchar(20) DEFAULT NULL COMMENT '��������',
  fdjxh varchar(20) DEFAULT NULL COMMENT '�������ͺ�',
  rlzl varchar(2) DEFAULT NULL COMMENT 'ȼ������ ����ȼ������ [ZDCLK1038] 1������ 2������',
  pl int(11) DEFAULT NULL COMMENT '����',
  gl int(11) DEFAULT NULL COMMENT '����',
  zzcmc varchar(20) DEFAULT NULL COMMENT '���쳧����',
  csys varchar(6) DEFAULT NULL COMMENT '������ɫ',
  qlj int(11) DEFAULT NULL COMMENT 'ǰ�־�',
  hlj int(11) DEFAULT NULL COMMENT '���־�',
  ltsl int(11) DEFAULT NULL COMMENT '��̥����',
  ltgg varchar(16) DEFAULT NULL COMMENT '��̥���',
  bhps int(11) DEFAULT NULL COMMENT '���Ƭ��',
  zj int(11) DEFAULT NULL COMMENT '���',
  wkc int(11) DEFAULT NULL COMMENT '������',
  wkk int(11) DEFAULT NULL COMMENT '������',
  wkg int(11) DEFAULT NULL COMMENT '������',
  zzl int(11) DEFAULT NULL COMMENT '������',
  hdzk int(11) DEFAULT NULL COMMENT '�˶��ؿ�',
  byxz varchar(6) DEFAULT NULL COMMENT '��������',
  clhdfs varchar(6) DEFAULT NULL COMMENT '������÷�ʽ',
  ccrq varchar(20) DEFAULT NULL COMMENT '��������',
  syr_name varchar(32) DEFAULT NULL COMMENT 'ʹ��������',
  syr_szd varchar(32) DEFAULT NULL COMMENT 'ʹ�������ڵ�',
  syr_dn varchar(128) DEFAULT NULL COMMENT 'ʹ������ϵ��ʽ',
  syxx_id varchar(32) DEFAULT NULL COMMENT 'ʹ����Ϣid',
  nsrq varchar(20) DEFAULT NULL COMMENT '��������',
  ns_id varchar(32) DEFAULT NULL COMMENT '����id',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����������';



-- ----------------------------
-- Records of biz_car
-- ----------------------------

-- ----------------------------
-- Table structure for biz_car_annual_exam
-- ----------------------------
DROP TABLE IF EXISTS biz_car_annual_exam;
CREATE TABLE biz_car_annual_exam (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����id',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  nsz varchar(32) DEFAULT NULL COMMENT '������',
  nssj varchar(20) DEFAULT NULL COMMENT '����ʱ��',
  essj varchar(20) DEFAULT NULL COMMENT '����ʱ��',
  pc varchar(6) DEFAULT NULL COMMENT '����',
  jsyId varchar(32) DEFAULT NULL COMMENT '��ʻԱID',
  jsyxm varchar(12) DEFAULT NULL COMMENT '��ʻԱ����',
  jsysfzh varchar(18) DEFAULT NULL COMMENT '��ʻԱ���֤��',
  jsylxdh varchar(16) DEFAULT NULL COMMENT '��ʻԱ��ϵ�绰',
  zt varchar(6) DEFAULT NULL COMMENT '����״̬',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����������Ϣ';

-- ----------------------------
-- Table structure for biz_car_ba
-- ----------------------------
DROP TABLE IF EXISTS biz_car_ba;
CREATE TABLE biz_car_ba (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����ID',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  yszh varchar(32) DEFAULT NULL COMMENT '����֤��',
  djrq varchar(32) DEFAULT NULL COMMENT '�Ǽ�����',
  gps_type varchar(2) DEFAULT NULL COMMENT '�Ƿ�װGPS  ��/�� [ZDCLK1034] ',
  gps_code varchar(32) DEFAULT NULL COMMENT 'GPS����',
  yy_type varchar(2) DEFAULT NULL COMMENT ' ��������_��Ӫ״̬ [ZDCLK1033] Ӫ��״̬1����Ӫ 2��ע�� 0��δ�Ǽ�',
  ysn_sx varchar(2) DEFAULT NULL COMMENT '1��14������  0������   ��/�� [ZDCLK1034]',
  gx varchar(32) DEFAULT NULL COMMENT '����(BU��)',
  zj int(11) DEFAULT NULL COMMENT '���',
  kj_type varchar(2) DEFAULT NULL COMMENT '��������_������װ״̬ [ZDCLK1035] ������װ״̬ 1���Ѱ�װ 0��δ��װ',
  kj_azsj varchar(32) DEFAULT NULL COMMENT '������װʱ��',
  kj_pc varchar(32) DEFAULT NULL COMMENT '��������',
  new_code varchar(32) DEFAULT NULL COMMENT '���γɹ���֤��',
  new_kj varchar(2) DEFAULT NULL COMMENT '�¿���',
  bz varchar(255) DEFAULT NULL COMMENT '��ע',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����˹ܱ�����';


-- ----------------------------
-- Table structure for biz_car_e_record
-- ----------------------------
DROP TABLE IF EXISTS biz_car_e_record;
CREATE TABLE biz_car_e_record (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����ID',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  djz_type varchar(2) DEFAULT NULL COMMENT '�������Ǽ�֤��״̬  ��/�� [ZDCLK1039] 1���� 0����',
  djz_code varchar(32) DEFAULT NULL COMMENT '�������Ǽ�֤����',
  wszm_type varchar(2) DEFAULT NULL COMMENT '����˰��˰֤��״̬  ��/�� [ZDCLK1039] 1���� 0����',
  wszm_code varchar(32) DEFAULT NULL COMMENT '����˰��˰֤��֤��',
  wszm_ph varchar(32) DEFAULT NULL COMMENT '����˰��˰֤��Ʊ��',
  fp_type varchar(2) DEFAULT NULL COMMENT '��Ʊ״̬  ��/�� [ZDCLK1039] 1���� 0����',
  fp_code varchar(32) DEFAULT NULL COMMENT '��Ʊ����',
  cchg_type varchar(2) DEFAULT NULL COMMENT '�����ϸ�֤�� ��/�� [ZDCLK1039] 1���� 0����',
  jyhg_type varchar(2) DEFAULT NULL COMMENT '����ϸ�֤��  ��/�� [ZDCLK1039] 1���� 0����',
  xlhg_type varchar(2) DEFAULT NULL COMMENT '����ϸ�֤��  ��/�� [ZDCLK1039] 1���� 0����',
  xszfy_type varchar(2) DEFAULT NULL COMMENT '��ʻ֤ɨ���״̬ ��/�� [ZDCLK1039] 1���� 0����',
  bz varchar(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�������ӵ���������Ϣ��ɨ�����';



-- ----------------------------
-- Table structure for biz_car_property
-- ----------------------------
DROP TABLE IF EXISTS biz_car_property;
CREATE TABLE biz_car_property (
  id varchar(32) NOT NULL DEFAULT '' COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����ID',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  lx varchar(6) DEFAULT NULL COMMENT '����',
  ck float DEFAULT NULL COMMENT '����',
  zb varchar(6) DEFAULT NULL COMMENT '�ʱ�',
  yd varchar(6) DEFAULT NULL COMMENT '�춯����',
  cqr varchar(32) DEFAULT NULL COMMENT '��Ȩ��',
  property_type varchar(2) DEFAULT NULL COMMENT '��Ȩ״̬ 1���ڲ���Ȩ��� 2��ѧ��ת��ѧ�� 3���������� 4����������',
  cqr_szd varchar(32) DEFAULT NULL COMMENT '��Ȩ�����ڵ�',
  cqr_dn varchar(128) DEFAULT NULL COMMENT '��Ȩ����ϵ��ʽ',
  cqr_code varchar(128) DEFAULT NULL COMMENT '��Ȩ��֤����',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  jbr varchar(32) DEFAULT NULL COMMENT '������',
  jbr_dn varchar(32) DEFAULT NULL COMMENT '�����˵绰',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  bz varchar(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������Ȩ��ϸ��';

-- ----------------------------
-- Records of biz_car_property
-- ----------------------------

-- ----------------------------
-- Table structure for biz_car_usage
-- ----------------------------
DROP TABLE IF EXISTS biz_car_usage;
CREATE TABLE biz_car_usage (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����ID',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  syr_name varchar(32) DEFAULT NULL COMMENT 'ʹ��������',
  syr_id varchar(32) DEFAULT NULL COMMENT 'ʹ���˱��',
  lx varchar(6) DEFAULT NULL COMMENT '����',
  syr_szd varchar(32) DEFAULT NULL COMMENT 'ʹ�������ڵ�',
  syr_dn varchar(128) DEFAULT NULL COMMENT 'ʹ������ϵ��ʽ',
  del_type varchar(2) DEFAULT NULL COMMENT '�߼�ɾ��״̬ [ZDCLK1040] 1δɾ�� 0�Ѿ�ɾ�� ',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����ʹ���˱�';

-- ----------------------------
-- Records of biz_car_usage
-- ----------------------------


-- ----------------------------
-- Table structure for biz_car_insurance_jq
-- ----------------------------
DROP TABLE IF EXISTS biz_car_insurance_jq;
CREATE TABLE biz_car_insurance_jq (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����id',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  bxrq varchar(20) DEFAULT NULL COMMENT '��������',
  bxz varchar(20) DEFAULT NULL COMMENT '������',
  bxdh varchar(20) DEFAULT NULL COMMENT '���յ绰',
  bdzbbh varchar(16) DEFAULT NULL COMMENT '�����������',
  bdfbbh varchar(16) DEFAULT NULL COMMENT '�����������',
  bd_wz varchar(255) DEFAULT NULL COMMENT '����λ��',
  bz varchar(255) DEFAULT NULL COMMENT '��ע',
  bd_count varchar(10) DEFAULT NULL COMMENT '��������',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�������ձ�';

-- ----------------------------
-- Records of biz_car_insurance_jq
-- ----------------------------


-- ----------------------------
-- Table structure for biz_car_gas
-- ----------------------------
DROP TABLE IF EXISTS biz_car_gas;
CREATE TABLE biz_car_gas (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����ID',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  yszh varchar(32) DEFAULT NULL COMMENT '����֤��',
  bz varchar(255) DEFAULT NULL COMMENT '��ע',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�͸�����¼��';

-- ----------------------------
-- Records of biz_car_gas
-- ----------------------------

-- ----------------------------
-- Table structure for biz_car_file
-- ----------------------------
DROP TABLE IF EXISTS biz_car_file;
CREATE TABLE biz_car_file (
  id varchar(32) NOT NULL COMMENT 'id',
  cl_id varchar(32) DEFAULT NULL COMMENT '����ID',
  cph varchar(16) DEFAULT NULL COMMENT '���ƺ�',
  file_type varchar(32) DEFAULT NULL COMMENT '�ļ�����',
  file_code varchar(32) DEFAULT NULL COMMENT '�ļ����(���ƺ���_����)',
  seq varchar(32) DEFAULT NULL COMMENT '�ļ����',
  file_url varchar(255) DEFAULT NULL COMMENT '�ļ���ַ',
  jgdm varchar(32) DEFAULT NULL COMMENT '��������',
  jgmc varchar(32) DEFAULT NULL COMMENT '��������',
  cjr varchar(32) DEFAULT NULL COMMENT '������',
  cjsj varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����ļ���¼��';

-- ----------------------------
-- Records of biz_car_file
-- ----------------------------



/*==============================================================*/
/* Table: biz_car_warn                                          */
/*==============================================================*/
create table biz_car_warn
(
   id                   varchar(32) not null comment 'id',
   cl_id                varchar(32) comment '����ID',
   cph                  varchar(16) comment '���ƺ�',
   warn_date            varchar(32) comment '��������(yyyy_mm_dd)',
   expiry_yyyy            varchar(16) comment '��ֹ��',
   expiry_mm              varchar(16) comment '��ֹ��',
   warn_type            varchar(32) comment '��������(1�������������� 2���˹��������� 3�������������� 4���������� 5����������)',
   warn_pc              char(10) comment '�������� ����Ϊ��λ��һ��������',
      expiry_date          varchar(32) comment '��ֹ����',
   warn_dispose         varchar(2) comment '�����Ƿ��� ��/�� [ZDCLK1034]',
   dispose_code         varchar(32) comment '������',
   PRIMARY KEY (id)
);
alter table biz_car_warn comment '�������ѱ�';



ALTER TABLE `biz_car_property`
ADD COLUMN `past_cqr`  varchar(32) NULL COMMENT 'ԭ��Ȩ��' AFTER `yd`;

ALTER TABLE `biz_car_property`
ADD COLUMN `bz`  varchar(255) NULL COMMENT '��ע' AFTER `cjsj`;


ALTER TABLE `biz_car_property`
ADD COLUMN `jbr`  varchar(32) NULL COMMENT '������' AFTER `property_type`,
ADD COLUMN `jbr_dn`  varchar(32) NULL COMMENT '�����˵绰' AFTER `jbr`;



