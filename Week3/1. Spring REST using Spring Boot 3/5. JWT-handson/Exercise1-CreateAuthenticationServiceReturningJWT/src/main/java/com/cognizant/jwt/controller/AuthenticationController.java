package com.cognizant.jwt.controller;

import com.cognizant.jwt.model.AuthenticationResponse;
import com.cognizant.jwt.util.JwtUtil;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

@RestController
public class AuthenticationController {

    private final AuthenticationManager authenticationManager;
    private final JwtUtil jwtUtil;

    public AuthenticationController(
            AuthenticationManager authenticationManager,
            JwtUtil jwtUtil) {

        this.authenticationManager = authenticationManager;
        this.jwtUtil = jwtUtil;
    }

    @GetMapping("/authenticate")
    public ResponseEntity<AuthenticationResponse> authenticate(
            @RequestHeader(value = HttpHeaders.AUTHORIZATION,
                    required = false)
            String authorizationHeader) {

        if (authorizationHeader == null ||
                !authorizationHeader.startsWith("Basic ")) {

            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .build();
        }

        String base64Credentials =
                authorizationHeader.substring(6);

        String credentials = new String(
                Base64.getDecoder().decode(base64Credentials),
                StandardCharsets.UTF_8
        );

        String[] values = credentials.split(":", 2);

        if (values.length != 2) {
            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .build();
        }

        String username = values[0];
        String password = values[1];

        Authentication authentication =
                authenticationManager.authenticate(
                        new UsernamePasswordAuthenticationToken(
                                username,
                                password
                        )
                );

        String token = jwtUtil.generateToken(
                authentication.getName()
        );

        return ResponseEntity.ok(
                new AuthenticationResponse(token)
        );
    }
}
