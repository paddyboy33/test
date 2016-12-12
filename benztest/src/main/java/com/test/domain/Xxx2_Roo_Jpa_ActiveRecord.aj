// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.test.domain;

import com.test.domain.Xxx2;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Xxx2_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Xxx2.entityManager;
    
    public static final List<String> Xxx2.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Xxx2.entityManager() {
        EntityManager em = new Xxx2().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Xxx2.countXxx2s() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Xxx2 o", Long.class).getSingleResult();
    }
    
    public static List<Xxx2> Xxx2.findAllXxx2s() {
        return entityManager().createQuery("SELECT o FROM Xxx2 o", Xxx2.class).getResultList();
    }
    
    public static List<Xxx2> Xxx2.findAllXxx2s(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Xxx2 o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Xxx2.class).getResultList();
    }
    
    public static Xxx2 Xxx2.findXxx2(Long id) {
        if (id == null) return null;
        return entityManager().find(Xxx2.class, id);
    }
    
    public static List<Xxx2> Xxx2.findXxx2Entries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Xxx2 o", Xxx2.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Xxx2> Xxx2.findXxx2Entries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Xxx2 o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Xxx2.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Xxx2.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Xxx2.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Xxx2 attached = Xxx2.findXxx2(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Xxx2.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Xxx2.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Xxx2 Xxx2.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Xxx2 merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
