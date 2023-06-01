using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AP2_Refatorar_Estacionamento.Migrations
{
    /// <inheritdoc />
    public partial class BehaviorOnDeleteSetNullForVehicleIdOnVaga : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas");

            migrationBuilder.DropIndex(
                name: "IX_Vagas_VeiculoId",
                table: "Vagas");

            migrationBuilder.CreateIndex(
                name: "IX_Vagas_VeiculoId",
                table: "Vagas",
                column: "VeiculoId",
                unique: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas",
                column: "VeiculoId",
                principalTable: "Veiculo",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetNull);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas");

            migrationBuilder.DropIndex(
                name: "IX_Vagas_VeiculoId",
                table: "Vagas");

            migrationBuilder.CreateIndex(
                name: "IX_Vagas_VeiculoId",
                table: "Vagas",
                column: "VeiculoId");

            migrationBuilder.AddForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas",
                column: "VeiculoId",
                principalTable: "Veiculo",
                principalColumn: "Id");
        }
    }
}
