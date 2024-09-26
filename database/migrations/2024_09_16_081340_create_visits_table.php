<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVisitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('visits', function (Blueprint $table) {
            $table->id();
            $table->string('pagename'); // Page name or route name
            $table->string('user_agent_name'); // Page name or route name
            $table->timestamp('visited_at')->useCurrent(); // When the visit occurred
            $table->ipAddress('ip_address'); // Visitor's IP address
            $table->timestamps();

            // Ensure that each page visit by a unique IP address is counted only once per day
            //$table->unique(['ip_address']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('visits');
    }
}
