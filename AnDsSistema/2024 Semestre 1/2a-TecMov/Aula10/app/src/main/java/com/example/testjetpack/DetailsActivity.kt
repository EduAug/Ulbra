package com.example.testjetpack

import android.os.Build
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.databinding.FragmentDetailsBinding
import com.example.testjetpack.presentation.extensions.configureToolbar

class DetailsActivity : AppCompatActivity() {
    private lateinit var binding: FragmentDetailsBinding
    override fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        binding = FragmentDetailsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setSupportActionBar(binding.toolbar)
        configureToolbar("Detalhes", true)

        val prodBund = if (Build.VERSION.SDK_INT >= 33){
            intent?.getSerializableExtra("data", Product::class.java)
        }else{
            intent?.getSerializableExtra("data") as? Product
        }

        prodBund?.let {
            product -> binding.prdct = product
        }
    }
}