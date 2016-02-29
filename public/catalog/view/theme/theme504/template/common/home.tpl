<?php echo $header; ?>

<div id="container">
	<div class="container">
		<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>

<div>
	<div class="col-sm-12" style="margin-top: 10px;">
		<div class="telefones">
			<div class="banner-home-loja">Loja 1</div>
			<div class="banner-home-endereco">Av. Bandeirantes, 4265, Aeroporto, SP</div>
			<div class="banner-home-titulo">bandeirantes@aeroportas.com.br</div>
			<div class="banner-home-telefone">(11) 5096-1803</div>
		</div>

		<div class="telefones">
			<div class="banner-home-loja">Loja 2</div>
			<div class="banner-home-endereco">Rua do Gasômetro, 360, Brás, SP</div>
			<div class="banner-home-titulo">gasometro@aeroportas.com.br</div>
			<div class="banner-home-telefone">(11) 3313-8942</div>
		</div>

		<div class="telefones">
			<div class="banner-home-loja">Loja 3</div>
			<div class="banner-home-endereco">Av. Salgado Filho, 1772, Guarulhos, SP</div>
			<div class="banner-home-titulo">guarulhos@aeroportas.com.br</div>
			<div class="banner-home-telefone">(11) 2382-5185</div>
		</div>

		<div class="telefones">
			<div class="banner-home-loja">Loja 4</div>
			<div class="banner-home-endereco">Rua do Gasômetro, 326, Brás, SP</div>
			<div class="banner-home-titulo">gasometro326@aeroportas.com.br</div>
			<div class="banner-home-telefone">(11) 3227-9747</div>
		</div>

		<div class="telefones" style="margin-right: 0px;">
			<div class="banner-home-loja">Loja 5</div>
			<div class="banner-home-endereco">Rua do Gasômetro, 218, Brás, SP</div>
			<div class="banner-home-titulo">gasometro218@aeroportas.com.br</div>
			<div class="banner-home-telefone">(11) 3227-1226</div>
		</div>
	</div>
</div>

		<div id="content" class="<?php echo $class; ?>">
		<?php echo $content_top; ?></div>
		<?php echo $column_right; ?></div>
	</div>
</div>
<div class="content_bottom">
	<div class="container">
		<div class="row">
			<?php echo $content_bottom; ?>
		</div>
	</div>
</div>
<?php echo $footer; ?>
