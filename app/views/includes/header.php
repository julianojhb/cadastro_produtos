<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>
      <?php
        echo isset($data['title']) ? $data['title']." - ".SITE_NAME : SITE_NAME;
      ?>
  </title>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <link rel="icon" type="image/png" href="<?=URL_ROOT?>/assets/img/favicon.png">

  <link rel="stylesheet" href="<?=URL_ROOT?>/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?=URL_ROOT?>/assets/css/main.css">

  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
<body>
<?php require('navbar.php'); ?>