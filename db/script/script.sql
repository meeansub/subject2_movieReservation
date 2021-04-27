-- 영화 제목, 가격, 스케줄, 총좌석 조회-- 
select m.title, m.price, sc.time, sc.id scheduleId, sr.seats, sr.name
from movie m join schedule sc
on m.id = sc.movie_id
join screenroom sr
on sr.id = sc.screenroom_id;


-- 선택한 상영시간에 맞는 영화, 상영관 정보 가져오기-- 
select m.title, m.price, m.poster, sc.id scheduleId, sc.time, sc.movie_id, sc.screenroom_id, sr.seats, sr.name, sr.seat_matrix
from movie m join schedule sc
on m.id = sc.movie_id
join screenroom sr
on sr.id = sc.screenroom_id
where sc.id = 1;


-- 예매 등록 --
insert into reservation(seat_number, total_price, phone_number, schedule_id, schedule_movie_id, schedule_screenroom_id)
value("A-1", 10000, 01012345678, 1, 1, 1);


-- 예매 건수 출력--
select count(*)
from reservation
where schedule_id = 1;


-- 예매 확인 --
select r.seat_number, r.total_price, r.phone_number, r.schedule_id, r.movie_title, r.screenroom, sc.time
from reservation r join schedule sc
on r.schedule_id = sc.id
where r.phone_number = "01027460339";