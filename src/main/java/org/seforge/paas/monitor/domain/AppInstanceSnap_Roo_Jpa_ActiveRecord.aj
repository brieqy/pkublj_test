// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.seforge.paas.monitor.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.seforge.paas.monitor.domain.AppInstanceSnap;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AppInstanceSnap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AppInstanceSnap.entityManager;
    
    public static final EntityManager AppInstanceSnap.entityManager() {
        EntityManager em = new AppInstanceSnap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AppInstanceSnap.countAppInstanceSnaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AppInstanceSnap o", Long.class).getSingleResult();
    }
    
    public static List<AppInstanceSnap> AppInstanceSnap.findAllAppInstanceSnaps() {
        return entityManager().createQuery("SELECT o FROM AppInstanceSnap o", AppInstanceSnap.class).getResultList();
    }
    
    public static AppInstanceSnap AppInstanceSnap.findAppInstanceSnap(Long id) {
        if (id == null) return null;
        return entityManager().find(AppInstanceSnap.class, id);
    }
    
    public static List<AppInstanceSnap> AppInstanceSnap.findAppInstanceSnapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AppInstanceSnap o", AppInstanceSnap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AppInstanceSnap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AppInstanceSnap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AppInstanceSnap attached = AppInstanceSnap.findAppInstanceSnap(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AppInstanceSnap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AppInstanceSnap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AppInstanceSnap AppInstanceSnap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AppInstanceSnap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
