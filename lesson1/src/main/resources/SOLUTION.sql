CREATE TABLE Student (id bigint PRIMARY KEY, name varchar, birthday date, groupnumber int);
CREATE TABLE Subject (id bigint PRIMARY KEY, name varchar, description varchar, grade int);
CREATE TABLE PaymentType (id bigint PRIMARY KEY, name varchar);

CREATE TABLE Payment (id bigint PRIMARY KEY, type_id bigint, amount decimal, student_id bigint, payment_date datetime, CONSTRAINT payment_type_id_fkey foreign key (type_id) references paymenttype(id),constraint payment_student_id_fkey foreign key (student_id) references student(id));
CREATE TABLE Mark (id bigint PRIMARY KEY, student_id bigint, subject_id bigint, mark int, CONSTRAINT mark_student_id_fkey foreign key (student_id) references student(id), CONSTRAINT mark_subject_id_fkey foreign key (subject_id) references subject(id));

