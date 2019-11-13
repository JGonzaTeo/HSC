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
            //1ERA FASE:
            double total = 0;
            double sumatotal = 0;
            double totalresta = 0;

            double totalbruto = 0;
            foreach (DataGridViewRow row in dataGridView1.Rows)
            {

                string per_ded = Convert.ToString(row.Cells["Column7"].Value);
                string sueldo = Convert.ToString(row.Cells["Column2"].Value);
                if (per_ded == "0") 
                {

                    total += Convert.ToDouble(row.Cells["Column6"].Value);
                    textBox4.Text = Convert.ToString(total);
                    sumatotal += Convert.ToDouble(row.Cells["Column2"].Value);
                    textBox5.Text = Convert.ToString(sumatotal);


                }
                else
                {
                    totalresta += Convert.ToDouble(row.Cells["Column6"].Value);
                    textBox4.Text = Convert.ToString(totalresta);
                    sumatotal += Convert.ToDouble(row.Cells["Column2"].Value);
                    textBox5.Text = Convert.ToString(sumatotal);
                }
                
            }
             totalbruto= Convert.ToDouble(textBox4.Text) + Convert.ToDouble(textBox5.Text);
            textBox4.Text = Convert.ToString(totalbruto);
            // textBox5.Text = textBox4.Text+Convert.ToString(total); 
            Txt_totalnominal.Text = textBox5.Text;



            string fecha1 = dateTimePicker1.Value.ToString("yyyy-MM-dd");
            string fecha2 = dateTimePicker1.Value.ToString("yyyy-MM-dd");
            //MessageBox.Show(fecha1);
            //MessageBox.Show(fecha2);
            string consultanomina = "insert into tbl_nominasencabezado values ('"+ Txt_idnomina.Text + "','" + Txt_idempleado.Text + "','" + Txt_observacion.Text + "','" + Txt_totalnominal.Text + "','"+fecha1+ "','" + fecha2+ "','" + fecha1 + "','1')";
            logic.nuevoQuery(consultanomina);
            MessageBox.Show("Nomina Generada con exito");
            
        }
    }
}
