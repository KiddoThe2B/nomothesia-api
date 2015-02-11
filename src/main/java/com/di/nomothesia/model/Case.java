
package com.di.nomothesia.model;

import java.util.ArrayList;
import java.util.List;

public class Case implements Fragment{
    
    private String URI;
    private int id;
    private List<Passage> passages;
    private List<Case> caseList;

    public Case() {
        
        passages = new ArrayList<Passage>();
        //pas.add(new Passage());
        caseList = new ArrayList<Case>();
        //casel.add(new Case());

    }
    
    //Setters-Getters for Case
    
    @Override
    public String getURI() {
        return URI;
    }
    
    public void setURI(String URI) {
        this.URI = URI;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Passage> getPassages() {
        return passages;
    }

    public void setPassages(List<Passage> passages) {
        this.passages = passages;
    }

    public List<Case> getCaseList() {
        return caseList;
    }

    public void setCaseList(List<Case> caseList) {
        this.caseList = caseList;
    }
 
    
}
