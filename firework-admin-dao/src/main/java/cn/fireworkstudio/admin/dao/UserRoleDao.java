package cn.fireworkstudio.admin.dao;

import cn.fireworkstudio.admin.bean.UserRole;

import java.util.List;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 * Desc:    UserRoleDao
 */
public interface UserRoleDao {

    /**
     * Add new user role mapping
     *
     * @param userRole mapping to add
     * @return new mapping's primary key
     */
    long addUserRole(UserRole userRole);

    /**
     * Search user role mappings by params
     *
     * @param userRole params
     * @return mappings found or null
     */
    List<UserRole> searchUserRole(UserRole userRole);

    /**
     * Search user role by user id
     *
     * @param userId user id
     * @return role list
     */
    List<String> searchRoleByUserId(String userId);
}
