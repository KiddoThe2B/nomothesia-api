package com.di.nomothesia.dao;

import com.di.nomothesia.model.EndpointResult;
import com.di.nomothesia.model.LegalDocument;
import com.di.nomothesia.model.Modification;
import java.util.List;
import java.util.Map;


public interface LegalDocumentDAO {
    
    public LegalDocument getById(String decisionType, String year, String id);
    public LegalDocument getMetadataById(String decisionType, String year, String id);
    public List<Modification> getModifications(String decisionType, String year, String id, String date);
    public List<LegalDocument> getAllModifications(String decisionType, String year, String id);
    public EndpointResult sparqlQuery(EndpointResult endpointResult);
    public String getRDFById(String decisionType, String year, String id);

    public List<LegalDocument> search(Map<String, String> params);
}
