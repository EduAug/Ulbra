package com.example.testjetpack.presentation.fragments

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModelProvider
import androidx.navigation.fragment.findNavController
import com.example.testjetpack.R
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.databinding.FragmentAdicionarBinding
import com.example.testjetpack.databinding.FragmentDetailsBinding
import com.example.testjetpack.presentation.extensions.configureToolbar
import com.example.testjetpack.presentation.viewmodels.ProductViewModel
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class AdicionarFragment : Fragment() {
    private lateinit var binding : FragmentAdicionarBinding
    private lateinit var productViewModel: ProductViewModel
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentAdicionarBinding.inflate(layoutInflater)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        productViewModel = ViewModelProvider(this)[ProductViewModel::class.java]

        binding.btnSalvar.setOnClickListener{
            val newProd = Product(
                name = binding.inputName.text.toString(),
                price = "R$ ${binding.inputPrice.text.toString()}",
                desc = binding.inputDescription.text.toString(),
                urlImage = binding.inputUrlProduto.text.toString()
            )

            productViewModel.addProduct(newProd)

            findNavController().navigate(R.id.action_adicionarFragment_to_homeFragment)
        }
    }
}