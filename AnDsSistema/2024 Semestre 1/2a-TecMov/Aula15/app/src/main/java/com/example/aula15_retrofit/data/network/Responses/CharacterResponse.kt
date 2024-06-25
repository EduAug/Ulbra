package com.example.aula15_retrofit.data.network.Responses

import com.example.aula15_retrofit.data.Character
import com.google.gson.annotations.SerializedName

data class CharacterResponse(
    @SerializedName("name")
    val name: String,
    @SerializedName("image")
    val image: String
)

fun CharacterResponse.toModel()= Character(name= this.name, image= this.image)