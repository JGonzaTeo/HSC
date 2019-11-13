using CapaLogica_RRHH;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Recursos_Humanos
{
    public partial class Frm_nominas : Form
    {
        Logica logic = new Logica();
        public Frm_nominas()
        {
            InitializeComponent();
        }

        private void Frm_nominas_Load(object sender, EventArgs e)
        {
            OdbcDataReader mostrarResultado = logic.Consultadetallenominal();

            try
            {
                while (mostrarResultado.Read())
                {
                    dataGridView1.Rows.Add(mostrarResultado.GetString(0), mostrarResultado.GetString(1), mostrarResultado.GetString(2), mostrarResultado.GetString(3), mostrarResultado.GetString(4), mostrarResultado.GetString(5), mostrarResultado.GetString(6), mostrarResultado.GetString(7));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            string fecha1 = dateTimePicker1.Value.ToString("yyyy-MM-dd");
            string fecha2 = dateTimePicker1.Value.ToString("yyyy-MM-dd");
            //MessageBox.Show(fecha1);
            //MessageBox.Show(fecha2);
            string consultanomina = "insert into tbl_nominasencabezado values ('"+ Txt_idnomina.Text + "','" + Txt_idempleado.Text + "','" + Txt_observacion.Text + "','" + Txt_totalnominal.Text + "','"+fecha1+ "','" + fecha2+ "','" + fecha1 + "','1')";
            logic.nuevoQuery(consultanomina);
            MessageBox.Show("Nomina Gnerada con exito");
        }
    }
}
