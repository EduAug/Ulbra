using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AP2_Refatorar_Estacionamento.Migrations
{
    /// <inheritdoc />
    public partial class PlacaAsUniqueIndex : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_Veiculo_Placa",
                table: "Veiculo",
                column: "Placa",
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Veiculo_Placa",
                table: "Veiculo");
        }
    }
}
