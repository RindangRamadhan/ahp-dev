<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOurProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('our_products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('product_name', 100);
            $table->string('product_ingredients', 100)->nullable();
            $table->string('product_formulation', 100)->nullable();
            $table->text('product_use')->nullable();
            $table->text('product_dose')->nullable();
            $table->text('product_package')->nullable();
            $table->integer('kategori_id');
            $table->integer('kelompok_id');
            $table->string('gambar');
            $table->string('sifat_formulasi');
            $table->string('manfaat');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('our_products');
    }
}
