namespace dbuniversity;

entity university{
    key university_no : Integer;
    university_name: String;
    university_type :String;
    uni_to_college : Composition of   many college on uni_to_college.university_no = university_no;
}

entity college{
  key college_id : String;
    college_name : String;
   key university_no : Integer;
    college_to_branch : Composition of  many branches on college_to_branch.college_id = college_id;
    college_to_uni : Association to one  university on college_to_uni.university_no = university_no;
}

entity branches{
   key branch_id : String;
   branch_name : String;
  key college_id : String;
   branch_to_student : Composition of many student on branch_to_student.branch_id = branch_id;
   branch_to_college : Association to one college on branch_to_college.college_id = college_id;
}


entity student{
    key student_id : String;
    student_name : String;
    student_dob : Date;
    student_mobile : Int32;
    branch_id : String;
    sem_id : String;
    student_to_marks : Composition of many markslist on  student_to_marks.student_id = student_id;
   student_to_branch : Association to one branches on student_to_branch.branch_id = branch_id;
}

entity markslist{
    key yearsem : String;
   key subject : String;
    marks :Int16;
    pass_fail : String;
  key  student_id : String;
    marks_to_student : Association to one student on marks_to_student.student_id = student_id;
}


