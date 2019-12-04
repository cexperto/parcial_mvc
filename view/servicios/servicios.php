<h1 class="page-header">Agrega edita o cambia de servicios</h1>


    <a class="btn btn-primary pull-right" href="?c=servicios&a=Crud">Agregar</a>
<br><br><br>
<table class="table  table-striped  table-hover" id="tabla">
    <thead>
        <tr>
            <th style="width:60px; background-color: #5DACCD; color:#fff">Id</th>
            <th style="width:120px; background-color: #5DACCD; color:#fff">Nombre</th>
            <th style="width:120px; background-color: #5DACCD; color:#fff">Tipo</th>
            <th style="width:120px; background-color: #5DACCD; color:#fff">Duracion</th>
            <th style="width:120px; background-color: #5DACCD; color:#fff">Costo</th>            
            <th style="width:120px; background-color: #5DACCD; color:#fff">Estado</th>            
            <th style="width:120px; background-color: #5DACCD; color:#fff">Valoracion</th>            
            <th style="width:60px; background-color: #5DACCD; color:#fff">email</th>
            <th style="width:60px; background-color: #5DACCD; color:#fff"></th>
            <th style="width:60px; background-color: #5DACCD; color:#fff"></th>
        </tr>
    </thead>
    <tbody>
    <?php foreach($this->model->Listar() as $r): ?>
        <tr>
         <td><?php echo $r->id_servicios; ?></td>
            <td><?php echo $r->nombre_servicios; ?></td>
            <td><?php echo $r->tipo_servicios; ?></td>
            <td><?php echo $r->duracion_servicios; ?></td>
            <td><?php echo $r->costo_servicios; ?></td>
            <td><?php echo $r->estado; ?></td>
            <td><?php echo $r->valoracion; ?></td>
            <td><?php echo $r->email; ?></td>
            <td>
                <a  class="btn btn-warning" href="?c=servicios&a=Crud&id=<?php echo $r->id_servicios; ?>">Editar</a>

            </td>
            <td>
                <a  class="btn btn-danger" onclick="javascript:return confirm('¿Seguro de eliminar este registro?');" href="?c=servicios&a=Eliminar&id=<?php echo $r->id_servicios; ?>">Eliminar</a>
           
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table> 

</body>
<script  src="assets/js/datatable.js">  

</script>

</html>
