package com.example.testjetpack

import android.annotation.SuppressLint
import android.os.Bundle
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bumptech.glide.Glide

class DetailActv : AppCompatActivity() {
    @SuppressLint("CheckResult")
    override fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_detail)

        val prodBundle = intent.getSerializableExtra("data") as? Product

        val name = findViewById<TextView>(R.id.tvProductName)
        val price = findViewById<TextView>(R.id.tvProductPrice)
        val image = findViewById<ImageView>(R.id.imgProduct)

        Glide
            .with(this)
            .load(prodBundle?.urlImage)
            .centerCrop()
            .into(image)
        name.text = prodBundle?.name
        price.text = prodBundle?.price
    }
}