package com.example.testjetpack.data.models

import com.example.testjetpack.data.database.ProductEntity
import java.io.Serializable

data class Product(val urlImage: String, val name: String, val price: String, val desc: String): Serializable

fun Product.mapperToEntity() =
    ProductEntity(name = this.name, price = this.price, productImage = this.urlImage, description = this.desc)