// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.seforge.paas.monitor.domain;

import java.util.Set;
import org.seforge.paas.monitor.domain.AppServer;
import org.seforge.paas.monitor.domain.Phym;
import org.seforge.paas.monitor.domain.PlatformService;
import org.seforge.paas.monitor.domain.Vim;

privileged aspect Vim_Roo_JavaBean {
    
    public String Vim.getName() {
        return this.name;
    }
    
    public void Vim.setName(String name) {
        this.name = name;
    }
    
    public String Vim.getIp() {
        return this.ip;
    }
    
    public void Vim.setIp(String ip) {
        this.ip = ip;
    }
    
    public String Vim.getHostName() {
        return this.hostName;
    }
    
    public void Vim.setHostName(String hostName) {
        this.hostName = hostName;
    }
    
    public String Vim.getOsName() {
        return this.osName;
    }
    
    public void Vim.setOsName(String osName) {
        this.osName = osName;
    }
    
    public String Vim.getUuid() {
        return this.uuid;
    }
    
    public void Vim.setUuid(String uuid) {
        this.uuid = uuid;
    }
    
    public Phym Vim.getPhym() {
        return this.phym;
    }
    
    public void Vim.setPhym(Phym phym) {
        this.phym = phym;
    }
    
    public Set<AppServer> Vim.getAppServers() {
        return this.appServers;
    }
    
    public void Vim.setAppServers(Set<AppServer> appServers) {
        this.appServers = appServers;
    }
    
    public Set<PlatformService> Vim.getPlatformServices() {
        return this.platformServices;
    }
    
    public void Vim.setPlatformServices(Set<PlatformService> platformServices) {
        this.platformServices = platformServices;
    }
    
}