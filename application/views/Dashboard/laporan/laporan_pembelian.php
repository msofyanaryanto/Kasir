<div class="page-header">
  <h1 class="page-title" style="text-transform: capitalize;"><?= $title ?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo base_url();?>">Dashboard</a></li>
    <li class="active"><?= $title ?></li>
  </ol>
  <div class="page-header-actions">
  </div>
</div>


	<div class="panel panel-bordered">
            <div class="panel-heading">
            	<div class="row">
            		<h3 class="panel-title"><?= $title ?></h3>
            	</div>
            </div>


            <div class="panel-body">
				<?= $this->session->flashdata("notif") ?>
            	<table id="datatab" class="table table-hover dataTable table-striped width-full overf"  data-plugin="dataTable" cellspacing="0" width="100%">
				<thead>
		                <tr>
		                    <th>No</th>
                            <th>Nama Barang</th>
                            <th>Tanggal</th>
                            <th>Kategori</th>                            
		                    <th>Supplier</th>
                        <th>Jumlah</th>
							          <th>Harga Beli</th>
                        <th>Harga Jual</th>
		                </tr>
		            </thead>
		            <tbody>
                    <?php 
                    foreach($data['listPembelian'] as $index => $value) {
                    ?>
                    <tr>
                        <td><?= $index + 1 ?></td>
                        <td><?= $value->nama_barang ?></td>
                        <td><?= $value->createdAt ?></td>
                        <td><?= $value->kategori ?></td>
                        <td><?= $value->nama_supplier ?></td>
                        <td><?= $value->jumlah ?></td>
                        <td><?= $value->harga_beli ?></td>
                        <td><?= $value->harga_jual ?></td>
                    </tr>  
                    <?php
                 } ?>       
		            </tbody>		          
		        </table>
            </div>
    </div>
