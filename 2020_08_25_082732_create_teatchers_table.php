<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeatchersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teatchers', function (Blueprint $table) {
            $table->id();
            $table->string('user_id');
            $table->string('firstname_ar');
            $table->string('firstname_fr');
            $table->string('lastname_ar');
            $table->string('lasttname_fr');
            $table->string('gender');
            $table->string('statu_famile');
            $table->string('Matiere');
            $table->string('Diploma');
            $table->string('date_of_birth');
            $table->string('place_of_birth');
            $table->string('email');
            $table->string('phone');
            $table->string('photo');
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
        Schema::dropIfExists('teatchers');
    }
}
