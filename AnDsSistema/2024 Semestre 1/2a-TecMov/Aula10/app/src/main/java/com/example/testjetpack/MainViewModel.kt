package com.example.testjetpack

import androidx.lifecycle.ViewModel

class MainViewModel : ViewModel() {

    private val produtos = mutableListOf(
        Product(
            urlImage = "https://t4.ftcdn.net/jpg/06/93/09/47/240_F_693094707_Eavnydwp6Su2Tx9REPzSZxDmEbElu0Az.jpg",
            name = "Laranja",
            price = "199.00"
        ),
        Product(
            urlImage = "https://t4.ftcdn.net/jpg/04/13/50/15/240_F_413501576_JBNFcI7nQ34BYAu7FXJTWLZQ8Y7ptSz3.jpg",
            name = "Creme",
            price = "129.00"
        ),
        Product(
            urlImage = "https://t3.ftcdn.net/jpg/04/91/00/82/240_F_491008206_6J87meZRmjPYlrTpBEeVzFSm1m3kqOd2.jpg",
            name = "Telefone",
            price = "17.90"
        ),
        Product(
            urlImage = "https://static.wikia.nocookie.net/leagueoflegends/images/a/a7/Cassiopeia_Miasma.png/revision/latest/thumbnail/width/360/height/360?cb=20160616202407",
            name = "Miasma",
            price = "5.40"
        ),
        Product(
            urlImage = "https://media.tenor.com/4Od0NUWfA54AAAAe/glorp.png",
            name = "glorp",
            price = "1714.98"
        ),
        Product(
            urlImage = "https://andrearmarinhos.com.br/wp-content/uploads/2021/11/Tesoura-de-Uso-Geral-9-pol-23-cm-509B-Western-01.jpg",
            name = "Tesoura",
            price = "22.90"
        ),
        Product(
            urlImage = "https://static.wikia.nocookie.net/leagueoflegends/images/a/a7/Cassiopeia_Miasma.png/revision/latest/thumbnail/width/360/height/360?cb=20160616202407",
            name = "Miasma",
            price = "35.40"
        )
    )

    fun getProds() = produtos
}