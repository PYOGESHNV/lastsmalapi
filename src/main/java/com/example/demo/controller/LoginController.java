package com.example.demo.controller;

import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*") // allow requests from any frontend
public class LoginController {

    @GetMapping("/login")
    public Map<String, Object> loginGet(@RequestParam String username, @RequestParam String password) {
        Map<String, Object> response = new HashMap<>();
        if ("admin".equals(username) && "1234".equals(password)) {
            response.put("status", "success");
            response.put("message", "Welcome, " + username + "!");
        } else {
            response.put("status", "error");
            response.put("message", "Invalid credentials");
        }
        return response;
    }

}
