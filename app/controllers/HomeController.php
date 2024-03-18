<?php

class HomeController extends Controller {
    public function __construct() {

    }

    public function index() {

        $funcoes = new Funcoes();
        $database = new Database();
        $produtos = $database->query("SELECT produtos.codigo, produtos.descricao, produtos.preco_unitario, categorias.descricao AS categoria FROM produtos INNER JOIN categorias ON produtos.categoria = categorias.codigo;");
        $produtos = $funcoes->converterUtf8($produtos);

        // CRIANDO A TABELA PARA SER MOSTRADA
        $produtosTable = new STable();
        $produtosTable->attributes = "bgcolor=\"#ccc\" id=\"lista\"";
        $produtosTable->class = "table table-striped table-bordered";

        $produtosTable->thead()
            ->th("Código",null,"style='text-align: center;'")
            ->th("Descrição",null,"style='text-align: center;'")
            ->th("Categoria",null,"style='text-align: center;'")
            ->th("Preço Unitário",null,"style='text-align: center;'")
            ->th("",null,"style='text-align: center;'")
        ;

        // POPULANDO A TABELA
        foreach ($produtos as $r) {
            $produtosTable->tr(null, null)
                ->td($r['codigo'], null, "style='text-align: center;'")
                ->td($r['descricao'],null,"style='text-align: center;'")
                ->td($r['categoria'],null,"style='text-align: center;'")
                ->td($r['preco_unitario'],null,"style='text-align: center;'")
                ->td('<button type="button" class="btn btn-info" id="btnEditarProduto" onclick="$editarProduto('.$r['codigo'].')" style="min-width: 90px;">Editar</button>',null,"style='text-align: center;'")
            ;
        }

        $tabela = $produtosTable->getTable();

        $categorias = $funcoes->converterUtf8($database->query("SELECT c.codigo, c.descricao FROM categorias c order by c.descricao;"));

        $options = '';
        $options .= '<option value="0">Selecione a Categoria</option>';
        if(count($categorias) > 0){
            foreach ($categorias as $reg):
                $options .= '<option value="'.$reg["codigo"].'">'.$reg["descricao"].'</option>';
            endforeach;
        }

        // ENVIANDO AS INFORMAÇÕES PARA A VIEW
        $data = [
            'title' => 'Home',
            'tabela' => $tabela,
            'categorias' => '<select class="form-control" id="categoria">' . $options . '</select>',
        ];
        $this->view('pages/home', $data);

    }

}
