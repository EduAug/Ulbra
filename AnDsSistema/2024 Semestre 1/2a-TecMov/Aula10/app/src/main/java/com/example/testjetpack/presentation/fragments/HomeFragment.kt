package com.example.testjetpack.presentation.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import androidx.navigation.fragment.findNavController
import com.example.testjetpack.presentation.viewmodels.MainViewModel
import com.example.testjetpack.R
import com.example.testjetpack.presentation.extensions.configureToolbar
import com.example.testjetpack.databinding.FragmentHome2Binding
import com.example.testjetpack.presentation.adapters.ProdAdapter
import com.google.android.material.bottomnavigation.BottomNavigationView

class HomeFragment : Fragment() {

    private lateinit var binding: FragmentHome2Binding
    private lateinit var adapter: ProdAdapter
    private lateinit var productViewModel: MainViewModel

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding = FragmentHome2Binding.inflate(layoutInflater)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        (requireActivity() as AppCompatActivity).configureToolbar("Home", false)
        activity?.findViewById<BottomNavigationView>(R.id.bottomMenu)?.visibility = View.VISIBLE
        productViewModel = ViewModelProvider(this)[MainViewModel::class.java]

        val recycler = binding.rcListOfProducts
        val items = productViewModel.getProds()

        adapter = ProdAdapter(items) {
            val bundle = bundleOf("product" to it)
            findNavController().navigate(
                R.id.action_homeFragment_to_detailProductFragment,
                bundle
            )
        }

        recycler.adapter = adapter
    }
}