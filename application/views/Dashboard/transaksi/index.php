<div class="page-header">
  <h1 class="page-title" style="text-transform: capitalize;"><?= $title ?></h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo base_url();?>">Dashboard</a></li>
    <li class="active"><?= $title ?></li>
  </ol>
  <div class="page-header-actions">
	  
  </div>
</div>

<div class="col-md-6">
	<div class="panel panel-bordered">
            <div class="panel-heading">
            	<div class="row">
            		<h3 class="panel-title">List Data Barang</h3>
            	</div>
            </div>
            <div class="panel-body">
				<?= $this->session->flashdata("notif") ?>
            	<table id="datatab" class="table table-hover dataTable table-striped width-full overf"  data-plugin="dataTable" cellspacing="0" width="100%">
					<thead>
		                <tr>
		                    <th>No</th>
		                    <th>Kode Barang</th>
							<th>Nama Barang</th>
							<th>Stok</th>
                            <th>Action</th>
		                </tr>
		            </thead>
		            <tbody>
                    <?php 
                    $no = 1;
                    foreach($data as $value) {
                    ?>
                    <tr>
                        <td><?= $no ?></td>
                        <td><?= $value->kode_barang ?></td>
                        <td><?= $value->nama_barang ?></td>
                        <td><?= $value->stok ?></td>
                        <td>
					                	<button type="button" class="btn btn-warning dropdown-toggle">
			                        Pilih &nbsp;
			                      <span class="fa fa-arrow-right"></span>
			                    </button>
			                   </td>
                    </tr>
                    <?php
                $no++;
                 } ?>
		            </tbody>

		          
		        </table>
            </div>
				</div>
    </div>



	<div class="col-md-6">
	<div class="panel panel-bordered">
            <div class="panel-heading">
            	<div class="row">
            		<h3 class="panel-title">List Data Pesanan Pelanggan</h3>
            	</div>
            </div>
            <div class="panel-body">
				
				<div class="form-group">
                  <label class="col-sm-4 control-label">Kasir : </label>
                  <div class="col-sm-8">
                    <input type="text" autocomplete="off"  disabled value="<?= $this->session->userdata('name_user') ?>" class="form-control" >
                  </div>
                </div>
				

				<div class="col-sm-12">&nbsp;</div>

				<div class="form-group">
                  <label class="col-sm-4 control-label">No Struk : </label>
                  <div class="col-sm-8">
                    <input type="text" autocomplete="off" disabled value="<?= $no_struk ?>" name="kategori" class="form-control" >
                  </div>
                </div>

				
				<div class="col-sm-12">&nbsp;</div>


            	<table id="datatab" class="table table-hover dataTable table-striped width-full overf"  cellspacing="0" width="100%">
					<thead>
		                <tr>
		                    <th>No</th>
		                    <th>Kode Barang</th>
							<th>Nama Barang</th>
							<th>Jumlah</th>
                            <th>Total Harga</th>
		                </tr>
		            </thead>
		            <tbody>
                    <?php 
                    $no = 1;
                    foreach($data as $value) {
                    ?>
                    <tr>
                        <td><?= $no ?></td>
                        <td><?= $value->kode_barang ?></td>
                        <td><?= $value->nama_barang ?></td>
                        <td><input type="number" value="1" name="kategori" class="form-control" ></td>
                        <td>
					              	<td>Rp. <?= $value->stok ?>,00</td>
			                  </td>
                    </tr>
                    <?php
                $no++;
                 } ?>
		            </tbody>

		          
		        </table>

				<div class="col-sm-12">&nbsp;</div>

				<div class="form-group">
                  <label class="col-sm-4 control-label">Total Bayar : </label>
                  <div class="col-sm-8">
                    <input type="text" autocomplete="off" placeholder="0" required name="kategori" class="form-control" >
                  </div>
                </div>
				

				<div class="col-sm-12">&nbsp;</div>

				<div class="form-group">
                  <label class="col-sm-4 control-label">Jumlah Bayar : </label>
                  <div class="col-sm-8">
                    <input type="text" autocomplete="off" placeholder="0" required name="kategori" class="form-control" >
                  </div>
                </div>

				<div class="col-sm-12">&nbsp;</div>

				<div class="form-group">
                  <label class="col-sm-4 control-label">Kembalian : </label>
                  <div class="col-sm-8">
                    <input type="text" autocomplete="off" placeholder="0" required name="kategori" class="form-control" >
                  </div>
                </div>

				<div class="col-sm-12">&nbsp;</div>

				<div class="form-group">
                  <div class="col-sm-7 col-sm-offset-8">
                    <input class="btn btn-primary" type="submit" value="Bayar & Cetak Struk">
                  </div>
                </div>

            </div>
				</div>
    </div>
