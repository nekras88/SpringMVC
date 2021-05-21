package com.maximnekrasov.spring.mvc;

import com.maximnekrasov.spring.mvc.validation.CheckEmail;

import javax.validation.constraints.*;
import java.util.HashMap;
import java.util.Map;

public class Employee {
@Size(min = 2, message = "name must be min 2 symbols")
    private String name;
@NotEmpty(message = "surname is required field")//or @NotBlank
    private String surname;

@Min(value = 500, message = "must be greater the 499")
@Max(value = 1500, message = "must be less the 1500")
    private int salary;
    private String department;
    private Map<String,String> departments;
    private  String car;
    private  String[] languages;
    private Map<String,String> languageList;

    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "Please use pattern XXX-XX-XX")
    private String phoneNumber;
@CheckEmail(value = "abc.com", message = "email must ends with abc.com")
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Map<String, String> getLanguageList() {
        return languageList;
    }

    public void setLanguageList(Map<String, String> languageList) {
        this.languageList = languageList;
    }

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    public Employee() {
        departments = new HashMap<>();
        departments.put("Information Technology", "IT");
        departments.put("Human Resources", "HR");
        departments.put("Sales", "Sales");

        languageList = new HashMap<>();
        languageList.put("EN", "English");
        languageList.put("DE", "Deutsch");
        languageList.put("FR", "French");
    }

    public Map<String, String> getDepartments() {
        return departments;
    }

    public void setDepartments(Map<String, String> departments) {
        this.departments = departments;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", salary=" + salary +
                ", department='" + department + '\'' +
                '}';
    }
}
