package com.example.testjetpack.data.database

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.example.testjetpack.data.models.Product

@Entity(tableName = "products")
data class ProductEntity(
    @PrimaryKey(autoGenerate = true)
    val id: Int= 0,
    val name: String,
    val price: String,
    val productImage: String,
    val description: String
)

fun ProductEntity.mapperToProduct() = Product(name = this.name, price = this.price, urlImage = this.productImage, desc = this.description)
