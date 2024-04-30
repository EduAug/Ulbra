using System;

public class Estoque
{
    public int ItemId { get; set; }
    public int Quantidade { get; set; }

    public Estoque(int itemId, int quantidade)
    {
        ItemId = itemId;
        Quantidade = quantidade;
    }

    public void SubtrairQuantidadeItem(int itemId)
    {
        if (ItemId == itemId)
        {
            Quantidade -= 1;
        }
    }

    public void AdicionarQuantidadeItem(int itemId)
    {
        if (ItemId == itemId)
        {
            Quantidade += 1;
        }
    }
}