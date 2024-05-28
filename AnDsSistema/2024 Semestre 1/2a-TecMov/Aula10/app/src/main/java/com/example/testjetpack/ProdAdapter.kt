package com.example.testjetpack

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.PopupMenu
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.testjetpack.Product
import com.example.testjetpack.databinding.ProductItemBinding
import org.w3c.dom.Text

class ProdAdapter(
    private val items: MutableList<Product>,
    private val goToDetail: (item: Product) -> Unit
) :
    RecyclerView.Adapter<ProdAdapter.ViewHolder>() {

    private lateinit var context: Context

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        this.context = parent.context
        val bind = ProductItemBinding.inflate(LayoutInflater.from(context), parent, false)
        return ViewHolder(bind)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
       holder.bind(items[position])
    }

    override fun getItemCount() = items.size

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
                        removerItem(itm)
                        true
                    }
                    else -> false
                }
            }
            inflate(R.menu.menu_popup)
            show()
        }
    }

    fun removerItem(product: Product) {
        this.items.remove(product)
        notifyDataSetChanged()
    }
}