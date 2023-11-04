-- select the park name, campground name, open_from_mm, open_to_mm & daily_fee ordered by park name and then campground name
-- (expected: 7 rows, starting with "Blackwoods")
select park.name, campground.name, campground.open_from_mm, campground.open_to_mm, campground.daily_fee from campground
right join park on park.park_id = campground.park_id
order by park.name , campground.name;

-- select the park name and the total number of campgrounds for each park ordered by park name
-- (expected: 3 rows, starting with "Acadia")
select par.name, count(c.campground_id) from park par
join campground c on par.park_id = c.park_id
group by par.name 
order by par.name;

-- select the park name, campground name, site number, max occupancy, accessible, max rv length, utilities where the campground name is 'Blackwoods'
-- (expected: 12 rows)
select  par.name, c.name, s.site_number, s.max_occupancy, s.accessible, s.max_rv_length, s.utilities from site s
join campground c on s.campground_id = c.campground_id
join park par on c.park_id = par.park_id
where c.name = 'Blackwoods';

-- select site number, reservation name, reservation from and to date ordered by reservation from date
-- (expected: 44 rows, starting with the earliest date)
select site_id, name, from_date, to_date from reservation 
order by from_date;
