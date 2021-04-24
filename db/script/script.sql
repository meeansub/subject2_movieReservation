-- 영화 제목, 가격, 스케줄, 총좌석 조회-- 
select m.title, m.price, sc.time, sr.seats, sr.name
from movie m join schedule sc
on m.id = sc.movie_id
join screenroom sr
on sr.id = sc.screenroom_id;