package com.example.testjetpack.presentation.fragments

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import androidx.navigation.fragment.findNavController
import com.example.testjetpack.presentation.viewmodels.ProductViewModel
import com.example.testjetpack.R
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.databinding.FragmentHome2Binding
import com.example.testjetpack.presentation.adapters.ProdAdapter
import com.example.testjetpack.presentation.bindingadapters.Results
import com.google.android.material.bottomnavigation.BottomNavigationView
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class HomeFragment : Fragment() {

    private lateinit var binding: FragmentHome2Binding
    private lateinit var adapter: ProdAdapter
    private lateinit var productViewModel: ProductViewModel

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentHome2Binding.inflate(layoutInflater)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        productViewModel = ViewModelProvider(this)[ProductViewModel::class.java]

        createAdapter()
        observers()
        productViewModel.fetchProducts()
    }

    private fun createAdapter(){
        adapter = ProdAdapter(
            goToDetail = ::goToDetail,
            removeItem = ::removeItem
        )

        binding.rcListOfProducts.adapter = adapter
    }

    private fun observers(){
        productViewModel.products.observe(viewLifecycleOwner){
            resultado -> when(resultado) {
                is Results.Loading -> {
                    binding.progressBar.visibility = View.VISIBLE
                    binding.rcListOfProducts.visibility = View.GONE
                }
                is Results.Success -> {
                    binding.progressBar.visibility = View.GONE
                    binding.rcListOfProducts.visibility = View.VISIBLE
                    adapter.setUpList(resultado.data)
                }
                is Results.Error -> {
                    binding.progressBar.visibility = View.GONE
                    binding.rcListOfProducts.visibility = View.GONE
                    Log.i("Erro","erro")
                }
            }
        }
    }

    private fun removeItem(prod: Product){
        productViewModel.removeProduct(prod)
    }
    private fun goToDetail(prod: Product){
        Log.i("Produto",prod.toString())
        val bundle = bundleOf("data" to prod)
        findNavController().navigate(R.id.action_homeFragment_to_detailsActivity, bundle)
    }
}