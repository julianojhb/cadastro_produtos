<?php

class PostController extends Controller {

  public function __construct() {

  }

  public function index($id) {
    $data = [
      'title' => 'Post '.$id,
      'id'    => $id
    ];
    $this->view('post/home', $data);
  }

  public function editarProduto() {
      session_start();
      $funcoes = new Funcoes();
      $database = new Database();
      $codigo = $_POST['codigo'];
      $produto = $funcoes->converterUtf8($database->query("SELECT p.codigo, p.descricao, p.preco_unitario, p.categoria as codigo_categoria, c.descricao AS categoria FROM produtos p INNER JOIN categorias c ON p.categoria = c.codigo and p.codigo = " . $codigo));

      if(count($produto) > 0){
          $_SESSION['codigo_produto_editado'] = $produto[0]["codigo"];
      } else {
          $_SESSION['codigo_produto_editado'] = 0;
      }

      $retorno = [
          'erro' => '',
          'campos' => $produto[0]
      ];

      print json_encode($retorno);
  }

  public function salvarProduto() {
      session_start();
      $funcoes = new Funcoes();
      $database = new Database();

      $edicao = isset($_POST['edicao']) ? $_POST['edicao'] : '0';
      $descricao = $_POST['descricao'];
      $preco_unitario = $_POST['preco_unitario'];
      $preco_unitario = empty($preco_unitario) ? 0 : $preco_unitario;
      $categoria = $_POST['categoria'];

      // VALIDANDO OS CAMPOS
      $erro = '';
      if (empty($descricao)){
          $erro = 'O campo Descrição deve ser preenchido!';
      } elseif (empty($categoria)){
          $erro = 'O campo Categoria deve ser preenchido!';
      }

      if(empty($erro)){
          // VERIFICANDO SE O PRODUTO JÁ EXISTE

          if((int)$edicao == 1){
              $produtos = $funcoes->converterUtf8($database->query("SELECT p.codigo, p.descricao FROM produtos p WHERE p.descricao = '" . utf8_decode($descricao) . "' AND codigo <> " . $_SESSION['codigo_produto_editado']));
          } else {
              $produtos = $funcoes->converterUtf8($database->query("SELECT p.codigo, p.descricao FROM produtos p WHERE p.descricao = '" . utf8_decode($descricao) . "'"));
          }

          if(count($produtos) > 0){
              // JÁ EXISTE PRODUTO COM ESTA DESCRIÇÃO
              $erro = 'Já existe produto com esta Descrição!';
          }

      }

      $retorno = [
          'erro' => $erro,
      ];

      // SE CHEGOU ATÉ AQUI, ESTÁ TUDO OK!
      if (empty($erro)) {

          if ((int)$edicao == 1) {

              // SALVANDO EDIÇÃO DO PRODUTO
              $codigo = $_SESSION['codigo_produto_editado'];
              $update = $database->query("UPDATE produtos SET descricao = '".utf8_decode($descricao)."' , preco_unitario = '".$preco_unitario."' , categoria = '".$categoria."' WHERE codigo = '".$codigo."'; ");

          } else {

              // SE CHEGAR ATÉ AQUI, PRECISA CADASTRAR O PRODUTO
              $novo_produto = $database->query("INSERT INTO produtos (codigo, descricao, preco_unitario, categoria) VALUES (0, '" . utf8_decode($descricao) ."', ".$preco_unitario.", ".$categoria.")");

          }
      }

      print json_encode($retorno);

  }

}
