package com.example.testjetpack

import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.annotation.RequiresApi
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.bumptech.glide.Glide
import com.google.android.material.bottomnavigation.BottomNavigationView

class DetailsFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_details, container, false)
    }

    @RequiresApi(Build.VERSION_CODES.TIRAMISU)
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val prodBundle = arguments?.getSerializable("product") as? Product

        (requireActivity() as AppCompatActivity).configureToolbar("Details", true)

        activity?.findViewById<BottomNavigationView>(R.id.bottomMenu)?.visibility = View.GONE

        val name = view.findViewById<TextView>(R.id.tvProductName)
        val price = view.findViewById<TextView>(R.id.tvProductPrice)
        val image = view.findViewById<ImageView>(R.id.imgProduct)

        Glide.with(this)
            .load(prodBundle?.urlImage)
            .centerCrop()
            .into(image)
        name.text = prodBundle?.name
        price.text = prodBundle?.price
    }

}