package company.repos;

import company.api.Employees;
import org.springframework.data.repository.CrudRepository;
import org.springframework.security.core.userdetails.UserDetails;

public interface EmployeesRepo extends CrudRepository<Employees, Long> {
    UserDetails findEmployeeByFullName(String fullName);
}
