<?php
require_once 'model/servicios.php';

class serviciosController{
    
    private $model;
    
    public function __CONSTRUCT(){
        $this->model = new servicios();
    }
    
    public function Index(){
        require_once 'view/header.php';
        require_once 'view/servicios/servicios.php';
       
    }
    
    public function Crud(){
        $servicios = new servicios();
        
        if(isset($_REQUEST['id'])){
            $servicios = $this->model->Obtener($_REQUEST['id']);
        }
        
        require_once 'view/header.php';
        require_once 'view/servicios/servicios-editar.php';
        
    }
    
    public function Guardar(){
        $servicios = new servicios();
        
        
        $servicios->id = $_REQUEST['id'];
        $servicios->nombre = $_REQUEST['nombre'];
        $servicios->tipo = $_REQUEST['tipo'];
        $servicios->duracion = $_REQUEST['duracion'];
        $servicios->costo = $_REQUEST['costo'];  
        $servicios->estado = $_REQUEST['estado'];    
        $servicios->valoracion = $_REQUEST['valoracion'];    
        $servicios->email = $_REQUEST['email'];    
      

        $servicios->id > 0 
            ? $this->model->Actualizar($servicios)
            : $this->model->Registrar($servicios);
        
        header('Location: index.php');
    }
    
    public function Eliminar(){
        $this->model->Eliminar($_REQUEST['id']);
        header('Location: index.php');
    }
}