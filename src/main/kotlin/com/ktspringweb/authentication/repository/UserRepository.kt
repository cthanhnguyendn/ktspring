package com.ktspringweb.authentication.repository

import com.ktspringweb.authentication.entities.User
import org.springframework.data.repository.CrudRepository

interface UserRepository : CrudRepository<User, String> {
    fun findByEmail(email: String): User
}
