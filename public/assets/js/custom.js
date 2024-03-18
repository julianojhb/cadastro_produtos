
$(document).ready(function ($) {

    function atualizarPercentuais(){
        $.ajax({
            url: 'usuarios/atualizarPercentuais',
            data: {
            },
            type: 'POST',
            success: function (json) {
                if (json == 'The index does not exist in the cursor' || json == '') {
                    return false;
                } else{
                    var $jsonObj = JSON.parse(json);
                    $('#divProgressUsuario').html('<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width:'+$jsonObj[0]['percentual_usuario']+'">'+$jsonObj[0]['percentual_usuario']+'</div>');
                    $('#divProgressRodada').html('<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width:'+$jsonObj[0]['percentual_rodada']+'">'+$jsonObj[0]['percentual_rodada']+'</div>');
                }
            }
        });
    };

    $editarProduto = function(codigo) {
        $.ajax({
            url: 'post/editarProduto',
            data: {
                codigo: codigo
            },
            type: 'POST',
            success: function (json) {
                if (json == 'The index does not exist in the cursor' || json == '') {
                    return false;
                } else{
                    var $jsonObj = JSON.parse(json);
                    console.log($jsonObj['campos']['descricao']);

                    // POPULANDO O FORMULÁRIO
                    $('#descricao').val($jsonObj['campos']['descricao']);
                    $('#preco_unitario').val($jsonObj['campos']['preco_unitario']);
                    $('#categoria').val($jsonObj['campos']['codigo_categoria']);
                    $('#modalCadastroProduto_tituloModal').html('Edição de Produto');

                    $('#modalCadastroProduto').off('shown.bs.modal hidden.bs.modal');
                    $('#modalCadastroProduto').modal('show')
                        .on('shown.bs.modal', function (e) {
                            console.log('Abriu o Modal');

                            // $editarProduto
                            $('#modalCadastroProduto_Salvar').off('click');
                            $('#modalCadastroProduto_Salvar').on('click', function(event) {

                                console.log('Salvando Edição de Produto!');

                                $.ajax({
                                    url: 'post/salvarProduto',
                                    data: {
                                        edicao: 1,
                                        descricao: $('#descricao').val(),
                                        preco_unitario: $('#preco_unitario').val(),
                                        categoria: $('#categoria').val(),
                                    },
                                    type: 'POST',
                                    success: function (json) {
                                        if (json == 'The index does not exist in the cursor' || json == '') {
                                            return false;
                                        } else{
                                            var $jsonObj = JSON.parse(json);
                                            console.log($jsonObj['erro']);
                                            if($jsonObj['erro'] != ''){
                                                alert($jsonObj['erro']);
                                            } else {
                                                alert('Produto editado com sucesso!');
                                                $('#modalCadastroProduto').modal('hide');
                                                document.location.reload();
                                            }
                                        }
                                    }
                                });

                                /////////////////////////////////////////////

                            });

                        })
                        .on('hidden.bs.modal', function (e) {
                            console.log('Fechou o Modal');
                            $('#descricao').val('');
                            $('#preco_unitario').val('');
                            $('#categoria').val('0');
                            $('#modalCadastroProduto_tituloModal').html('');
                        });

                }
            }
        });
    };

    $('#btnCadastrarProduto').off('click');
    $('#btnCadastrarProduto').on('click', function(event) {
        console.log('Cadastrar Novo Produto!');
        $('#descricao').val('');
        $('#preco_unitario').val('');
        $('#categoria').val('0');
        $('#modalCadastroProduto_tituloModal').html('Cadastro de Novo Produto');

        $('#modalCadastroProduto').off('shown.bs.modal hidden.bs.modal');
        $('#modalCadastroProduto').modal('show')
            .on('shown.bs.modal', function (e) {
                console.log('Abriu o Modal');

                // btnCadastrarProduto
                $('#modalCadastroProduto_Salvar').off('click');
                $('#modalCadastroProduto_Salvar').on('click', function(event) {

                    console.log('Salvando Novo Produto!');
                    $.ajax({
                        url: 'post/salvarProduto',
                        data: {
                            codigo: 0,
                            descricao: $('#descricao').val(),
                            preco_unitario: $('#preco_unitario').val(),
                            categoria: $('#categoria').val(),
                        },
                        type: 'POST',
                        success: function (json) {
                            if (json == 'The index does not exist in the cursor' || json == '') {
                                return false;
                            } else{
                                var $jsonObj = JSON.parse(json);
                                console.log($jsonObj['erro']);
                                if($jsonObj['erro'] != ''){
                                    alert($jsonObj['erro']);
                                } else {
                                    alert('Produto cadastrado com sucesso!');
                                    $('#modalCadastroProduto').modal('hide');
                                    document.location.reload();
                                }
                            }
                        }
                    });

                });

            })
            .on('hidden.bs.modal', function (e) {
                console.log('Fechou o Modal');
                $('#modalCadastroProduto_tituloModal').html('');
            });
    });

})
