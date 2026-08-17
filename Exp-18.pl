% Student - Teacher - Subject Code Database

student(karthik).
student(rahul).
student(priya).

teacher(ravi).
teacher(anita).
teacher(suresh).

subject_code(ai, cs101).
subject_code(dbms, cs102).
subject_code(ml, cs103).

teaches(ravi, ai).
teaches(anita, dbms).
teaches(suresh, ml).

studies(karthik, ai).
studies(rahul, dbms).
studies(priya, ml).

student_teacher_subject(Student, Teacher, Subject, Code) :-
    student(Student),
    studies(Student, Subject),
    teaches(Teacher, Subject),
    subject_code(Subject, Code).