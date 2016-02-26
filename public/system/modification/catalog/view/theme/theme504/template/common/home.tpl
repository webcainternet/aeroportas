<?php echo $header; ?>

			<div class="header_modules"><?php echo $header_top; ?></div>
			

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
	<div class="col-sm-12" style="margin-top: 15px;">
		<div class="telefones">
			<div class="banner-home-loja">Loja 1</div>
			<h1>Av. Bandeirantes, 4265</h1>
			<div class="banner-home-titulo">Aeroporto</div>
			<h2>11 5096-1803</h2>
		</div>

		<div class="telefones">
			<div class="banner-home-loja">Loja 2</div>
			<h1>Rua do Gasômetro, 360</h1>
			<div class="banner-home-titulo">Centro</div>
			<h2>11 3313-8942</h2>
		</div>

		<div class="telefones">
			<div class="banner-home-loja">Loja 3</div>
			<h1>Av. Salgado Filho</h1>
			<div class="banner-home-titulo">Guarulhos</div>
			<h2>11 2382-5185</h2>
		</div>

		<div class="telefones">
			<div class="banner-home-loja">Loja 4</div>
			<h1>Rua do Gasômetro, 326</h1>
			<div class="banner-home-titulo">Centro</div>
			<h2>11 3227-9747</h2>
		</div>

		<div class="telefones" style="margin-right: 0px;">
			<div class="banner-home-loja">Loja 5</div>
			<h1>Rua do Gasômetro, 218</h1>
			<div class="banner-home-titulo">Centro</div>
			<h2>11 3227-1226</h2>
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
