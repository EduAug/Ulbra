package com.example.aula15_retrofit.data.datasources

import com.example.aula15_retrofit.data.network.CharacterAPI
import com.example.aula15_retrofit.data.network.Responses.ResultsResponses
import javax.inject.Inject

class CharacterDataSource @Inject constructor(private val characterAPI: CharacterAPI) {
    suspend fun fetchCharacters(): ResultsResponses{
        return characterAPI.fetchCharacters()
    }
}