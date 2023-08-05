USE car_rent;
CREATE TABLE t_user (
 uid VARCHAR(45) NOT NULL,
 uname VARCHAR(45) NOT NULL,
 udate DATE NOT NULL,
 upsw VARCHAR(45) NOT NULL, PRIMARY KEY (uid));
 
CREATE TABLE t_car_info (
 carid VARCHAR(45) NOT NULL,
 cartype VARCHAR(45) NOT NULL,
 carlic VARCHAR(45) UNIQUE, PRIMARY KEY (carid));
 
CREATE TABLE t_type_info(
 cartype VARCHAR(45) NOT NULL,
 rentprice FLOAT NOT NULL,
 type_num INT NOT NULL, PRIMARY KEY (cartype));
 
CREATE TABLE t_store_info (
 storeid VARCHAR(45) NOT NULL,
 storename VARCHAR(45) NOT NULL,
 storepla VARCHAR(100) NOT NULL,
 if_exist TINYINT NOT NULL, PRIMARY KEY (storeid));
 
CREATE TABLE t_admin (
 adminid VARCHAR(45) NOT NULL,
 adminpsw VARCHAR(45) NOT NULL, PRIMARY KEY (adminid));
 
CREATE TABLE t_user_order (
 uid VARCHAR(45) NOT NULL,
 carid VARCHAR(45) NOT NULL,
 rentdate DATE NOT NULL,
 returndate DATE NOT NULL,
 rentstore VARCHAR(45) NOT NULL,
 returnstore VARCHAR(45) NOT NULL,
 payment FLOAT NOT NULL, FOREIGN KEY (uid) REFERENCES t_user(uid) ON
DELETE CASCADE ON
UPDATE CASCADE);

CREATE TABLE t_car_res (
 uid VARCHAR(45) NOT NULL,
 cartype VARCHAR(45) NOT NULL,
 rentdate DATE NOT NULL,
 returndate DATE NOT NULL,
 rentstore VARCHAR(45) NOT NULL,
 returnstore VARCHAR(45) NOT NULL,
 paydepo TINYINT NOT NULL, FOREIGN KEY (uid) REFERENCES t_user(uid) ON
DELETE CASCADE ON
UPDATE CASCADE, FOREIGN KEY (cartype) REFERENCES t_type_info(cartype) ON
DELETE CASCADE ON
UPDATE CASCADE);

CREATE TABLE t_car_rent (
 uid VARCHAR(45) NOT NULL,
 carid VARCHAR(45) NOT NULL,
 rentdate DATE NOT NULL,
 returndate DATE,
 rentstore VARCHAR(45) NOT NULL,
 returnstore VARCHAR(45),
 overdue TINYINT, FOREIGN KEY (uid) REFERENCES t_user(uid) ON
DELETE CASCADE ON
UPDATE CASCADE);

CREATE TABLE t_car_pla (
 carid VARCHAR(45) NOT NULL,
 carstoreid VARCHAR(45) NOT NULL,
 carrent TINYINT NOT NULL, FOREIGN KEY (carid) REFERENCES t_car_info(carid) ON
DELETE CASCADE ON
UPDATE CASCADE, FOREIGN KEY (carstoreid) REFERENCES t_store_info(storeid) ON
DELETE CASCADE ON
UPDATE CASCADE);

INSERT INTO t_admin (adminid, adminpsw) VALUES ('admin', '123');

INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202001001', 'ypf', '2020-1-11', '123');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202101002', 'wsa', '2021-1-3', 'asd102');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202212003', 'ww', '2022-12-8', '!as23');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202301004', 'lm', '2023-1-4', '89/a');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202201005', 'as', '2022-1-4', '9/*-+qw');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202101006', 'bv', '2021-1-4', '8asd9/a');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202306007', 'hk', '2023-6-9', 'fgc89/a');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202305008', 'lo', '2023-5-12', '8vj/a');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202306009', 'jy', '2023-6-19', '6679/ksj');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202309010', 'gf', '2023-9-16', 'jhfmlkiw');
INSERT INTO t_user (uid, uname, udate, upsw) VALUES ('U202311011', 'hb', '2023-11-15', '5053sjkg');

INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00001', '���ǵϺ�', 'ԥA54GY3');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00002', '��˹��MODEL3', '��A88888');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00003', '��˹��MODELY', '��AABC99');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00004', '���ǵϺ�', '��AD4567');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00005', '����', '��B67YTR');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00006', '��˹��MODELY', '��C90YU1');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00007', '���ǵ���', '��B12EW6');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00008', '��˹��MODEL3', 'ԥZUI49Q');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00009', '���ǵ���', 'ԥC89IQS');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00010', '���ǵ���', '��D987BC');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00011', '���ǵϺ�', '��E569RQ');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00012', '��ʱ��911', '��DOUI89');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00013', '����U8', '��G76532');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00014', '��˹��MODELX', '��H896AY');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00015', '����', '��F89365');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00016', '����', '��B67YTR');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00017', '��˹��MODELX', '��C90U18');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00018', '��ʱ��', '��B12NW6');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00019', '����', '��ZUI49Q');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00020', '���ǵ���', '��C89EPS');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00021', '���ǵ���', '��R76GBC');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00022', '���ǵ���', '��T529RQ');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00023', '���ǵϺ�', 'ԥE569RQ');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00024', '��ʱ��911', '��DOUI89');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00025', '����U8', '��G76F3L');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00026', '���ǵ���', '��H896AY');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00027', '����', '��FM93L5');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00028', '����', '��B6AE9H');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00029', '��˹��MODELX', '��C90U18');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00030', '��ʱ��', '��B12EW6');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00031', '����', '��ZUI49Q');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00032', '����', '��C89E2S');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00033', '���ǵ���', '��R76G0C');
INSERT INTO t_car_info (carid, cartype, carlic) VALUES ('C00034', '���ǵϺ�', '��T529RQ');

INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('���ǵϺ�', '500','5');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('��˹��MODEL3', '700','2');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('��˹��MODELY', '800','2');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('����', '400','4');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('���ǵ���', '600','5');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('��ʱ��911', '1000','2');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('����U8', '800','2');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('��˹��MODELX', '800','3');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('����', '300','4');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('��ʱ��', '900','2');
INSERT INTO t_type_info (cartype, rentprice, type_num) VALUES ('���ǵ���', '300','3');

INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00001', '�����⳵', '�����к�����ѧԺ·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00002', '�����⳵', '�����г�����������·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00003', '�����⳵', '�㽭ʡ�������ϳ�������·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00004', '�⳵����', '�㽭ʡ��ɽ������·��',0);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00005', '�⳵����', '�Ϻ��л���·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00006', '�⳵һ��', '����ʡ�Ͼ��д�ѧ·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00007', '��������', '�㶫ʡ������ѧԺ·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00008', '�⳵Ҽ��', '����ʡ�����л���·��',1);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00009', '��������', '�����г���������·��',0);
INSERT INTO t_store_info (storeid, storename, storepla,if_exist) VALUES ('S00010', '��������', '�Ϻ��п���·��',1);

INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202001001', 'C00001', '2020-12-5', '2020-12-6', 'S00001', 'S00003', '1000');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202201005', 'C00003', '2023-1-5', '2023-1-9', 'S00003', 'S00002', '4000');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202001001', 'C00010', '2022-12-09', '2022-12-15', 'S00002', 'S00004', '4200');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202101002', 'C00012', '2020-12-6', '2020-12-6', 'S00010', 'S00005', '1000');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202212003', 'C00016', '2023-1-8', '2023-1-9', 'S00008', '200001', '800');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202309010', 'C00019', '2022-12-13', '2022-12-15', 'S00009', 'S00002', '900');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202305008', 'C00023', '2021-1-10', '2021-1-13', 'S00006', 'S00007', '2000');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202311011', 'C00028', '2023-3-5', '2023-3-6', 'S00007', 'S00001', '800');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202306007', 'C00030', '2022-11-12', '2022-11-15', 'S00003', 'S00009', '3600');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202212003', 'C00032', '2020-07-05', '2020-07-06', 'S00005', 'S00008', '800');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202101006', 'C00034', '2023-11-25', '2023-11-29', 'S00001', 'S00009', '2500');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202101002', 'C00027', '2022-09-04', '2020-09-05', 'S00002', 'S00007', '600');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202306009', 'C00024', '2021-12-05', '2021-12-08', 'S00010', 'S00006', '4000');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202309010', 'C00026', '2023-1-5', '2023-1-6', 'S00009', 'S00001', '600');
INSERT INTO t_user_order (uid, carid, rentdate, returndate, rentstore, returnstore, payment) VALUES ('U202101006', 'C00022', '2023-04-02', '2023-04-05', 'S00007', 'S00009', '1200');

INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202101002', '���ǵϺ�', '2023-5-31', '2023-6-30', 'S00001', 'S00003', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202101006', '��˹��MODELY', '2023-5-1', '2023-6-10', 'S00002', 'S00004', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202201005', '����', '2023-4-30', '2023-6-10', 'S00002', 'S00001', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202306009', '��ʱ��911', '2023-4-30', '2023-5-1', 'S00005', 'S00009', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202311011', '���ǵϺ�', '2023-5-2', '2023-5-3', 'S00006', 'S00008', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202212003', '����', '2023-5-1', '2023-5-10', 'S00010', 'S00005', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202301004', '��˹��MODEL3', '2023-4-29', '2023-5-2', 'S00007', 'S00003', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202305008', '���ǵ���', '2023-5-2', '2023-5-3', 'S00008', 'S00003', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202309010', '����U8', '2023-5-1', '2023-5-10', 'S00001', 'S00010', '1');
INSERT INTO t_car_res (uid, cartype, rentdate, returndate, rentstore, returnstore, paydepo) VALUES ('U202306007', '��ʱ��', '2023-5-30', '2023-6-4', 'S00002', 'S00001', '1');

INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202101006', 'C00007', '2023-05-30', 'S00002','S00004');
INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202201005', 'C00008', '2023-04-29', 'S00002','S00001');
INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202306009', 'C00014', '2023-05-06', 'S00005','S00009');
INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202311011', 'C00018', '2023-05-08', 'S00006','S00008');
INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202301004', 'C00029', '2023-05-12', 'S00007','S00003');
INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202305008', 'C00030', '2023-05-14', 'S00008','S00003');
INSERT INTO t_car_rent (uid, carid, rentdate, rentstore,returnstore) VALUES ('U202309010', 'C00033', '2023-05-16', 'S00001','S00010');

INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00001', 'S00003', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00002', 'S00001', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00003', 'S00002', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00004', 'S00003', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00005', 'S00004', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00006', 'S00001', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00007', 'S00002', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00008', 'S00004', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00009', 'S00001', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00010', 'S00004', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00011', 'S00003', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00012', 'S00005', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00013', 'S00010', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00014', 'S00008', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00015', 'S00009', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00016', 'S00001', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00017', 'S00006', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00018', 'S00004', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00019', 'S00002', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00020', 'S00003', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00021', 'S00008', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00022', 'S00009', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00023', 'S00007', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00024', 'S00006', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00025', 'S00004', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00026', 'S00001', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00027', 'S00007', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00028', 'S00001', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00029', 'S00003', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00030', 'S00009', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00031', 'S00010', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00032', 'S00008', '0');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00033', 'S00008', '1');
INSERT INTO t_car_pla (carid, carstoreid, carrent) VALUES ('C00034', 'S00009', '0');

GO
CREATE proc res
@id VARCHAR(45),
@type VARCHAR(45),
@rent_d DATE,
@return_d DATE,
@rent_s VARCHAR(100),
@return_s VARCHAR(100)
as
BEGIN
DECLARE @rent_id VARCHAR(45);
DECLARE @return_id VARCHAR(45);
select @rent_id = storeid FROM t_store_info where storepla = @rent_s;
select @return_id = storeid FROM t_store_info where storepla = @return_s;
insert into t_car_res values(@id,@type,@rent_d,@return_d,@rent_id,@return_id,1);
END
GO

GO
CREATE proc return_car
@id VARCHAR(45),
@r_date DATE,
@payment FLOAT,
@over TINYINT
as
BEGIN
/*ɾ��ԤԼ������*/
DELETE FROM t_car_res WHERE uid = @id;
/*����rent�����ݣ�����ȡ����ֵ*/
/*�����ŵ���Ϣ��ԤԼ����ͬ  ���Խ��������ڣ��Ƿ��������ü���*/
UPDATE t_car_rent
SET t_car_rent.returndate = @r_date
WHERE uid = @id;
UPDATE t_car_rent
SET t_car_rent.overdue = @over
WHERE uid = @id;
/*����û���������*/
DECLARE @car_id VARCHAR(45);
DECLARE @rent_d DATE;
DECLARE @rent_s VARCHAR(45);
DECLARE @return_s VARCHAR(45);
select @car_id = carid from t_car_rent where uid = @id;
select @rent_d = rentdate from t_car_rent where uid = @id;
select @rent_s = rentstore from t_car_rent where uid = @id;
select @return_s = returnstore from t_car_rent where uid = @id;
insert into t_user_order values(@id,@car_id,@rent_d,@r_date,@rent_s,@return_s,@payment);
DELETE FROM t_car_rent WHERE uid = @id;
END
GO

GO
CREATE proc xu_yue 
@id VARCHAR(45),
@t_date DATE
as
BEGIN
UPDATE t_car_res
SET t_car_res.returndate = @t_date
WHERE uid = @id;
END
GO
