using MyService as service from '../../srv/service';

annotate service.university with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'university_no',
            Value : university_no,
        },
        {
            $Type : 'UI.DataField',
            Label : 'university_name',
            Value : university_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'university_type',
            Value : university_type,
        },
    ]
);
annotate service.university with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'university_no',
                Value : university_no,
            },
            {
                $Type : 'UI.DataField',
                Label : 'university_name',
                Value : university_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'university_type',
                Value : university_type,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'college',
            ID : 'college',
            Target : 'uni_to_college/@UI.LineItem#college',
        },
    ]
);
annotate service.college with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Branches',
            ID : 'Branches',
            Target : 'college_to_branch/@UI.LineItem#Branches',
        },]
);
annotate service.branches with @(
    UI.LineItem #college : [
    ]
);
annotate service.branches with @(
    UI.LineItem #Branches : [
        {
            $Type : 'UI.DataField',
            Value : branch_id,
            Label : 'branch_id',
        },{
            $Type : 'UI.DataField',
            Value : branch_name,
            Label : 'branch_name',
        },{
            $Type : 'UI.DataField',
            Value : college_id,
            Label : 'college_id',
        },]
);
annotate service.college with @(
    UI.LineItem #college : [
        {
            $Type : 'UI.DataField',
            Value : college_id,
            Label : 'college_id',
        },{
            $Type : 'UI.DataField',
            Value : college_name,
            Label : 'college_name',
        },{
            $Type : 'UI.DataField',
            Value : university_no,
            Label : 'university_no',
        },]
);
annotate service.branches with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'students',
            ID : 'students',
            Target : 'branch_to_student/@UI.LineItem#students',
        },
    ]
);
annotate service.student with @(
    UI.LineItem #students : [
        {
            $Type : 'UI.DataField',
            Value : branch_id,
            Label : 'branch_id',
        },{
            $Type : 'UI.DataField',
            Value : sem_id,
            Label : 'sem_id',
        },{
            $Type : 'UI.DataField',
            Value : student_dob,
            Label : 'student_dob',
        },{
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : student_mobile,
            Label : 'student_mobile',
        },{
            $Type : 'UI.DataField',
            Value : student_name,
            Label : 'student_name',
        },]
);
annotate service.student with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'marks',
            ID : 'marks',
            Target : 'student_to_marks/@UI.LineItem#marks',
        },
    ]
);
annotate service.markslist with @(
    UI.LineItem #marks : [
        {
            $Type : 'UI.DataField',
            Value : marks,
            Label : 'marks',
        },{
            $Type : 'UI.DataField',
            Value : pass_fail,
            Label : 'pass_fail',
        },{
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : subject,
            Label : 'subject',
        },{
            $Type : 'UI.DataField',
            Value : yearsem,
            Label : 'yearsem',
        },]
);
annotate service.markslist with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'marks',
            ID : 'marks',
            Target : '@UI.FieldGroup#marks',
        },
    ],
    UI.FieldGroup #marks : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : marks,
                Label : 'marks',
            },{
                $Type : 'UI.DataField',
                Value : pass_fail,
                Label : 'pass_fail',
            },{
                $Type : 'UI.DataField',
                Value : student_id,
                Label : 'student_id',
            },{
                $Type : 'UI.DataField',
                Value : subject,
                Label : 'subject',
            },{
                $Type : 'UI.DataField',
                Value : yearsem,
                Label : 'yearsem',
            },],
    }
);
