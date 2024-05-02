select 
	menu_code,
	menu_name,
	menu_price
  from tbl_menu
 order by menu_price asc; -- asc : 오름차순 정렬, DESC : 내림차순 정렬
 
 
 -- order by 절을 사용하여 결과 집합의 여러 열로 정렬
 select 
 	menu_code,
 	menu_name,
 	menu_price
   from tbl_menu
  order by 
  	menu_price desc,
  	menu_name asc;
  	-- 먼저 나온 기준으로 정렬되다가 중복되는 조건들 속에서 두번째 기준으로 정렬
  
  -- 메뉴의 코드,이름, 코드 곱하기 가격을 조회한다.
  -- 정렬의 기준은 코드의 오름차순으로 정렬해주세요.
  select 
 	menu_code,
 	menu_name,
 	menu_code * menu_price
   from tbl_menu
  order by menu_code asc;

  --
  select 
  	field('A','A','B','C',);
  
  select
  	field(orderable_status, 'N', 'Y')
  	from tbl_menu;
  
  select 
  	category_code,
  	category_name,
  	ref_category_code
    from tbl_category
   order by ref_category_code is null desc; 
 
  