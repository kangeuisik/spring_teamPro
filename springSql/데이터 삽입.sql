DECLARE
    I NUMBER(5); 
BEGIN
    -- ��� / ���� 
    FOR i IN 1 .. 22
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName)
        VALUES (bookNo_seq.NEXTVAL,'language','english', '����å-'||I); 
    END LOOP; 
    
    -- ��� / �Ϻ��� 
    FOR i IN 1 .. 21
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName)
        VALUES (bookNo_seq.NEXTVAL,'language','japanese', '�Ϻ���å-'||I); 
    END LOOP; 
    
    -- ��� / �߱��� 
    FOR i IN 1 .. 27
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName)
        VALUES (bookNo_seq.NEXTVAL,'language','chinese', '�߱���å-'||I); 
    END LOOP;     
    
    -- �ڿ����� / ������
    FOR i IN 1 .. 29
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName)
        VALUES (bookNo_seq.NEXTVAL,'natural_science','physics', '������å-'||I); 
    END LOOP;     
END;