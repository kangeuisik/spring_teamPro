drop table test_member;
create table test_member(
    mNum NUMBER(10) PRIMARY KEY,
    mid VARCHAR2(1000) NOT NULL UNIQUE, 
    mName VARCHAR2(1000)
);

drop sequence mNum_seq;
create sequence mNum_seq;

INSERT INTO test_member(mNum, mid, mName) VALUES(mNum_seq.NEXTVAL,'hong','ȫ�浿');
INSERT INTO test_member(mNum, mid, mName) VALUES(mNum_seq.NEXTVAL,'lee','�̼���');
INSERT INTO test_member(mNum, mid, mName) VALUES(mNum_seq.NEXTVAL,'kim','������');

commit;
select * from test_member ;

drop table test_cart;
create table test_cart(
    cartId NUMBER(10) PRIMARY KEY, -- īƮ��ȣ
    mid VARCHAR2(1000), -- ȸ�����̵�, �ܷ�Ű
    bookNo NUMBER(10) UNIQUE, -- å ��ȣ, �ܷ�Ű
    foreign key(mid) references test_member(mid),
    foreign key(bookNo) references book_table(bookNo)
);

drop sequence cart_seq;
create sequence cart_seq;

commit;
-- leeȸ���� �Ϻ���å-3, ����å-7 ��ٱ��Ͽ� ���
INSERT INTO test_cart(cartId, mid, bookNo) VALUES(cart_seq.NEXTVAL,'lee','25');
INSERT INTO test_cart(cartId, mid, bookNo) VALUES(cart_seq.NEXTVAL,'lee','7');
-- kimȸ���� �߱���å-20 ��ٱ��Ͽ� ���
INSERT INTO test_cart(cartId, mid, bookNo) VALUES(cart_seq.NEXTVAL,'kim','63');

select * from test_cart where mid='lee';
select * from test_cart where mid='hong';
select * from test_cart where mid='kim';