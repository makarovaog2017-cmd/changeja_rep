select p.id as person_id, count (*) as count_of_visits
from person p
left join person_visits pv on p.id = pv.person_id 
group by p.id
order by count_of_visits desc, person_id asc;
