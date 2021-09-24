// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.seforge.paas.monitor.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.seforge.paas.monitor.domain.AppServerSnap;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AppServerSnap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AppServerSnap.entityManager;
    
    public static final EntityManager AppServerSnap.entityManager() {
        EntityManager em = new AppServerSnap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AppServerSnap.countAppServerSnaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AppServerSnap o", Long.class).getSingleResult();
    }
    
    public static List<AppServerSnap> AppServerSnap.findAllAppServerSnaps() {
        return entityManager().createQuery("SELECT o FROM AppServerSnap o", AppServerSnap.class).getResultList();
    }
    
    public static AppServerSnap AppServerSnap.findAppServerSnap(Long id) {
        if (id == null) return null;
        return entityManager().find(AppServerSnap.class, id);
    }
    
    public static List<AppServerSnap> AppServerSnap.findAppServerSnapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AppServerSnap o", AppServerSnap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AppServerSnap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AppServerSnap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AppServerSnap attached = AppServerSnap.findAppServerSnap(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AppServerSnap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AppServerSnap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AppServerSnap AppServerSnap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AppServerSnap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
