package com.lmx.dao;

import java.util.List;
import com.lmx.entity.Worker;

public interface IWorkerDao {
    Worker selectWorker(int id);

    int addWorker(Worker worker);

    List<Worker> showAllWorker();

    int deleteWorker(int id);

    int updateWorker(Worker worker);
}
//public interface IStudentDao {
//    Student selectStudent(int id);
//    int addStudent(Student student);
//    List<Student> showAllStudent();
//    int deleteStudent(int id);
//    int updateStudent(Student student);
//
//    List<Student> showStudentOne1(String studentNo);
//    List<Student> showStudentOne2(String studentName);
//    List<Student> showStudentOne3(@Param("studentNo") String studentNo,@Param("studentName") String studentName);
//
//    Student getInfoByNo(String studentNo);
//
//
//}
