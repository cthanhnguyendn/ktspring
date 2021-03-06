package com.ktspringweb.authentication.controller

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController

@RestController
class Authentication {
    @GetMapping("/api/user/{user}")
    fun getUser(@PathVariable("user") user: String): ResponseEntity<String> {
        return ResponseEntity("Ich bin User: $user", HttpStatus.OK)
    }
}