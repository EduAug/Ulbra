using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EntityFramework.Migrations
{
    /// <inheritdoc />
    public partial class AddPersoninProducts : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "PersonId",
                table: "Products",
                type: "INTEGER",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Products_PersonId",
                table: "Products",
                column: "PersonId");

            migrationBuilder.AddForeignKey(
                name: "FK_Products_Persons_PersonId",
                table: "Products",
                column: "PersonId",
                principalTable: "Persons",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Products_Persons_PersonId",
                table: "Products");

            migrationBuilder.DropIndex(
                name: "IX_Products_PersonId",
                table: "Products");

            migrationBuilder.DropColumn(
                name: "PersonId",
                table: "Products");
        }
    }
}
