/*1*/
select * from tokyo_post where postal_code = '1600023'; //1

/*2*/
select * from tokyo_post where address_kanji2 = '新宿区' order by postal_code asc limit 10; //2

/*3*/
select * from tokyo_post where address_kanji2 = '新宿区' order by postal_code asc limit 10,10; //3

/*4*/
set @shi='ｼ%';
select * from tokyo_post where address_cana2 like @shi  or address_cana3 like @shi;

/*5*/
set @shinjuku='%新宿%';
select * from tokyo_post where address_kanji2 like @shinjuku  or address_kanji3 like @shinjuku;　//?

/*6*/
select * from tokyo_post where address_kanji2 = '新宿区' or address_kanji2 = '渋谷区' or address_kanji2 = '世田谷区';

/*7*/
select * from tokyo_post where address_kanji1 = '東京都' and address_kanji2 = '新宿区' and address_kanji3 = '北町';

/*8*/
select count(postal_code) from tokyo_post where address_kanji2 = '新宿区'; //696件

/*9*/
update tokyo_post set address_kanji3 = NULL where address_kanji3 = '以下に掲載がない場合';

/*10*/
delete from tokyo_post where address_kanji2 != '新宿区';
