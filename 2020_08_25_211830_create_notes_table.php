<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notes', function (Blueprint $table) {
            $table->id();
            $table->string('teatcher_id');
            $table->string('student_id');
            $table->string('title');
            $table->string('description');
            $table->string('withpremision');
            $table->string('reponse')->nullable();
            $table->string('vu_student');
            $table->string('vu_teatcher');
            $table->string('vu_father')->nullable();
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
        Schema::dropIfExists('notes');
    }
}
