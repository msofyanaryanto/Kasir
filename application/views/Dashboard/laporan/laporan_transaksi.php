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
                            <th>No Struk</th>
                            <th>Tanggal</th>                            
		                    <th>List Barang</th>
							<th>Total</th>
		                </tr>
		            </thead>
		            <tbody>
                    <?php 
                    foreach($data['listTransaksi'] as $index => $value) {
                    ?>
                    <tr>
                        <td><?= $index + 1 ?></td>
                        <td><?= $value->no_struk ?></td>
                        <td><?= $value->createdAt ?></td>
                        <td><?= $value->list_barang ?></td>
                        <td><?= $value->total ?></td>
                    </tr>  
                    <?php
                 } ?>       
		            </tbody>


		          
		        </table>

                <div class="row">
            		<h3 class="panel-title">Total pendapatan : <?= $data['totalPendapatan'] ?></h3>
            	</div>
            </div>
    </div>
