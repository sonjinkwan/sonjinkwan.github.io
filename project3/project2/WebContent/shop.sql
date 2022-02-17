select * from qna;


select * from prolist;
select * from qna;
update qna set idx=001 where author='관리자';
select * from qna order by idx;

create sequence scott.qna_idx increment by 1 start with 22 minvalue 22 maxvalue 999 nocycle nocache;

create SEQUENCE scott.inform_idx INCREMENT by 1 START with 1 minvalue 1 maxvalue 99999 nocycle nocache;

alter table qna add visited number(8);
update qna set visited=0;
drop table prolist;
create table garment(gtype varchar2(20),gcode varchar2(4)primary key,gname varchar2(80) not null,
gprice number(6) not null,gcnt number(5) not null,gsize varchar2(3) not null,gimg varchar2(80) not null);
select * from garment;
drop table garment;
insert into garment values ()
select * from megaphone;

insert into garment values ()
select * from garment;
alter table garment add gvisited number(4);
update garment set gvisited=0;
insert into garment values ()
alter table garment drop column visited;
alter table garment drop column gvisited;
select* from custom;
create sequence megaphone_midx increment by 1 start with 1 minvalue 1 maxvalue 999 nocycle nocache;
alter table custom rename column id to cid;
alter table custom rename column pw to cpw;
alter table custom rename column name to cname;
alter table custom rename column zip to czip;
alter table custom rename column addr1 to caddr1;
alter table custom rename column addr2 to caddr2;
alter table custom rename column tel to ctel;
alter table custom rename column email to cemail;
alter table custom rename column birth to cbirth;
select * from custom;
insert into custom values ('xoals','1234','김태민',11111,'경기도 고양시 일산동구','대산로31번길',01099070797,'xoals1028@naver.com',19951028);
select * from megaphone;
delete from megaphone where midx=1;
insert into megaphone values (megaphone_midx.nextval,'관리자','공지사항','공지사항',sysdate,0 );
insert into megaphone values (megaphone_midx.nextval,'관리자','공지사항2','공지사항2',sysdate,0 );
insert into megaphone values (megaphone_midx.nextval,'관리자','공지사항3','공지사항3',sysdate,0 );
insert into megaphone values (megaphone_midx.nextval,'관리자','공지사항4','공지사항4',sysdate,0 );

select * from custom;
select * from qna;
select * from megaphone;
select * from garment;
insert into garment
select * from basket;
create table flex ()
create table basket (cid varchar2(20)primary key, cname varchar2(16)not null, gcode varchar2(4)not null, gname varchar2(80)not null, gprice number(6)not null, bcnt number(5)not null, gsize varchar2(3)not null);
drop table basket;
select * from flex;
drop table flex;
create table flex (fcode varchar2(4)primary key, cid varchar2(20)not null, gcode varchar2(20)not null, bcnt number(5)not null, fway varchar2(20)not null, fbank varchar2(40)not null, faccount varchar2(50), fpw number(2), fdate date );
select * from flex;
drop table basket;
create table basket (bid varchar2(5)primary key, cid varchar2(20)not null, gcode varchar2(4)not null, bcnt number(5)not null, validity varchar2(5)not null);
select * from basket;
create table board (board_num number(5)primary key, board_id varchar2(50)not null, board_subject varchar2(100)not null, board_content varchar2(2000)not null, board_file varchar2(100)not null, board_re_ref number(5)not null, board_re_lev number(5)not null, board_re_seq number(5)not null, board_count number(5)not null, board_date date);
select * from board;
drop table board
create SEQUENCE bnum INCREMENT by 1 START with 1 minvalue 1 maxvalue 99999 nocycle nocache;
create SEQUENCE bre_seq INCREMENT by 1 START with 1 minvalue 1 maxvalue 99999 nocycle nocache;
insert into board values (bnum.nextval, 'admin','qna테스트','qna테스트','null', 1, 10, bre_seq.nextval, 0, sysdate);
select * from board;
alter table board modify board_re_ref null;
alter table board modify board_re_lev null;
alter table board modify board_re_seq null;
alter table board modify board_count null;
select * from basket;
create table custom(cid varchar2(20) primary key,cpw varchar2(20) not null,cname varchar2(16) not null,
czip number(5) not null, caddr1 varchar2(160) not null, caddr2 varchar2(160) not null,
ctel number(11) not null,cemail varchar2(50), cbirth number(8) not null);
select * from custom;
create table qna(idx number(3) primary key,author varchar2(20) not null,title varchar2(160) not null,content varchar2(1200) not null,
regdate date);
select * from qna;
select * from custom;
select * from garment;
select * from flex;
select * from basket;
drop table garment;
create sequence flex_fcode increment by 1 start with 1 minvalue 1 maxvalue 999 nocycle nocache;
delete from garment where gcode='A001';
insert into garment values('악세서리','A001','나이키 레거시91 스우시캡 블랙',24000,30,'M','./img/cap1.jpg');
insert into garment values('악세서리','A002','나이키 레거시91 스우시캡 화이트',24900,30,'L','./img/cap2.jpg');
insert into garment values('악세서리','A003','오프화이트x나이키 핸드폰 케이스',19800,30,'M','./img/case1.jpg');
insert into garment values('악세서리','A004','나이키 오리진 핸드폰 케이스',15000,30,'M','./img/case2.jpg');
insert into garment values('하의','B001','나이키 테크플리스 팬츠',79000,30,'M','./img/jogger1.jpg');
insert into garment values('하의','B002','나이키 클럽조거 팬츠',69000,30,'S','./img/jogger2.jpg');
insert into garment values('하의','B003','나이키 트레이닝',98000,30,'L','./img/train1.jpg');
insert into garment values('하의','B004','나이키 에센셜 우븐 팬츠',83000,30,'M','./img/train2.jpg');
insert into garment values('신발','C001','조던 덩크로우',249000,30,'L','./img/jordan1.jpg');
insert into garment values('신발','C002','조던 스모크그레이 하이',289000,30,'L','./img/jordan2.jpg');
insert into garment values('신발','C003','나이키 에어맥스 던',57900,30,'L','./img/run1.jpg');
insert into garment values('신발','C004','나이키 베이퍼플라이',135000,30,'L','./img/run2.jpg');
insert into garment values('상의','D001','나이키 클럽크루 맨투맨',47000,30,'L','./img/man1.jpg');
insert into garment values('상의','D002','나이키 맨투맨',58000,30,'L','./img/man2.jpg');
insert into garment values('상의','D003','나이키 기모 후드',54000,30,'L','./img/hoodie1.jpg');
insert into garment values('상의','D004','나이키 클럽 후드',69000,30,'L','./img/hoodie2.jpg');
insert into garment values('아우터','E001','나이키 맨스 푸퍼 다운',149000,30,'L','./img/padding1.jpg');
insert into garment values('아우터','E002','나이키 로고 오버핏 숏패딩',89000,30,'L','./img/padding2.jpg');
insert into garment values('아우터','E003','나이키 스테이트먼트 우븐 바람막이',147000,30,'L','./img/wind1.jpg');
insert into garment values('아우터','E004','나이키 헤리티지 클럽 바람막이',115000,30,'L','./img/wind2.jpg');

insert into flex values (flex_fcode.nextval, 'xoals', 'A001', 2, '카드', '신한은행', '123', 11, sysdate);
select * from flex;
create SEQUENCE bid_seq INCREMENT by 1 START with 1 minvalue 1 maxvalue 99999 nocycle nocache;