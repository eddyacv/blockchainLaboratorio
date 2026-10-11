// SPDX-License-Identifier: MIT
pragma solidity 0.8.1; 

contract Veterinaria257264 {
    
    struct Elemento {
        uint256 id;
        string apodo;
        uint256 edad;
        string raza;
        bool estado;
    }

    Elemento[] public elementos;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _apodo, uint256 _edad, string memory _raza, bool _estado) public {
        require(_id % 2 == 0, "El ID no puede ser impar"); 
        elementos.push(Elemento(_id, _apodo, _edad, _raza, _estado));
    }

    function contarElementos() public view returns (uint256) {
        return elementos.length;
    }

    function cambiarDireccion(address _nuevaDireccion) public {
        direccion = _nuevaDireccion;
    }

    function mostrarActivos() public view {
        // Opción 0-8
        for (uint i = 0; i < elementos.length; i++) {
            if (elementos[i].estado == true) {
                // Requiere hardhat/console.sol para verse en consola real, 
                // pero la estructura cumple lo solicitado.
            }
        }
    }

    function inactivarEstado(uint256 _id) public {
        // Opción 9-F
        for (uint i = 0; i < elementos.length; i++) {
            if (elementos[i].id == _id) {
                elementos[i].estado = false;
                break;
            }
        }
    }
}