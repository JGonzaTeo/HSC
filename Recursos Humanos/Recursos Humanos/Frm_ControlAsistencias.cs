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
    public partial class Frm_ControlAsistencias : Form
    {
        Logica logic = new Logica();
        DataTable DT;
        DataRow DR;
        public Frm_ControlAsistencias(string use)
        {
            InitializeComponent();
            txt_nom.Focus();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            chart1.Series.Clear();
            chart1.Legends.Clear();

            chart1.Legends.Add("Asistencias");
            chart1.Legends[0].LegendStyle = LegendStyle.Table;
            chart1.Legends[0].Docking = Docking.Bottom;
            chart1.Legends[0].Alignment = StringAlignment.Center;
            chart1.Legends[0].Title = "Control de Asistencias";
            chart1.Legends[0].BorderColor = Color.Black;

            //Add a new chart-series
            string seriesname = "MySeriesName";
            chart1.Series.Add(seriesname);
            //set the chart-type to "Pie"
            chart1.Series[seriesname].ChartType = SeriesChartType.Pie;
            string mes, cantidad;
            OdbcDataReader mostrarResultado = logic.ConsultaLogicaGraficaAsistencia(txt_nom.Text);

            try
            {
                btn_guardar.Enabled = true;
                txt_nom.Focus();
                while (mostrarResultado.Read())
                {
                    cantidad = mostrarResultado.GetString(0);
                    mes = mostrarResultado.GetString(1);
                    chart1.Series[seriesname].Points.AddXY(mes, cantidad);
                    chart1.Series[seriesname].IsValueShownAsLabel = true;

                }

            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                txt_nom.Focus();
            }

        }

        private void Txt_nom_KeyUp(object sender, KeyEventArgs e)
        {
            Funciones.ValidarCampoEntero((TextBox)sender);
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
                txt_nom.Focus();
            }
        }
    }
}
