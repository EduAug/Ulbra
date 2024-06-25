package com.example.aula15_retrofit.ui

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.aula15_retrofit.commons.Results
import com.example.aula15_retrofit.data.Character
import com.example.aula15_retrofit.data.repositories.CharacterRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class CharactersViewModel @Inject constructor(
    private val charactersRepository: CharacterRepository
): ViewModel(){

    fun fetchCharacters(): LiveData<Results<List<Character>>>{
        val liveData = MutableLiveData<Results<List<Character>>>()

        liveData.postValue(Results.Loading)

        viewModelScope.launch (Dispatchers.IO) {
            try {
                val result = charactersRepository.fetchCharacters()
                liveData.postValue(Results.Success(result))
            } catch (e: Exception) {
                liveData.postValue(Results.Error(e))
            }
        }
        return liveData
    }
}