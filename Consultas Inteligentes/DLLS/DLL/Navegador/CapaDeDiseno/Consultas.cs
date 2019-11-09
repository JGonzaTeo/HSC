using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ConsultasInteligentes;


namespace CapaDeDiseno
{
    
    public partial class Consultas : Form
    {
        string user = "";
        public Consultas(string usuario)
        {
            user = usuario;
            InitializeComponent();
        }

        private void Consultas_Load(object sender, EventArgs e)
        {
            ComponenteConsultas nuevo = new ComponenteConsultas();
            nuevo.ObtenerUsuario(user);
            Point p = new Point(0,0);
            nuevo.Location = p;
            this.Controls.Add(nuevo);
        }
    }
}
