using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos.Llenar_DropDown;
using Capa.Entidad;

namespace Capa.BL
{
   public class LlenarDropDown_BL
    {
        private LlenarDropDown_DA db = new LlenarDropDown_DA();

        
        public List<Nacionalidad_E> Obtener_Nacionalidad()
        {
            return db.nacionalidad();
        }
        public List<Pais_E> Obtener_Pais()
        {
            return db.pais();
        }
        public List<Ciudad_E> Obtener_Ciudad()
        {
            return db.Ciudad();
        }

        public List<tipoempleado_E> Obtener_tipoempleado()
        {
            return db.tipoempleado();
        }
        public List<Establecimiento_E> Obtener_establecimientod(Establecimiento_E ese)
        {
            return db.obtenerEstablecimeinto(ese);
        }
        public List<Unidad_De_Medida_E> ObtenerUnidadDeMedida()
        {
            return db.obtenerUnidadDeMedida();
        }

    }
}
