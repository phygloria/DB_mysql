-- distinct

-- 단일 열 DISTINCT
select 
	category_code
	from tbl_menu
	order by category_code ;
	
-- distinct를 이용하면 중복값을 제거하고 출력할 수 있게 된다.
select 
	distinct category_code
	from tbl_menu ;
	
-- null 값을 포함한 열의 distinct
select 
  ref_category_code
  from tbl_category ;
  
 
 -- 열이 여러개인 distinct 
 select distinct 
	category_code,
	orderable_status
	from tbl_menu ;
	
  
 
select distinct 
	menu_name, 
	category_code,
	orderable_status
	from tbl_menu ;


-- 순서를 바꿔도 결과값은 동일하다.   
-- distinct 는 select 구문 다음에 온다.

select distinct 
	orderable_status,
	category_code
	from tbl_menu ;