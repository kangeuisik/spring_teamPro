DECLARE
    I NUMBER(5); 
BEGIN
    -- IT / ���α׷��־�� 
    FOR i IN 1 .. 44
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName, author, publisher)
        VALUES (bookNo_seq.NEXTVAL,'information_technology','programming_language', '�̰��� �ڹٴ�-'||I, '�ſ��','�Ѻ��̵��'); 
    END LOOP; 
    
   -- IT / �����ͺ��̽�  
    FOR i IN 1 .. 42
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName, author, publisher)
        VALUES (bookNo_seq.NEXTVAL,'information_technology','database', '�̰��� ����Ŭ�̴�-'||I, '���糲', '�Ѻ��̵��'); 
    END LOOP; 
    
    -- IT / ������Ʈ 
    FOR i IN 1 .. 54
    LOOP
        INSERT INTO book_table(bookNo, cate_id, subCate_id, bookName, author, publisher)
        VALUES (bookNo_seq.NEXTVAL,'information_technology','website', 'Do it! �ڹٽ�ũ��Ʈ + �������� �Թ�-'||I, '���ο�','�������ۺ���'); 
    END LOOP;     
         
END;