package com.kaushal.demo.model;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
@EnableJpaRepositories
public interface UserRepo extends JpaRepository<User,Integer>
 {

	User findById(String user_id);

	User findByPassword(String password);

}