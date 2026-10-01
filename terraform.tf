resource "local_file" "productos" {
  content  = "lista de productos para el proximo pedido"
  filename = "productos.txt"
}