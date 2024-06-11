package com.example.testjetpack.presentation.adapters

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.PopupMenu
import androidx.recyclerview.widget.RecyclerView
import com.example.testjetpack.R
import com.example.testjetpack.data.models.Product
import com.example.testjetpack.databinding.ProductItemBinding

class ProdAdapter(
    private val goToDetail: (product: Product) -> Unit,
    private val removeItem: (product: Product) -> Unit
) : RecyclerView.Adapter<ProdAdapter.ViewHolder>() {

    private var listProds: List<Product> = emptyList()
    private lateinit var bind: ProductItemBinding
    private lateinit var context: Context

    fun setUpList(lista: List<Product>){
        this.listProds = lista
        notifyDataSetChanged()
    }
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        this.context = parent.context
        val bind = ProductItemBinding.inflate(LayoutInflater.from(context), parent, false)
        return ViewHolder(bind)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
       holder.bind(listProds[position])
    }
    override fun getItemCount() = listProds.size

    inner class ViewHolder(private val binding: ProductItemBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind(product: Product){
            binding.prdct = product

            binding.root.setOnLongClickListener{
                showPopupMenu(it,product)
                false
            }

            binding.root.setOnClickListener{
                goToDetail(product)
            }
        }
    }

    private fun showPopupMenu(view: View, itm: Product) {
        PopupMenu(context, view).apply {
            setOnMenuItemClickListener { item ->
                when (item.itemId) {
                    R.id.removeItem -> {
                        removeItem(itm)
                        true
                    }
                    else -> false
                }
            }
            inflate(R.menu.menu_popup)
            show()
        }
    }
}