-- 영화 제목, 가격, 스케줄, 총좌석 조회-- 
select m.title, m.price, sc.time, sc.id scheduleId, sr.seats, sr.name
from movie m join schedule sc
on m.id = sc.movie_id
join screenroom sr
on sr.id = sc.screenroom_id;


-- 선택한 상영시간에 맞는 영화, 상영관 정보 가져오기-- 
select m.title, m.price, m.poster, sc.id scheduleId, sc.time, sc.movie_id, sc.screenroom_id, sr.seats, sr.name
from movie m join schedule sc
on m.id = sc.movie_id
join screenroom sr
on sr.id = sc.screenroom_id
where sc.id = 1;