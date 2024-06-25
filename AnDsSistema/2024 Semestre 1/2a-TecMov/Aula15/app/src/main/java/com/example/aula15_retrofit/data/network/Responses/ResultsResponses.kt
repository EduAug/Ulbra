package com.example.aula15_retrofit.data.network.Responses

import com.google.gson.annotations.SerializedName

data class ResultsResponses(
    @SerializedName("results")
    val charactersResult: List<CharacterResponse>
)
