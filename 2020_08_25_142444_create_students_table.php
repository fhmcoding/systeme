<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations. 
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('user_id');
            $table->string('firstname_ar');
            $table->string('firstname_fr');
            $table->string('lastname_ar');
            $table->string('lasttname_fr');
            $table->string('gender');
            $table->string('leval_name');
            $table->string('date_of_birth');
            $table->string('place_of_birth');
            $table->string('father_name');
            $table->string('mother_name');
            $table->string('responsable');
            $table->string('job');
            $table->string('email');
            $table->string('phone');
            $table->string('photo');
            $table->string('classe_id')->default('empty');
            $table->integer('absente');
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
        Schema::dropIfExists('students');
    }
}
