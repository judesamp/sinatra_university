

select * from Professors where last_name = "Nash";

select * from professors where course_id = 0;

select * from professors where yrs_experience > 5;

select * from courses where next_semester_taught = "Fall 2014";

select * from professors
inner join courses on professors.course_id = courses.id
where name LIKE "Baske%";

select * from professors
inner join courses on professors.course_id = courses.id
inner join subjects on professors.subject_id = subjects.id
where subjects.name = "Religion";

select * from professors
inner join courses on professors.course_id = courses.id
where courses.next_semester_taught = "Fall 2014";