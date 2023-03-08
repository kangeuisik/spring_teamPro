drop table hopeBook;
create table hopeBook( --��ġ������� ��û ���̺�
    rno int not null, --������ ��û��ȣ
    mno Number(10)not null ,
    id VARCHAR2(1000) not null , 
    name varchar(1000)not null ,-- �����ȣ ��û�ڴ� ���߿� ȸ���ۼ��Ǹ� �ٲ�
    nbookName varchar(500) not null, --�� å�̸� ���Ŀ� �����ʿ�
    nbookWriter varchar(500) not null, -- ��å�� ����
    npublisher varchar(500) not null, -- �� å�� ���ǻ�
    requestDate Date Default sysdate, -- ��û��¥
    result varchar(500), -- ��û��� �Է¹޾ƾ���
    etc varchar(500), -- ���� (������ �����Է¹ޱ�)
    constraint primary_rno primary key(rno),
    constraint fk_mid foreign key(id)
    references mem_tbl(id)
    on delete cascade
);

drop SEQUENCE rno_seq;
create SEQUENCE rno_seq;

insert into hopeBook(rno,mno,id,name,nbookName,nbookWriter,npublisher,result,etc)
values(rno_seq.nextval,1,'jang','�����','ȫ�浿��','���','�뱸��','���δ��','');
insert into hopeBook(rno,mno,id,name,nbookName,nbookWriter,npublisher,result,etc)
values(rno_seq.nextval,2,'kang','���ǽ�','�װ��� �˰�ʹ�','�����','����','���δ��','');
insert into hopeBook(rno,mno,id,name,nbookName,nbookWriter,npublisher,result,etc)
values(rno_seq.nextval,3,'park','�ڼ���','����������','�����','�������ǻ�','���δ��','');

select* from hopeBook;
SELECT MAX(Rno)+1 as NewRno FROM hopeBook;
commit;


--update hopeBook set result ='����', etc='�׳�' where rno=1;

select *from hopeBook where result='���δ��' and mname = 'ȫ�浿';

		select 
		    rno,mNum,mid,mname,nbookName,nbookWriter,npublisher,result,etc
		from
		(
		    select 
		        /*+ index_desc(hopeBook primary_rno) */
		       rownum as rn, rno,mNum,mid,mname,nbookName,nbookWriter,npublisher,result,etc
		    from 
		        hopeBook
		    where rownum <= 10
        ) 
		where rn > 1 and result ='���δ��';