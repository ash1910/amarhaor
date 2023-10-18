<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHaorDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('haor_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('haor_id');

            $table->string('title')->nullable();
            $table->string('area')->nullable();
            $table->string('header_img')->nullable();
            $table->text('overview')->nullable();
            $table->text('about')->nullable();
            $table->text('description')->nullable();
            $table->json('gallery_items')->nullable();

            $table->foreign('haor_id')
                ->references('id')->on('haors');

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
        Schema::dropIfExists('haor_details');
    }
}
