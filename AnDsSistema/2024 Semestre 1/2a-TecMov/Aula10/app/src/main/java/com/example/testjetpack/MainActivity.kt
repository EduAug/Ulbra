package com.example.testjetpack

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar
import androidx.navigation.Navigation
import androidx.navigation.ui.NavigationUI
import com.google.android.material.bottomnavigation.BottomNavigationView

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val toolbar = findViewById<Toolbar>(R.id.my_toolbar)
        val menuBottom = findViewById<BottomNavigationView>(R.id.bottomMenu)
        val navController = Navigation.findNavController(this, R.id.my_nav_host_fragment)

        NavigationUI.setupWithNavController(menuBottom, navController)
        setSupportActionBar(toolbar)
        configureToolbar(title = "Home", enableBackButton = false)
    }

    override fun onSupportNavigateUp(): Boolean {
        onBackPressed()
        return true
    }
}