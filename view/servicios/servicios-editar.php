<h1 class="page-header">
    <?php echo $servicios->id_servicios != null ? $servicios->nombre_servicios : 'Nuevo Registro'; ?>
</h1>
<ol class="breadcrumb">
  <li><a href="?c=servicios">servicios</a></li>
  <li class="active"><?php echo $servicios->id_servicios != null ? $servicios->nombre_servicios : 'Nuevo Registro'; ?></li>
</ol>

<form id="frm-alumno" action="?c=servicios&a=Guardar" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?php echo $servicios->id_servicios; ?>" />
      <div class="form-group">
        <label>servicio</label>
        <input type="text" name="nombre" value="<?php echo $servicios->nombre_servicios; ?>" class="form-control" placeholder="id" required>
    </div>
    
    <div class="form-group">
        <label>tipo de servicio</label>
        <input type="text" name="tipo" value="<?php echo $servicios->tipo_servicios; ?>" class="form-control" placeholder="Tipo de servicio" required>
    </div>
    
    <div class="form-group">
        <label>Duracion</label>
        <input type="text" name="duracion" value="<?php echo $servicios->duracion_servicios; ?>" class="form-control" placeholder="Duracio de servicios" required>
    </div>
    
    <div class="form-group">
        <label>Costo</label>
        <input type="text" name="costo" value="<?php echo $servicios->costo_servicios; ?>" class="form-control" placeholder="Costo" required>
    </div>
     <div class="form-group">
        <label>Estado</label>
        <input type="text" name="estado" value="<?php echo $servicios->estado; ?>" class="form-control" placeholder="estado" required>
    </div>
    <div class="form-group">
        <label>valoracion</label>
        <input type="text" name="valoracion" value="<?php echo $servicios->valoracion; ?>" class="form-control" placeholder="valoracion" required>
    </div>
    <div class="form-group">
        <label>correo</label>
        <input type="email" name="email" value="<?php echo $servicios->email; ?>" class="form-control" placeholder="correo electronico" required>
    </div>
        
    
    <hr />
    
    <div class="text-right">
        <button class="btn btn-primary">Guardar</button>
    </div>
</form>

<script>
    $(document).ready(function(){
        $("#frm-alumno").submit(function(){
            return $(this).validate();
        });
    })
</script>
