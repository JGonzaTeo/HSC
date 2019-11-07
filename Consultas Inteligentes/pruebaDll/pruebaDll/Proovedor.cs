using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pruebaDll
{
    public partial class Proovedor : Form
    {
        string usuario = "";
        public Proovedor(string user)
        {
            InitializeComponent();
            string[] alias = { "kproveedor", "nombre", "telefono", "estado" };
            navegador1.asignarAlias(alias);
            navegador1.asignarSalida(this);
            navegador1.asignarColorFondo(Color.DarkGreen);
            navegador1.asignarColorFuente(Color.DarkCyan);
            navegador1.asignarAyuda("2");
            navegador1.asignarTabla("tbl_proveedor");
            navegador1.asignarNombreForm("Proveedor");
        }

        private void Proovedor_Load(object sender, EventArgs e)
        {
            string aplicacionActiva = "1";
            navegador1.ObtenerIdUsuario(usuario);
            navegador1.botonesYPermisosInicial(usuario, aplicacionActiva);
            navegador1.ObtenerIdAplicacion(aplicacionActiva);
        }
    }
}
