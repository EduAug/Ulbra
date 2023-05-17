public class Main {
    public static void main(String[] args){

        FormaGeometrica c = new Circulo(17);
        FormaGeometrica r = new Retangulo(6,15);
        FormaGeometrica t = new Triangulo(17,6,4,2);

        System.out.println(c.calcularArea());

        System.out.println(FormaGeometrica.calcularAreaCirculo(17));

        System.out.println(c.calcularPerimetro());

        System.out.println(r.calcularArea());
        System.out.println(r.calcularPerimetro());

        System.out.println(t.calcularArea());

        System.out.println(FormaGeometrica.calcularAreaTriangulo(17,6));

        System.out.println(t.calcularPerimetro());

        System.out.println("Valor qualquer estático(tri): "+t.placeholder);
        Triangulo.placeholder+=1;
        System.out.println("Valor qualquer estático(circ): "+c.placeholder);
        System.out.println("Valor qualquer estático(tri): "+t.placeholder);
    }
}