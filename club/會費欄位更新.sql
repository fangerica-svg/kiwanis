-- 淡水同濟會 第28屆 會務追蹤：會費欄位擴充 (2026-08-27)
-- 在 Supabase → SQL Editor 貼上整段執行一次即可，領帶／敘獎的勾選不受影響

alter table kiwanis_members
  add column if not exists fee_due   integer default 0,
  add column if not exists fee_got   integer default 0,
  add column if not exists fund_due  integer default 0,
  add column if not exists fund_got  integer default 0,
  add column if not exists duty_due  integer default 0,
  add column if not exists duty_got  integer default 0,
  add column if not exists newm_due  integer default 0,
  add column if not exists newm_got  integer default 0,
  add column if not exists pay_date  text;


-- 新會員：林政德（原名單沒有，補進去）
insert into kiwanis_members (sort_no, grp, title, name, fee_amount, fee_paid, tie_received, award_received)
select 50, '會兄', '新會員', '林政德', 0, false, false, false
where not exists (select 1 from kiwanis_members where name = '林政德');


-- 依 28屆會費表 0827 版填入應繳／已繳金額與入帳日期

update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=30000, duty_got=30000, newm_due=0, newm_got=0, pay_date='0811', fee_amount=50000, fee_paid=true where name='李益欽';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=5000, duty_got=5000, newm_due=0, newm_got=0, pay_date='0817', fee_amount=25000, fee_paid=true where name='潘文進';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=10000, duty_got=10000, newm_due=0, newm_got=0, pay_date='0822', fee_amount=30000, fee_paid=true where name='連政凱';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=5000, duty_got=5000, newm_due=0, newm_got=0, pay_date='0811', fee_amount=25000, fee_paid=true where name='王治政';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=5000, duty_got=5000, newm_due=0, newm_got=0, pay_date='0811', fee_amount=25000, fee_paid=true where name='林永龍';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='謝安棋';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0814', fee_amount=20000, fee_paid=true where name='盧忠義';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0813', fee_amount=20000, fee_paid=true where name='林勝弘';
update kiwanis_members set fee_due=15300, fee_got=15300, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0821', fee_amount=17300, fee_paid=true where name='盧金龍';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0819', fee_amount=20000, fee_paid=true where name='李建勝';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0818', fee_amount=20000, fee_paid=true where name='周清源';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='林國峯';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='陳銘志';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='陳煌林';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0812', fee_amount=20000, fee_paid=true where name='謝仲信';
update kiwanis_members set fee_due=18000, fee_got=9000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0822', fee_amount=20000, fee_paid=false where name='許春敏';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0823', fee_amount=20000, fee_paid=true where name='王燦煌';
update kiwanis_members set fee_due=15300, fee_got=15300, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0824', fee_amount=17300, fee_paid=true where name='魏培文';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='許隆華';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='郭丁木';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0822', fee_amount=20000, fee_paid=true where name='盧春林';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0822', fee_amount=20000, fee_paid=true where name='游閔勇';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='曾健瑞';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='方思喻';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0822', fee_amount=20000, fee_paid=true where name='黃錦紹';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0813', fee_amount=20000, fee_paid=true where name='陳福音';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=3000, duty_got=3000, newm_due=0, newm_got=0, pay_date='0813', fee_amount=23000, fee_paid=true where name='張鈞霖';
update kiwanis_members set fee_due=18000, fee_got=11500, fund_due=2000, fund_got=2000, duty_due=3000, duty_got=3000, newm_due=0, newm_got=0, pay_date='0822', fee_amount=23000, fee_paid=false where name='陳國華';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=3000, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=23000, fee_paid=false where name='陳志成';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=3000, duty_got=3000, newm_due=0, newm_got=0, pay_date='0814', fee_amount=23000, fee_paid=true where name='黃自強';
update kiwanis_members set fee_due=15300, fee_got=0, fund_due=2000, fund_got=0, duty_due=5000, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=22300, fee_paid=false where name='呂承男';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=3000, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=23000, fee_paid=false where name='杜凱恩';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=3000, duty_got=3000, newm_due=0, newm_got=0, pay_date='0814', fee_amount=23000, fee_paid=true where name='紀傑元';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0813', fee_amount=20000, fee_paid=true where name='紀景元';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0822', fee_amount=20000, fee_paid=true where name='黃梓榮';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='吳德銘';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='林峻賢';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='周文烈';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='盧武揚';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='陳文肯';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='陳昆伸';
update kiwanis_members set fee_due=18000, fee_got=18000, fund_due=2000, fund_got=2000, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date='0822', fee_amount=20000, fee_paid=true where name='盧進財';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='王嘉偉';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='施嘉鎮';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='曾鈺澤';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='林正偉';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='吳培協';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='楊聰賓';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=0, newm_got=0, pay_date=null, fee_amount=20000, fee_paid=false where name='黃呈達';
update kiwanis_members set fee_due=18000, fee_got=0, fund_due=2000, fund_got=0, duty_due=0, duty_got=0, newm_due=3000, newm_got=0, pay_date=null, fee_amount=23000, fee_paid=false where name='林政德';
