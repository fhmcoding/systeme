<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExercisesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exercises', function (Blueprint $table) {
            $table->id();
            $table->string('teatcher_id');
            $table->string('subject_id');
            $table->string('group_id');
            $table->string('permission1');
            $table->string('permission2');
            $table->string('permission3');
            $table->string('statu');
            $table->string('classes')->nullable();
            $table->string('students')->nullable();
            $table->string('name');
            $table->string('docunment');
            $table->string('link');
            $table->integer('vu');
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
        Schema::dropIfExists('exercises');
    }
}
