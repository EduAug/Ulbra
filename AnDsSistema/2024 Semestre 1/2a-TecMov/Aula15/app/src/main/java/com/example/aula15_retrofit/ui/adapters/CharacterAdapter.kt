package com.example.aula15_retrofit.ui.adapters

import android.content.Context
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.aula15_retrofit.databinding.CharacterItemBinding
import com.example.aula15_retrofit.data.Character

class CharacterAdapter: RecyclerView.Adapter<CharacterAdapter.ViewHolder>() {
    private lateinit var context: Context
    private lateinit var binding: CharacterItemBinding
    private var listCharacter: List<Character> = emptyList()

    fun setUpCharacter(chararcters: List<Character>){
        listCharacter= chararcters
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        context= parent.context
        binding= CharacterItemBinding.inflate(LayoutInflater.from(context), parent, false)

        return ViewHolder(binding)
    }

    override fun getItemCount(): Int= listCharacter.size

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(listCharacter[position])
        binding.executePendingBindings()
    }

    inner class ViewHolder(private val bindingHolder: CharacterItemBinding) : RecyclerView.ViewHolder(bindingHolder.root) {
        fun bind(chara: Character) {
            bindingHolder.chara = chara
        }
    }
}