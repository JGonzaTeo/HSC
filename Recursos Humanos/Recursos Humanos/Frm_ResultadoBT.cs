using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Windows.Forms.DataVisualization.Charting;
using CapaLogica_RRHH;
using System.Data.Odbc;
using static Recursos_Humanos.Form1;

namespace Recursos_Humanos
{
    public partial class Frm_ResultadoBT : Form
    {
        Logica logic = new Logica();
        DataTable DT;
        DataRow DR;

        public Frm_ResultadoBT(string use)
        {
            InitializeComponent();
           
            this.chart1.Palette = ChartColorPalette.SeaGreen;
            this.chart1.Titles.Add("Tipo de prueba");
            btn_guardar.Enabled = false;
            txt_cod.Focus();
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            this.chart1.Series.Clear();
            dgv_Banco.Rows.Clear();
            OdbcDataReader mostrarResultado = logic.ConsultaLogicaResultado(txt_cod.Text);
            DT = logic.ConsultaLogicaGrafica(txt_cod.Text);
            string nom1;
            try
            {
                btn_guardar.Enabled = true;
                while (mostrarResultado.Read())
                {
                    dgv_Banco.Rows.Add(mostrarResultado.GetString(0), mostrarResultado.GetString(1), mostrarResultado.GetString(2));
                    nom1 = mostrarResultado.GetString(0) + " " + mostrarResultado.GetString(1);
                    this.chart1.Titles.Clear();
                    this.chart1.Titles.Add("Tipo de prueba");
                    this.chart1.Titles.Add(nom1);
                    
                }
                if (DT.Rows.Count > 0)
                {
                    for (int i = 0; i < DT.Rows.Count; i++)
                    {
                        DR = DT.Rows[i];
                        Series series = this.chart1.Series.Add(DR.ItemArray[0].ToString());
                        series.Points.Add(Convert.ToDouble(DR.ItemArray[1]));
                    }
                }

                chart1.Update();

            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Btn_guardar_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            saveFileDialog1.InitialDirectory = Convert.ToString(Environment.SpecialFolder.MyDocuments);
            saveFileDialog1.Filter = "Imagen | *.jpg";
            saveFileDialog1.FilterIndex = 1;

            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                Console.WriteLine(saveFileDialog1.FileName);//Do what you want here
                this.chart1.SaveImage(saveFileDialog1.FileName, ChartImageFormat.Png);
                MessageBox.Show("Imagen guardada correctamente");
                txt_cod.Focus();
            }
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Txt_cod_KeyUp(object sender, KeyEventArgs e)
        {
            Funciones.ValidarCampoEntero((TextBox)sender);
        }

        private void Frm_ResultadoBT_Load(object sender, EventArgs e)
        {
            txt_cod.Focus();
        }
    }
}
