package com.example.testjetpack.data.repository

import com.example.testjetpack.data.database.mapperToProduct
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.data.datasources.productDataSource
import com.example.testjetpack.data.models.mapperToEntity
import javax.inject.Inject

class ProductRepository @Inject constructor(private val productDataSource: productDataSource) {
    fun fetchAllProducts(): List<Product>{
        return productDataSource
            .fetchAllProduct()
            .map { item -> item.mapperToProduct()
            }
    }

    suspend fun addProduct(product: Product){
        productDataSource.addProduct(product.mapperToEntity())
    }
    suspend fun deleteProduct(product: Product){
        productDataSource.deleteProduct(product.name)
    }
}