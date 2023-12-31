package ntukhpi.semit.dde.studentsdata.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Entity
@Table(name = "adresses")
@NoArgsConstructor
@Getter
@Setter
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;  //Long!!! not long, not int

    private String country;
    private String region;
    private String city;
    private String address;

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(name = "persons_adresses", joinColumns = @JoinColumn(name = "id_address"))
    @MapKeyJoinColumn(name = "id_owner")
    @Column(name = "current", nullable = false)
    @ColumnDefault(value = "FALSE")
	private Map<Person, Boolean> owners;

    public Address(String country, String region, String city, String address) {
        this.country = country;
        this.region = region;
        this.city = city;
        this.address = address;
        owners = new HashMap<>();
    }


    //for owners
    public Map<Person, Boolean> getOwners() {
        return Collections.unmodifiableMap(owners);
    }

    public void addOwner(Person owner, Boolean isCurrent) {
        owners.put(owner, isCurrent);
    }

    public void delOwner(Person owner) {
        owners.remove(owner);
    }


    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Address: ");
        if (!country.isEmpty()) {
            sb.append(System.lineSeparator()).append("country='").append(country).append('\'');
        }
        if (!region.isEmpty()) {
            sb.append(System.lineSeparator()).append("region='").append(region).append('\'');
        }
        if (!city.isEmpty()) {
            sb.append(System.lineSeparator()).append(System.lineSeparator()).append("city='").append(city).append('\'');
        }
        if (!address.isEmpty()) {
            sb.append(System.lineSeparator()).append("address='").append(address).append('\'');
        }
        return sb.toString();
    }

    public String toStringWithOwners() {
        final StringBuilder sb = new StringBuilder("Address: ");
        if (country.length() > 0) {
            sb.append(System.lineSeparator()).append("country='").append(country).append('\'');
        }
        if (!region.isEmpty() && region.length() > 0) {
            sb.append(System.lineSeparator()).append("region='").append(region).append('\'');
        }
        if (!city.isEmpty() && city.length() > 0) {
            sb.append(System.lineSeparator()).append(System.lineSeparator()).append("city='").append(city).append('\'');
        }
        if (!address.isEmpty() && address.length() > 0) {
            sb.append(System.lineSeparator()).append("address='").append(address).append('\'');
        }
        if (owners.isEmpty()) {
            sb.append(System.lineSeparator()).append("OWNERS: no owners");
        } else {
            sb.append(System.lineSeparator()).append("OWNERS: " + owners.size());
            owners.entrySet().stream().forEach(entry -> sb.append(System.lineSeparator()).append(entry.getKey().toString() + " " + (entry.getValue() ? "(CURRENT)" : "")));
        }
        return sb.toString();
    }
}
