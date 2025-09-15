object daenerys{
    const artefactos = #{} //artefactos es una coleccion
    var capacidad = 2
    const log = []

    method encontrar(artefacto){
        log.add(artefacto) //agrego artefacto a la lista. Agrega tanto los que va a agarrar como los que no. Es por eso que lo hago antes de entrar al condicional.
        if (artefactos.size() < capacidad){ //si la capacidad es mayor a 2 va a poder agarrar artefactos
            artefactos.add(artefacto)
        }
    }


    method llegarARocadragon() {
        rocadragon.almacenar(artefactos)
        artefactos.clear() //Vacia los artefactos que lleva Daenerys
    }


    method artefactosEncima() = artefactos //Artefactos que trae ella consigo

    method artefactosTotal() = artefactos.union(rocadragon.artefactosAlmacenados()) //junto todos los elementos que tiene ella y los que tiene en su fortaleza [ver si esta bien usar UNION]

    method poseeArticuloEspecial(artefactoEspecial) = self.artefactosTotal().contains(artefactoEspecial)

    method log() { //muestro todo lo que tiene el log
        return log

    }
}


object rocadragon {
    const arconRocadragon = #{}
    
    method almacenar(artefactosNuevos) {
        arconRocadragon.addAll(artefactosNuevos) //agrego al arcon todos los artefactos que trae consigo Daenerys
    }
    
    method artefactosAlmacenados() = arconRocadragon //me va a listar todods los elementos que tiene 
    //method cantidadArtefactos() = arconRocadragon.size()


}




class Artefacto {
    var nombre

    method nombre() = nombre
}

object espada inherits Artefacto {
    nombre = "Espada de Dragón"
}

object libro inherits Artefacto {
    nombre = "Libro de Magia Ancestral"
}

object collar inherits Artefacto {
    nombre = "Collar de Fuego"
}

object armadura inherits Artefacto {
    nombre = "Armadura de Acero Valyrio"
}