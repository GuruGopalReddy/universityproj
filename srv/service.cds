using dbuniversity as university1 from '../db/schema';
service MyService {
    @odata.draft.enabled
    entity university as projection on university1.university;
    entity college as projection on university1.college; 
    entity branches as projection on university1.branches;  
    entity student as projection on university1.student; 
    entity markslist as projection on university1.markslist;
}
