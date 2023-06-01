using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AP2_Refatorar_Estacionamento.Migrations
{
    /// <inheritdoc />
    public partial class VagaAcceptNullVehicle : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas");

            migrationBuilder.AlterColumn<string>(
                name: "Placa",
                table: "Veiculo",
                type: "TEXT",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "TEXT",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Modelo",
                table: "Veiculo",
                type: "TEXT",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "TEXT",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "VeiculoId",
                table: "Vagas",
                type: "INTEGER",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "INTEGER");

            migrationBuilder.AddForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas",
                column: "VeiculoId",
                principalTable: "Veiculo",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas");

            migrationBuilder.AlterColumn<string>(
                name: "Placa",
                table: "Veiculo",
                type: "TEXT",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "TEXT");

            migrationBuilder.AlterColumn<string>(
                name: "Modelo",
                table: "Veiculo",
                type: "TEXT",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "TEXT");

            migrationBuilder.AlterColumn<int>(
                name: "VeiculoId",
                table: "Vagas",
                type: "INTEGER",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "INTEGER",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Vagas_Veiculo_VeiculoId",
                table: "Vagas",
                column: "VeiculoId",
                principalTable: "Veiculo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
