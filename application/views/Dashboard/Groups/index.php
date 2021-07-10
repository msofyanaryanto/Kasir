<div class="page-header">
  <h1 class="page-title" style="text-transform: capitalize;">Group Management</h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo base_url();?>">Dashboard</a></li>
    <li class="active">Group Management</li>
  </ol>
  <div class="page-header-actions">
	  <a href="<?php echo base_url('group/add/');?>" class="btn btn-sm btn-default btn-block btn-primary btn-round">
	      <i aria-hidden="true" class="icon wb-plus"></i>
	      <span class="hidden-xs">Add new group</span>
	    </a>
  </div>
</div>


	<div class="panel panel-bordered">
            <div class="panel-heading">
            	<div class="row">
            		<h3 class="panel-title">List Data Group</h3>
            	</div>
            </div>


            <div class="panel-body">
            	<table class="table table-hover dataTable table-striped width-full overf" data-plugin="dataTable">
			        <thead>
			          <tr>
			            <th>No</th>
			            <th>Name Group</th>
			            <th>Create at</th>
			            <th>Modified at</th>
			            <th>Actions</th>
			          </tr>
			        </thead>
			        
			        <tbody>
			        <?php
			        	$no=1;
			        	foreach ($data_group as $value):
			        ?>
			          <tr>
			            <td><?= $no++;?></td>
			           <!--  <td><?= $value->parent_id;?></td> -->
			            <td><?= $value->name_group;?></td>
			            <td><?= $value->create_at;?></td>
			            <td><?= $value->modified_at;?></td>
			            <td>
			            	<div class="btn-group" role="group">
			                    <button type="button" class="btn btn-warning dropdown-toggle" id="exampleIconDropdown1"
			                    data-toggle="dropdown" aria-expanded="false">
			                      <i class="icon wb-settings" aria-hidden="true"></i>
			                      <span class="caret"></span>
			                    </button>
			                    <ul class="dropdown-menu" style="min-width:10px;" aria-labelledby="exampleIconDropdown1" role="menu">
			                      <li role="presentation">
			                      	<a style="text-decoration:none; text-align:left;" class="btn btn-block btn-default" href="<?php echo base_url('group/manage/'.$value->id_group);?>">
			                      	<i class="icon wb-settings" aria-hidden="true"></i>
			                      	Manage
			                      	</a>
			                      </li>
			                      <li role="presentation">
			                      	<a style="text-decoration:none; text-align:left;" class="btn btn-block btn-default" href="<?php echo base_url('group/edit/'.$value->id_group);?>">
			                      	<i class="icon wb-edit" aria-hidden="true"></i>
			                      	Edit
			                      	</a>
			                      </li>
			                      <li role="presentation">
			                      	<a style="text-decoration:none; text-align:left;" class="btn btn-block btn-default" href="<?php echo base_url('group/delete/'.$value->id_group);?>" onclick="return confirm('Are you sure to delete data ?')">
			                      	<i class="icon wb-close" aria-hidden="true"></i>
			                      	Hapus
			                      	</a>
			                      </li>
			                    </ul>
			                </div>

			            </td>
			          </tr>
			          <?php
			          	endforeach;
			          ?>
			        </tbody>
			     </table>
            </div>
    </div>
