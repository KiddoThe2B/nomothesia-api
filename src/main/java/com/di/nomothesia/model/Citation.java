
package com.di.nomothesia.model;

import java.util.ArrayList;
import java.util.List;

public class Citation {
  
    private String description;
    private String URI;
    List<String> targetURIs;
    private int id;
    
    public Citation() {
        
        this.targetURIs = new ArrayList<String>();
        //URI = "legislation/citation/skata";
        //description = "������ � ������ �� ��� ��� ���";
        //System.out.println("����� � ��������:" + URI + description);
    
    }
    
    //Setters-Getters for Citation
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getURI() {
        return URI;
    }
    
    public void setURI(String URI) {
        this.URI = URI;
    }
    
    public List<String> gettargetURIs() {
        return targetURIs;
    }
    
    public void settargetURIs(List<String> targetURIs) {
        this.targetURIs = targetURIs;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
