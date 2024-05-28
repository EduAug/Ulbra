package com.example.testjetpack

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar
import androidx.navigation.Navigation
import androidx.navigation.ui.NavigationUI
import com.example.testjetpack.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    private lateinit var bind: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        bind = ActivityMainBinding.inflate(layoutInflater)
        setContentView(bind.root) //Setta o content view pro "root"
                                  //o root sendo o xml "activity main"
                                  //logo, dá para catar os ids de lá

        val toolbar = bind.myToolbar
        toolbar.title = "Home"
        val menuBottom = bind.bottomMenu
        val navController = Navigation.findNavController(this, R.id.my_nav_host_fragment)

        NavigationUI.setupWithNavController(menuBottom, navController)
        setSupportActionBar(toolbar)
    }

    override fun onSupportNavigateUp(): Boolean {
        onBackPressed()
        return true
    }
}