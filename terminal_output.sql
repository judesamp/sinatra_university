sqlite> select * from Professors where last_name = "Nash";
1|Rob|Nash|f|5|5
sqlite> select * from professors where course_id = 0;
4|Houston|Smith|f|0|5
sqlite> select * from professors where yrs_experience > 5;
1|Rob|Nash|f|5|5
2|Steven|Sheeley|f|4|5
3|Mattie|Hart|f|2|4
4|Houston|Smith|f|0|5
5|Joe|Wilson|f|7|1
6|Jimmy|Surf|t|3|3
7|Jake|Tech|f|6|2
sqlite> select * from courses where next_semester_taught = "Fall 2014";
3|Basket Weaving|342|Winter 2011|Fall 2014|3|
5|Buddhism|101|Winter 2013|Fall 2014|5|
6|Algebra|101|Winter 2013|Fall 2014|2|
7|English Literature|101|Winter 2013|Fall 2014|1|
sqlite> select * from professors
   ...>     inner join courses on professors.course_id = courses.id
   ...>     where name LIKE "Baske%";
6|Jimmy|Surf|t|3|3|3|Basket Weaving|342|Winter 2011|Fall 2014|3|
sqlite> select * from professors
   ...>     inner join courses on professors.course_id = courses.id
   ...>     inner join subjects on professors.subject_id = subjects.id
   ...>     where subjects.name = "Religion";
1|Rob|Nash|f|5|5|5|Buddhism|101|Winter 2013|Fall 2014|5||5|Religion||
2|Steven|Sheeley|f|4|5|4|Christian History|111|Winter 2012|Fall 2015|5||5|Religion||
sqlite> select * from professors
   ...>     inner join courses on professors.course_id = courses.id
   ...>     where courses.next_semester_taught = "Fall 2014";
1|Rob|Nash|f|5|5|5|Buddhism|101|Winter 2013|Fall 2014|5|
5|Joe|Wilson|f|7|1|7|English Literature|101|Winter 2013|Fall 2014|1|
6|Jimmy|Surf|t|3|3|3|Basket Weaving|342|Winter 2011|Fall 2014|3|
7|Jake|Tech|f|6|2|6|Algebra|101|Winter 2013|Fall 2014|2|
sqlite>