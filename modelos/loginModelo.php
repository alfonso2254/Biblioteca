<?php 
	if ($peticionAjax) {
		require_once "../core/mainModel.php";
	} else {
		require_once "./core/mainModel.php";
	}

	class loginModelo extends mainModel{

		protected function iniciar_session_modelo($datos){
			$sql=mainModel::conectar()->prepare("SELECT * FROM cuenta WHERE CuentaUsuario=:Usuario AND CuentaClave=:Clave AND CuentaEstado='Activo'");
			$sql->bindParam(':Usuario',$datos['Usuario']);
			$sql->bindParam(':Clave',$datos['Clave']);
			$sql->execute();
			return $sql;

		}
	}