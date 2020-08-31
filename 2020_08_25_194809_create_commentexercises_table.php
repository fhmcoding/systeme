<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentexercisesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commentexercises', function (Blueprint $table) {
            $table->id();
            $table->string('student_id');
            $table->string('exercise_id');
            $table->string('document')->nullable();
            $table->string('description')->nullable();
            $table->string('type'); // request for student reponse for teacher
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
        Schema::dropIfExists('commentexercises');
    }
}
