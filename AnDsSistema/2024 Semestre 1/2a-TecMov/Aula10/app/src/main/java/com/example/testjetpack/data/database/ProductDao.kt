package com.example.testjetpack.data.database

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query

@Dao
interface ProductDao {
    @Query("SELECT * FROM products")
    fun fetchAllProducts() : List<ProductEntity>

    @Insert
    suspend fun addProducts(productEntity: ProductEntity)

    @Query("DELETE FROM products WHERE name = :pName")
    suspend fun deleteProduct(pName: String)
}