package com.example.testjetpack.presentation.fragments

import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.RequiresApi
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.bumptech.glide.Glide
import com.example.testjetpack.R
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.databinding.FragmentDetailsBinding
import com.example.testjetpack.presentation.extensions.configureToolbar
import com.google.android.material.bottomnavigation.BottomNavigationView

class DetailsFragment : Fragment() {
    private lateinit var binding: FragmentDetailsBinding
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding = FragmentDetailsBinding.inflate(layoutInflater)
        return binding.root
    }

    @RequiresApi(Build.VERSION_CODES.TIRAMISU)
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val prodBundle = arguments?.getSerializable("product") as? Product

        (requireActivity() as AppCompatActivity).configureToolbar("Details", true)

        activity?.findViewById<BottomNavigationView>(R.id.bottomMenu)?.visibility = View.GONE

        val name = binding.tvProductName
        val price = binding.tvProductPrice
        val image = binding.imgProduct
        val desc = binding.tvProductDesc

        Glide.with(this)
            .load(prodBundle?.urlImage)
            .centerCrop()
            .into(image)
        name.text = prodBundle?.name
        price.text = prodBundle?.price
        desc.text = prodBundle?.desc
    }

}