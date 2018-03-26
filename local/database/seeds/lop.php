<?php

use Illuminate\Database\Seeder;

class lop extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('lop')->insert([
        	['ten'=>'huy','ma'=>'65dcht523','soluong'=>'10'],
        	['ten'=>'huyluu','ma'=>'65dcht5423','soluong'=>'50'
        	]

        ]);
    }
}
