package ntukhpi.semit.dde.studentsdata.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.Month;

/**
 * @author Milka Vladislav
 * @version 1.0
 * @created 27-Mar-2023 11:32:15 AM
 */

@Entity
@Table(name="students",uniqueConstraints = @UniqueConstraint(columnNames = {"sname", "fname","pname","birthday"}))
@NoArgsConstructor
@Getter
@Setter
public class Student extends Person {

    @Column(name = "contract",nullable = false)
    @ColumnDefault(value="FALSE")
    private boolean contract;
    @Column(name = "scholarship",nullable = false)
    @ColumnDefault(value="FALSE")
    private boolean takeScholarship;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "academic_group_id")
    AcademicGroup academicGroup;


    //Constructors
    public Student(@NotNull String lastName, String firstName, String middleName) {
        super(lastName, firstName, middleName);
        contract = false;
        takeScholarship = false;

    }

    public Student(@NotNull String lastName, String firstName, String middleName, LocalDate dateOfBirth) {
        super(lastName,firstName,middleName,dateOfBirth);
        contract = false;
        takeScholarship = false;
    }

    public Student(String lastName, String firstName, String middleName, String dateOfBirthStr) {
        super(lastName, firstName, middleName, dateOfBirthStr);
        contract = false;
        takeScholarship = false;
    }

    public Student(String lastName, String firstName, String middleName, LocalDate dateOfBirth, boolean isContract, boolean isScholarship) {
        super(lastName,firstName,middleName,dateOfBirth);
        contract = false;
        takeScholarship = false;
    }


    public String showInfoWithGroup(){
        StringBuilder sb = new StringBuilder(super.toString());
        if (academicGroup!= null) {
            sb.append(" (").append(academicGroup.toString()).append(")");
        }
        sb.append(super.contactsPersonToString());
        return sb.toString();
    }

    public void showInfo() {
        System.out.println(this.getFirstName()+" "+this.getLastName()+" "+(this.isContract()?"- contract":""));
    }
}