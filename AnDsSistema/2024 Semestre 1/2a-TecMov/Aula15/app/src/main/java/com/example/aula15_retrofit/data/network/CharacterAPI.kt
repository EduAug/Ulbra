package com.example.aula15_retrofit.data.network

import com.example.aula15_retrofit.data.network.Responses.ResultsResponses
import retrofit2.http.GET

interface CharacterAPI {
    @GET("character")
    suspend fun fetchCharacters(): ResultsResponses
}