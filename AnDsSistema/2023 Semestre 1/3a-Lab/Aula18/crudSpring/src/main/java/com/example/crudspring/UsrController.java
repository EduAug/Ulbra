package com.example.crudspring;

import org.springframework.web.bind.annotation.*;

@RestController
public class UsrController {

    private final UserRepository userRepo;

    public UsrController(UserRepository _userRepo){
        userRepo = _userRepo;
    }

    @PostMapping("/user")   //RequestParam?
    public User CreateUser(@RequestBody User _user)
    {
        return userRepo.Save(_user);
    }

    @GetMapping("/user/{_id}")
    public User GetById(@PathVariable long _id){
        return userRepo.GetById(_id);
    }

    @PutMapping("/user")
    public User UpdateUser(@RequestBody User _user){
        return userRepo.Update(_user);
    }

    @DeleteMapping("/user/{_id}")
    public String DeleteUser(@PathVariable long _id){
        return userRepo.DeleteById(_id);
    }
}
