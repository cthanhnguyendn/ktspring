package com.ktspringweb.authentication.repository

import com.ktspringweb.authentication.entities.Role
import org.springframework.data.repository.CrudRepository

interface RoleRepository : CrudRepository<Role, String>
