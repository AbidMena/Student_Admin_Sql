create schema if not exists student_admin_db;

use student_admin_db;
/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     27/11/2024 15:34:03                          */
/*==============================================================*/


drop table if exists STUDENT;

drop table if exists STUDENTS_SUBJECTS;

drop table if exists SUBJECT;

drop table if exists TEACHER;

drop table if exists USER;

/*==============================================================*/
/* Table: STUDENT                                               */
/*==============================================================*/
create table STUDENT
(
   STUDENT_ID           int not null AUTO_INCREMENT,
   NAME                 varchar(100) not null,
   DOB                  date,
   EMAIL                varchar(100),
   ADDRESS              varchar(100),
   primary key (STUDENT_ID) 
);

/*==============================================================*/
/* Table: STUDENTS_SUBJECTS                                     */
/*==============================================================*/
create table STUDENTS_SUBJECTS
(
   ID                   int not null AUTO_INCREMENT,
   SUBJECT_ID           int not null,
   STUDENT_ID           int not null,
   primary key (ID)
);

/*==============================================================*/
/* Table: SUBJECT                                               */
/*==============================================================*/
create table SUBJECT
(
   SUBJECT_ID           int not null AUTO_INCREMENT,
   TEACHER_ID           int not null,
   NAME                 varchar(100),
   primary key (SUBJECT_ID)
);

/*==============================================================*/
/* Table: TEACHER                                               */
/*==============================================================*/
create table TEACHER
(
   TEACHER_ID           int not null AUTO_INCREMENT,
   NAME                 varchar(100),
   EMAIL                varchar(100),
   ADDRESS              varchar(150),
   primary key (TEACHER_ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   EMAIL                varchar(100) not null,
   PASSWORD             varchar(50) not null,
   NAME                 varchar(100) not null,
   primary key (EMAIL)
);

alter table STUDENTS_SUBJECTS add constraint FK_SS_SUBJECTS foreign key (SUBJECT_ID)
      references SUBJECT (SUBJECT_ID) on delete restrict on update restrict;

alter table STUDENTS_SUBJECTS add constraint FK_STUDENTS_SS foreign key (STUDENT_ID)
      references STUDENT (STUDENT_ID) on delete restrict on update restrict;

alter table SUBJECT add constraint FK_TEACHER_SUBECTS foreign key (TEACHER_ID)
      references TEACHER (TEACHER_ID) on delete restrict on update restrict;

