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
            $table->string('topbar_telephone')->nullable();
            $table->string('topbar_email')->nullable();
            $table->json('mega_menu_items')->nullable();

            $table->string('home_top_hero_title')->nullable();
            $table->string('home_top_hero_text')->nullable();
            $table->string('home_top_hero_video')->nullable();

            $table->string('home_exploring_title')->nullable();
            $table->text('home_exploring_text')->nullable();
            $table->json('home_exploring_items')->nullable();

            $table->string('home_statistics_total_haors')->nullable();
            $table->string('home_statistics_total_area')->nullable();
            $table->string('home_statistics_total_projects')->nullable();

            $table->string('home_featured_haors_title')->nullable();
            $table->string('home_featured_haors_sub_title')->nullable();
            $table->json('home_featured_haors_items')->nullable();
            $table->string('home_featured_haors_view_all_url')->nullable();

            $table->string('home_haor_map_title')->nullable();
            $table->text('home_haor_map_text')->nullable();
            $table->json('home_haor_map_items')->nullable();

            $table->string('home_conservation_effects_title')->nullable();
            $table->text('home_conservation_effects_text')->nullable();
            $table->json('home_conservation_effects_items')->nullable();

            $table->string('home_summary_report_title')->nullable();
            $table->string('home_summary_report_sub_title')->nullable();
            $table->json('home_summary_report_items')->nullable();
            $table->string('home_summary_report_view_all_url')->nullable();

            $table->string('home_recreation_tourism_title')->nullable();
            $table->json('home_recreation_tourism_items')->nullable();

            $table->json('home_gallery_items')->nullable();

            $table->string('cookie_policy_title')->nullable();
            $table->text('cookie_policy_content')->nullable();

            $table->string('privacy_policy_title')->nullable();
            $table->text('privacy_policy_content')->nullable();

            $table->string('terms_conditions_title')->nullable();
            $table->text('terms_conditions_content')->nullable();

            $table->string('footer_logo')->nullable();
            $table->string('footer_text')->nullable();
            $table->string('footer_contact_address')->nullable();
            $table->json('footer_link_items')->nullable();
            $table->text('footer_copyright_text')->nullable();

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
