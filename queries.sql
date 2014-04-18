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

Select * from professors
Inner JOIN courses on professors.course_id = courses.id 
where professors.yrs_experience > 3
GROUP BY first_name;

 -- Select name, next_semester_taught from courses
 -- Inner Join professors on courses.professor_id = professors.id
 -- Select professors.first_name
 -- where courses.last_semester_taught = "Winter 2013"
 -- Group by name;