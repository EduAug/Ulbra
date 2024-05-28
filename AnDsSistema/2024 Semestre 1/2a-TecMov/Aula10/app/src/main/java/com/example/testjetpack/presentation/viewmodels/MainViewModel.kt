package com.example.testjetpack.presentation.viewmodels

import androidx.lifecycle.ViewModel
import com.example.testjetpack.data.models.Product

class MainViewModel : ViewModel() {

    private val produtos = mutableListOf(
        Product(
            urlImage = "https://t4.ftcdn.net/jpg/06/93/09/47/240_F_693094707_Eavnydwp6Su2Tx9REPzSZxDmEbElu0Az.jpg",
            name = "Laranja",
            price = "R$ 199.00",
            desc = "A cor ou a fruta? Abra o frasco e descubra"
        ),
        Product(
            urlImage = "https://t4.ftcdn.net/jpg/04/13/50/15/240_F_413501576_JBNFcI7nQ34BYAu7FXJTWLZQ8Y7ptSz3.jpg",
            name = "Creme",
            price = "R$ 129.00",
            desc = "Creme hidratante. Formulação 4ml O12H3Cl4Hg, 200ml H2O2, 3l C3PO"
        ),
        Product(
            urlImage = "https://t3.ftcdn.net/jpg/04/91/00/82/240_F_491008206_6J87meZRmjPYlrTpBEeVzFSm1m3kqOd2.jpg",
            name = "Telefone",
            price = "R$ 17.90",
            desc = "Aparelho telefone de última geração. A última que conseguimos encontrar no baú."
        ),
        Product(
            urlImage = "https://static.wikia.nocookie.net/leagueoflegends/images/a/a7/Cassiopeia_Miasma.png/revision/latest/thumbnail/width/360/height/360?cb=20160616202407",
            name = "Miasma",
            price = "R$ 5.40",
            desc = "De tirar o fôlego"
        ),
        Product(
            urlImage = "https://media.tenor.com/4Od0NUWfA54AAAAe/glorp.png",
            name = "glorp",
            price = "R$ 1714.98",
            desc = "Ninguém sabe de onde veio, ou por que, mas é tão fofinho..."
        ),
        Product(
            urlImage = "https://andrearmarinhos.com.br/wp-content/uploads/2021/11/Tesoura-de-Uso-Geral-9-pol-23-cm-509B-Western-01.jpg",
            name = "Tesoura",
            price = "R$ 22.90",
            desc = "Tesoura padrão para artesanato, cabo em acrílico e lâminas de aço inox."
        ),
        Product(
            urlImage = "https://static.wikia.nocookie.net/leagueoflegends/images/a/a7/Cassiopeia_Miasma.png/revision/latest/thumbnail/width/360/height/360?cb=20160616202407",
            name = "Miasma",
            price = "R$ 35.40",
            desc = "Sufoque alguém hoje mesmo. Compre e nos envie o endereço que largamos na porta de sua vítima"
        )
    )

    fun getProds() = produtos
}