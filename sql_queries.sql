/*==============================================================*/
/* EXECUTE THESE QUERIES AFTER RUNNING STUDENTADMINAPP            */
/*==============================================================*/

use student_admin_db;

select * from student order by student_id desc limit 5;

select * from teacher;

select * from subject;

select * from students_subjects;

select t.name as teacher, su.name as subject, s.name as student, s.email as email, s.address as address, s.dob as dob 
from teacher t join subject su on t.teacher_id = su.teacher_id
join students_subjects ss on ss.subject_id = su.subject_id
join student s on ss.student_id = s.student_id;