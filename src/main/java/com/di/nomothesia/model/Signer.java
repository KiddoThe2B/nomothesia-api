
package com.di.nomothesia.model;

public class Signer {
    
    private String firstName;
    private String lastName;
    private String title;
    
    public Signer() {
		title = "�������� ��� ���������";
		firstName = "�������";
		lastName = "�������";
                
                System.out.println("����� �� ���������� �� �����:" + title + lastName + firstName);
    }
    
    //Setters-Getters for Signer
    
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
}
