package com.example.testjetpack

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.activity.viewModels
import androidx.recyclerview.widget.RecyclerView

class MainActivity : AppCompatActivity() {
    private val mainViewModel: MainViewModel by viewModels()
    private lateinit var adapter : ProdAdapter

    override fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val recycler = findViewById<RecyclerView>(R.id.rcProduct)
        val items = mainViewModel.getProds()

        adapter = ProdAdapter(items, ::goToDetail)
        recycler.adapter = adapter
    }

    private fun goToDetail(item: Product) {
        Intent(this, DetailActv::class.java).apply {
            putExtra("data", item)
            startActivity(this)
        }
    }
}