
<!-- Modal -->
<div class="modal fade" id="modalCadastroProduto" tabindex="-1" role="dialog" aria-labelledby="tituloModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCadastroProduto_tituloModal">Cadastro de Produto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Formulário de cadastro de produto -->
                <form>
                    <div class="form-group">
                        <label for="descricao">Descrição</label>
                        <input type="text" class="form-control" id="descricao" placeholder="Insira a descrição do produto">
                    </div>
                    <div class="form-group">
                        <label for="preco_unitario">Preço Unitário</label>
                        <input type="number" step="0.01" class="form-control" id="preco_unitario" placeholder="Insira o preço unitário do produto">
                    </div>
                    <div class="form-group">
                        <label for="categoria">Categoria</label>
                        <?php echo $data['categorias']; ?>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                <button type="button" class="btn btn-primary" id="modalCadastroProduto_Salvar">Salvar</button>
            </div>
        </div>
    </div>
</div>

<main class="container" role="main">

    <?php echo $data['tabela']; ?>

</main>
