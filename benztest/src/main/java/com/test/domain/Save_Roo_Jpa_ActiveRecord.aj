// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.test.domain;

import com.test.domain.Save;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Save_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Save.entityManager;
    
    public static final List<String> Save.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Save.entityManager() {
        EntityManager em = new Save().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Save.countSaves() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Save o", Long.class).getSingleResult();
    }
    
    public static List<Save> Save.findAllSaves() {
        return entityManager().createQuery("SELECT o FROM Save o", Save.class).getResultList();
    }
    
    public static List<Save> Save.findAllSaves(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Save o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Save.class).getResultList();
    }
    
    public static Save Save.findSave(Long id) {
        if (id == null) return null;
        return entityManager().find(Save.class, id);
    }
    
    public static List<Save> Save.findSaveEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Save o", Save.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Save> Save.findSaveEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Save o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Save.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Save.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Save.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Save attached = Save.findSave(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Save.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Save.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Save Save.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Save merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
