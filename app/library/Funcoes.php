<?php

class Funcoes {

    public function __construct() {

    }

    public function converterUtf8($array) {
        array_walk_recursive($array, function(&$item, $key){
            if(!mb_detect_encoding($item, 'utf-8', true)){
                $item = mb_convert_encoding($item, 'UTF-8', 'ISO-8859-1');
            }
        });

        return $array;
    }

}
