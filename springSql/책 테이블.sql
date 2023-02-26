-- ī�װ�
drop table book_category CASCADE CONSTRAINTS;
create table book_category(
    cate_id varchar2(1000) PRIMARY KEY,
    cate_name varchar2(1000)
);
drop sequence cate_seq;
create sequence cate_seq;

insert into book_category(cate_id,cate_name) VALUES('language','���');
insert into book_category(cate_id,cate_name) VALUES('natural_science','�ڿ�����');
commit;
select * from book_category;

-- ����ī�װ�
drop table book_subCategory CASCADE CONSTRAINTS;
create table book_subCategory(
    cate_id varchar2(1000),
    subCate_id varchar2(1000) PRIMARY KEY,
    subCate_name varchar2(1000),
    foreign key(cate_id) references book_category(cate_id)
    on delete cascade
);
drop sequence subCate_seq;
create sequence subCate_seq;

insert into book_subCategory(cate_id,subCate_id,subCate_name) VALUES('language','english','����');
insert into book_subCategory(cate_id,subCate_id,subCate_name) VALUES('language','japanese','�Ϻ���');
insert into book_subCategory(cate_id,subCate_id,subCate_name) VALUES('language','chinese','�߱���');
insert into book_subCategory(cate_id,subCate_id,subCate_name) VALUES('natural_science','physics','������');
commit;
select * from book_subCategory;

-- book ���̺�
drop table book_table CASCADE CONSTRAINTS;
create table book_table(
    bookNo NUMBER(10) PRIMARY KEY, -- å��ȣ
    cate_id VARCHAR2(1000) , -- ī�װ�
    subCate_id VARCHAR2(1000), -- ����ī�װ�
    bookName VARCHAR2(1000) NOT NULL, -- å ����
--    book_writer VARCHAR2(1000), -- ����
--    publisher VARCHAR2(1000), -- ���ǻ�
--    bookInfo VARCHAR2(4000), -- å�Ұ�
--   price NUMBER(10), -- �ǸŰ���
--    bookImage VARCHAR2(1000), -- �̹���
--    regDate DATE DEFAULT sysdate, -- �����
    foreign key(cate_id) references book_category(cate_id),
    foreign key(subcate_id) references book_subCategory(subcate_id)
    on delete cascade
);

drop sequence bookNo_seq;
create sequence bookNo_seq;

commit;
select * from book_table;


select 
    rn, bookNo, cate_id, subCate_id, bookName 
from
(
    select 
        rownum as rn, bookNo, cate_id, subCate_id, bookName
    from 
        book_table
    where rownum <= 10
)
where rn > 0;