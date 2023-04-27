using AtividadeTDE;

IImpressoraCodigoDeBarras elgin = new Elgin();
IImpressoraCodigoDeBarras zebra = new Zebra();
List<IImpressoraCodigoDeBarras> listImpressoras = new List<IImpressoraCodigoDeBarras>();

int codBarraProduto;

listImpressoras.Add(elgin);
listImpressoras.Add(zebra);

Console.WriteLine("Insira o código de barras desejado");
codBarraProduto = Convert.ToInt32(Console.ReadLine());

foreach(IImpressoraCodigoDeBarras impressoras in listImpressoras)
{
    
    Console.WriteLine(impressoras.Resolução+"dpi");
    Console.WriteLine(impressoras.AlturaEtiqueta+"cm x "+impressoras.LarguraEtiqueta+"cm");
    Console.WriteLine(impressoras.TipoPapel);
    
    Console.WriteLine(impressoras.ImprimirEtiquetasObj(codBarraProduto));
}