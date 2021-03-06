select * from Professors where last_name = "Nash";

select * from professors where course_id = 0;

select * from professors where yrs_experience > 5;

select * from courses where next_semester_taught = "2014-09-01";

select * from professors
inner join courses on professors.course_id = courses.id
where name LIKE "Baske%";

select * from professors
inner join courses on professors.course_id = courses.id
inner join subjects on professors.subject_id = subjects.id
where subjects.name = "Religion";

select * from professors
inner join courses on professors.course_id = courses.id
where courses.next_semester_taught < "2014-09-01";

Select * from professors
Inner JOIN courses on professors.course_id = courses.id 
where professors.yrs_experience > 3
GROUP BY first_name;

select * from professors
inner join courses on professors.course_id = courses.id
where courses.last_semester_taught < "2012-01-01";

SELECT courses.name, 
  courses.course_number, 
  professors.first_name, 
  professors.last_name
FROM courses INNER JOIN professors ON courses.professor_id = professors.id
where courses.last_semester_taught = "2012-01-01"
Group by courses.name;

select courses.name,
    courses.course_number,
    subjects.name
from courses inner join subjects on courses.subject_id = subjects.id
where courses.course_number > 200 and subjects.name = "History";