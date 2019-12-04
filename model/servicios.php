<?php
class servicios
{
	private $pdo;
    
    public $id;
    public $nombre;
    public $tipo;
    public $duracion;  
    public $costo;
	public $estado;
	public $valoracion;
	public $email;
	
	public function __CONSTRUCT()
	{
		try
		{
			$this->pdo = Database::StartUp();     
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Listar()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM servicios");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Obtener($id)
	{
		try 
		{
			$stm = $this->pdo
			          ->prepare("SELECT * FROM servicios WHERE id_servicios = ?");
			          

			$stm->execute(array($id));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Eliminar($id)
	{
		try 
		{
			$stm = $this->pdo
			            ->prepare("DELETE FROM servicios WHERE id_servicios = ?");			          

			$stm->execute(array($id));
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Actualizar($data)
	{
		try 
		{
			$sql = "UPDATE servicios SET 
						nombre_servicios    	= ?, 
						tipo_servicios      	= ?,
                        duracion_servicios  	= ?,
                        costo_servicios     	= ?,
                        estado     				= ?,
                        valoracion			    = ?,
                        email     				= ?
						
				    WHERE id_servicios = ?";

			$this->pdo->prepare($sql)
			     ->execute(
				    array(          
						            
				    	$data->nombre,                        
                        $data->tipo,
                        $data->duracion,
                        $data->costo, 
                        $data->estado,
                        $data->valoracion,
						$data->email,
						$data->id
						
						
					)
				);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Registrar(servicios $data)
	{
		try 
		{
		$sql = "INSERT INTO servicios (id_servicios,nombre_servicios,tipo_servicios,duracion_servicios,
		costo_servicios,estado,valoracion,email) 
		        VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		$this->pdo->prepare($sql)
		     ->execute(
				array(
						$data->id, 
                        $data->nombre,                        
                        $data->tipo,
                        $data->duracion,
                        $data->costo, 
                        $data->estado,
                        $data->valoracion,
                        $data->email
                )
			);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
}