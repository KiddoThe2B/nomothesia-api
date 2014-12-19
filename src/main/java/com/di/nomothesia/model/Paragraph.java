
package com.di.nomothesia.model;

import java.util.ArrayList;
import java.util.List;

public class Paragraph implements Fragment{
    
    private List<Passage> passages;
    private Modification modification;
    private List<Case> caseList;
    private String table;
    private String URI;
    private int id;
    
    public Paragraph() {
                this.passages = new ArrayList<Passage>();
//                pass.add(new Passage());
                this.caseList = new ArrayList<Case>();
//                cas.add(new Case());
//                modification = new Modification();
//                table = "trapezi";
//                id = 34;
//                
//                System.out.println("����� � ����������:" + table + id);
    }
    
    //Setters-Getters for Paragraph
    
    public List<Passage> getPassages() {
        return passages;
    }

    public void setPassages(List<Passage> passages) {
        this.passages = passages;
    }

    public Modification getModification() {
        return modification;
    }

    public void setModification(Modification modification) {
        this.modification = modification;
    }

    public List<Case> getCaseList() {
        return caseList;
    }

    public void setCaseList(List<Case> caseList) {
        this.caseList = caseList;
    }

    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }
    
    public String getURI() {
        return URI;
    }

    public void setURI(String uri) {
        this.URI = uri;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
