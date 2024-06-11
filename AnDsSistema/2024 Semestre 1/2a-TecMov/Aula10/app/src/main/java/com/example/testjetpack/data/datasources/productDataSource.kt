package com.example.testjetpack.data.datasources

import com.example.testjetpack.data.database.ProductDao
import com.example.testjetpack.data.database.ProductEntity
import javax.inject.Inject


class productDataSource @Inject constructor(private val productDao: ProductDao){
    fun fetchAllProduct(): List<ProductEntity> = productDao.fetchAllProducts()

    suspend fun addProduct(productEntity: ProductEntity) = productDao.addProducts(productEntity)
    suspend fun deleteProduct(productName: String) = productDao.deleteProduct(productName)
}