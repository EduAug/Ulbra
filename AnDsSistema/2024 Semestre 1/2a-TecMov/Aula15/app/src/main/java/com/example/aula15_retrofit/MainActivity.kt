package com.example.aula15_retrofit

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.example.aula15_retrofit.commons.Results
import com.example.aula15_retrofit.data.repositories.CharacterRepository
import com.example.aula15_retrofit.databinding.ActivityMainBinding
import com.example.aula15_retrofit.ui.CharactersViewModel
import com.example.aula15_retrofit.ui.adapters.CharacterAdapter
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : AppCompatActivity() {
    private val charactersViewModel: CharactersViewModel by viewModels()
    private lateinit var binding: ActivityMainBinding
    private lateinit var adapter: CharacterAdapter
    @Inject
    lateinit var repository: CharacterRepository

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding= ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        configureRecycler()
        observer()
    }

    private fun configureRecycler(){
        adapter= CharacterAdapter()
        binding.rcListCharacters.adapter= adapter
    }

    private fun observer() {
        charactersViewModel.fetchCharacters().observe(this) { result ->
            when(result) {
                is Results.Loading -> {
                    binding.progBar.visibility = View.VISIBLE
                }

                is Results.Success -> {
                    binding.progBar.visibility = View.GONE
                    adapter.setUpCharacter(result.data)
                }

                is Results.Error -> {
                    binding.progBar.visibility = View.GONE
                }
            }
        }
    }
}