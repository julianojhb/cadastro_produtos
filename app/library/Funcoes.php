<?php

class Funcoes {

    public function __construct() {

    }

    public function converterUtf8($array) {
        array_walk_recursive($array, function(&$item, $key){
            if(!mb_detect_encoding($item, 'utf-8', true)){
                $item = utf8_encode($item);
            }
        });

        return $array;
    }

}
