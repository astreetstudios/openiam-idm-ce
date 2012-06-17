package org.openiam.idm.srvc.res.service;

import org.openiam.idm.srvc.res.dto.ResourceProp;

import java.util.List;

public interface ResourcePropDAO {

    void persist(ResourceProp transientInstance);

    void remove(ResourceProp persistentInstance);

    ResourceProp update(ResourceProp detachedInstance);

    ResourceProp findById(java.lang.String id);

    List<ResourceProp> findByExample(ResourceProp instance);

    ResourceProp add(ResourceProp instance);

    List<ResourceProp> findAllResourceProps();

    int removeAllResourceProps();

}