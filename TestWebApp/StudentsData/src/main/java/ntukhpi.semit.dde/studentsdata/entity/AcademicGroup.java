package ntukhpi.semit.dde.studentsdata.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ntukhpi.semit.dde.studentsdata.utils.Language;
import ntukhpi.semit.dde.studentsdata.utils.LanguageConverter;
import org.hibernate.annotations.ColumnDefault;


import javax.validation.constraints.NotNull;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

import static org.hibernate.sql.InFragment.NULL;

/**
 * @author Milka Vladislav
 * @version 1.0
 * @created 27-Mar-2023 11:35:29 AM
 */

@Entity
@Table(name="academic_groups")
@NoArgsConstructor
@Getter
@Setter
public class AcademicGroup implements Comparable<AcademicGroup> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_group")
    private Long id;  //Long!!! not long, not int
    @Column(name = "group_name", nullable=false, unique=true, length = 12)
    @NotNull
    private String groupName;
    @Enumerated(EnumType.STRING)
    //HOME, MOBILE, OFFICE
    @Column(name = "language", nullable = false, length = 2)
    @Convert(converter = LanguageConverter.class)
    @NotNull
    private Language language;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "academicGroup")
    private Set<Student> studentsList;

    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "head_student_id", nullable = true)
    @ColumnDefault(value = NULL)
    private Student headStudent;


    public AcademicGroup(String groupName) {
        this.groupName = groupName;
        language = Language.UK;
        studentsList = new LinkedHashSet<>();
        headStudent = null;
    }

    public AcademicGroup(String groupName, Language language) {
        this.groupName = groupName;
        this.language = language;
        studentsList = new LinkedHashSet<>();
        headStudent = null;
    }

    public void addStudent(Student student) {
        studentsList.add(student);
    }

    public void delStudent(Student student) {
        studentsList.add(student);
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        //sb.append(System.lineSeparator());
        sb.append(groupName).append(" (");
        sb.append(language).append(")");
        return sb.toString();
    }

    public String toStringWithGrouplist() {
        final StringBuilder sb = new StringBuilder();
        sb.append(System.lineSeparator());
        sb.append(groupName).append(" (");
        sb.append(language).append(")");
        studentsList.stream().forEach((stud) -> sb.append(System.lineSeparator())
                .append(stud.toString())
                .append(stud.contactsPersonToString()));
        sb.append(System.lineSeparator()).append("HEAD STUDENT: "+(headStudent==null?"not assigned":headStudent.toString()));
        return sb.toString();
    }

    public void printStudents() {
        System.out.println("AcademicGroup name: " + groupName + "\n");
        for (Student student : studentsList) {
            System.out.println(student.getLastName() + " " + student.getFirstName() + " " + student.getMiddleName());
        }
    }
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AcademicGroup academicGroup = (AcademicGroup) o;
        return groupName.equals(academicGroup.groupName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(groupName);
    }


    @Override
    public int compareTo(AcademicGroup o) {
        return this.groupName.compareTo(o.groupName);
    }

    public void printInfo() {
        System.out.println(this.getGroupName()+" "+this.getLanguage());
        System.out.println("Students in");
        for (Student stud:
                this.getStudentsList()) {
            stud.showInfo();

        }
    }
}