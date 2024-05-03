-- group by 

-- 같은 값을 묶을 때 사용하는 키워드이다.

select 
	category_code,
	count(*)
	from tbl_menu  
	group by category_code;
	

select 
	category_code,
	sum(menu_price)
	from tbl_menu 
 group by category_code ;	

-- select 
-- 	category_code,
-- 	concat (menu_price)
-- 	from tbl_menu ;


-- 해당 카테고리의 가격 평균 구하기
select 
	category_code as b,
	avg(menu_price)
	from tbl_menu 
	group by category_code;

-- 그룹바이는 해당 카테고리가 조회되어야 기능할 수 있다
-- select 
-- 	category_code as b,
-- 	avg(menu_price)
-- 	from tbl_menu 
-- 	group by category_code;



-- 여러 값을 묶는 경우
select 
	category_code as b,
	menu_price,
	count(*)
	from tbl_menu 
	group by category_code, menu_price;
-- 조건 n개 지정하기 
select * from tbl_menu where category_code = 10;


-- 그룹에 조건 부여하기
-- having
select 
	category_code
	from tbl_menu 
	where category_code > 6 -- sql 쿼리 전체에 대한 조건
	group by category_code 
	having category_code between 5 and 8; -- having  그룹 집합에 대한 조건
-- between은 날짜 조회할 때 자주 사용. n부터 z까지 사이

