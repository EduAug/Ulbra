package com.example.testjetpack.presentation.viewmodels

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.data.repository.ProductRepository
import com.example.testjetpack.presentation.bindingadapters.Results
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ProductViewModel @Inject constructor(private val prodRepository: ProductRepository) : ViewModel() {

    private val _products = MutableLiveData<Results<List<Product>>>()
    val products = _products

    fun fetchProducts() {
        _products.postValue(Results.Loading)

        viewModelScope.launch(Dispatchers.IO) {
            delay(3000)

            try {
                val result = prodRepository.fetchAllProducts()
                _products.postValue(Results.Success(data = result))
            }catch (e: Exception){
                _products.postValue(Results.Error(e))
            }
        }
    }

    fun addProduct(product: Product) = viewModelScope.launch(Dispatchers.IO) {
        prodRepository.addProduct(product)
    }
    fun removeProduct(product: Product) = viewModelScope.launch(Dispatchers.IO) {
        prodRepository.deleteProduct(product)
        fetchProducts()
    }
}