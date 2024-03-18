<?php
$routes = array();
$routes['#^/$#i']                   = array('controller' => 'home', 'action' => 'index');
$routes['#^/home$#i']               = array('controller' => 'home', 'action' => 'index');
$routes['#^/post/$#i']              = array('controller' => 'post', 'action' => 'index');
$routes['#^/post/editarProduto$#i'] = array('controller' => 'post', 'action' => 'editarProduto');
$routes['#^/post/salvarProduto$#i'] = array('controller' => 'post', 'action' => 'salvarProduto');
