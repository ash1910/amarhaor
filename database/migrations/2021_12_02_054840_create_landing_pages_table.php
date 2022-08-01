<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLandingPagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('landing_pages', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('topbar_logo')->nullable();
            $table->json('topbar_menu_items')->nullable();
            $table->json('social_media_menu_items')->nullable();

            $table->string('home_top_img')->nullable();
            $table->string('home_top_img2')->nullable();
            $table->string('home_top_title')->nullable();
            $table->string('home_top_text')->nullable();

            $table->json('home_content_items')->nullable();

            $table->json('about_content_items')->nullable();

            $table->string('contact_title')->nullable();
            $table->string('contact_img')->nullable();

            $table->string('cookie_policy_title')->nullable();
            $table->text('cookie_policy_content')->nullable();

            $table->string('privacy_policy_title')->nullable();
            $table->text('privacy_policy_content')->nullable();

            $table->string('terms_conditions_title')->nullable();
            $table->text('terms_conditions_content')->nullable();

            $table->string('footer_logo')->nullable();
            $table->json('footer_link_items')->nullable();
            $table->string('footer_copyright_text')->nullable();


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
        Schema::dropIfExists('landing_pages');
    }
}
