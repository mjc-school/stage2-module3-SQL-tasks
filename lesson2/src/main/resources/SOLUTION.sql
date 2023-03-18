INSERT INTO Student (name, birthday, groupnumber) VALUES ('John', '2000-01-01', 1);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Chris', '2000-01-02', 1);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Carl', '2000-01-03', 1);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Oliver', '2000-01-04', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('James', '2000-01-05', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Lucas', '2000-01-06', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Henry', '2000-01-07', 2);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Jacob', '2000-01-08', 3);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Logan', '2000-01-09', 3);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Mike', '2000-01-09', 4);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Max', '2000-01-09', 5);
INSERT INTO Student (name, birthday, groupnumber) VALUES ('Karon', '2000-01-09', 5);

INSERT INTO subject (name, description, grade) VALUES ('Art', 'Art', 1);
INSERT INTO subject (name, description, grade) VALUES ('Music', 'Music', 1);
INSERT INTO subject (name, description, grade) VALUES ('Geography', 'Geography', 2);
INSERT INTO subject (name, description, grade) VALUES ('History', 'History', 2);
INSERT INTO subject (name, description, grade) VALUES ('PE', 'Physical', 3);
INSERT INTO subject (name, description, grade) VALUES ('Math', 'Mathematics', 3);
INSERT INTO subject (name, description, grade) VALUES ('Science', 'Science', 4);
INSERT INTO subject (name, description, grade) VALUES ('IT', 'Information', 4);
INSERT INTO subject (name, description, grade) VALUES ('English', 'Information', 5);
INSERT INTO subject (name, description, grade) VALUES ('France', 'Information', 5);

INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 50.0, '2023-02-02 10:00:00', (SELECT id FROM student WHERE name = 'John'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 100.0, '2023-02-02 10:00:00', (SELECT id FROM student WHERE name = 'Oliver'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 50.0, '2023-02-02 10:00:00', (SELECT id FROM student WHERE name = 'Henry'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'DAILY'), 10.0, '2023-02-02 10:00:00', (SELECT id FROM student WHERE name = 'James'));

INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History'), 5);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math'), 4);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE'), 9);