package com.example.aula15_retrofit.data.repositories

import com.example.aula15_retrofit.data.Character
import com.example.aula15_retrofit.data.datasources.CharacterDataSource
import com.example.aula15_retrofit.data.network.Responses.toModel
import javax.inject.Inject

class CharacterRepository @Inject constructor(
    private val characterDataSource: CharacterDataSource
) {
    suspend fun fetchCharacters(): List<Character>{
        return characterDataSource.fetchCharacters().charactersResult.map {item-> item.toModel()}
    }
}