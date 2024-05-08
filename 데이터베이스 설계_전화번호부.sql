-- CREATE TABLE IF NOT EXISTS tbl_category
-- (
--     category_code    INT AUTO_INCREMENT COMMENT '카테고리코드',
--     category_name    VARCHAR(30) NOT NULL COMMENT '카테고리명',
--     ref_category_code    INT COMMENT '상위카테고리코드',
--     CONSTRAINT pk_category_code PRIMARY KEY (category_code),
--     CONSTRAINT fk_ref_category_code FOREIGN KEY (ref_category_code) REFERENCES tbl_category (category_code)
-- ) ENGINE=INNODB COMMENT '카테고리';


create table if not exists user_info
(
	user_no INT PRIMARY key AUTO_INCREMENT COMMENT '유저번호',
	user_name VARCHAR(4) NOT NULL COMMENT '유저이름',
	user_address VARCHAR(10) NOT NULL COMMENT '유저주소'

) ENGINE=INNODB COMMENT '회원정보';




create table if not exists call_list
(
	call_list_code INT AUTO_INCREMENT COMMENT '전화번호부 코드',
	user_no INT unique COMMENT '유저번호',
	CONSTRAINT pk_call_list_code PRIMARY KEY (call_list_code),
	CONSTRAINT fk_user_no FOREIGN KEY (user_no) REFERENCES user_info (user_no)

) ENGINE=INNODB COMMENT '전화번호부';



CREATE TABLE IF NOT EXISTS call_number
(
    call_code int primary key auto_increment comment '전화번호코드',
    user_no int  comment '유저번호',
    call_name varchar(10) not null comment '전화번호 구분',
    call_number varchar(20) not null comment '전화번호',
    main_call char check(main_call in ('y','n')) comment '상태(대표번호)',
    
    constraint fk_user_no FOREIGN key (user_no) references user_info (user_no)
    
) engine=innodb comment '전화번호';




create table if not exists call_link
(
	call_list_code INT COMMENT '전화번호부 코드',	
	call_code INT COMMENT '전화번호 코드',
	CONSTRAINT fk_call_list_code FOREIGN KEY (call_list_code) REFERENCES call_list (call_list_code),
	CONSTRAINT fk_call_code FOREIGN KEY (call_code) REFERENCES call_number (call_code)

) ENGINE=INNODB COMMENT '전화번호 링크';



-- 데이터삽입

INSERT INTO user_info VALUES (null, '김다영', '면목동');
INSERT INTO user_info VALUES (null, '김재석', '고잔동');
INSERT INTO user_info VALUES (null, '박하영', '군자동');
INSERT INTO user_info VALUES (null, '서은진', '가산동');
INSERT INTO user_info VALUES (null, '김민주', '암사동');

INSERT INTO call_number VALUES (null, null, '핸드폰', '010-8846-5953', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-6383-9728', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-8985-3027', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-6270-4016', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-2863-0788', 'y');



select 
	*
	from user_info;






