using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaLogica_RRHH;
using System.Data.Odbc;
using static Recursos_Humanos.Form1;


namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaReporteVacante : Form
    {
        Logica logic = new Logica();
        ToolTip ayuda_tp = new ToolTip();
        public Frm_consultaReporteVacante()
        {
            InitializeComponent();
        }

        private void Lbl_nombreCuenta_Click(object sender, EventArgs e)
        {

        }

        private void Txt_nombrePerfil_TextChanged(object sender, EventArgs e)
        {

        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            Dgv_encabezado.Rows.Clear();
            Dgv_detalle.Rows.Clear();
            OdbcDataReader mostrarEncabezado = logic.ConsultaLogicaReporteEncabezadoFiltro(Txt_idReporte.Text);
            OdbcDataReader mostrarDetalle = logic.ConsultaLogicaReporteDetalleFiltro(Txt_idReporte.Text);
            try
            {
                while (mostrarEncabezado.Read())
                {
                    Dgv_encabezado.Rows.Add(mostrarEncabezado.GetString(0), mostrarEncabezado.GetString(1), mostrarEncabezado.GetString(2), mostrarEncabezado.GetString(3), mostrarEncabezado.GetString(4), mostrarEncabezado.GetString(5));
                }
                while (mostrarDetalle.Read())
                {
                    Dgv_detalle.Rows.Add(mostrarDetalle.GetString(0), mostrarDetalle.GetString(1), mostrarDetalle.GetString(2), mostrarDetalle.GetString(3), mostrarDetalle.GetString(4), mostrarDetalle.GetString(5), mostrarDetalle.GetString(6), mostrarDetalle.GetString(7), mostrarDetalle.GetString(8));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
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

        public void MostrarReportes()
        {
            Dgv_encabezado.Rows.Clear();
            Dgv_detalle.Rows.Clear();
            OdbcDataReader mostrarEncabezado = logic.ConsultaLogicaReporteEncabezado();
            OdbcDataReader mostrarDetalle = logic.ConsultaLogicaReporteDetalle();
            try
            {
                while (mostrarEncabezado.Read())
                {
                    Dgv_encabezado.Rows.Add(mostrarEncabezado.GetString(0), mostrarEncabezado.GetString(1), mostrarEncabezado.GetString(2), mostrarEncabezado.GetString(3), mostrarEncabezado.GetString(4), mostrarEncabezado.GetString(5));
                }
                while (mostrarDetalle.Read())
                {
                    Dgv_detalle.Rows.Add(mostrarDetalle.GetString(0), mostrarDetalle.GetString(1), mostrarDetalle.GetString(2), mostrarDetalle.GetString(3), mostrarDetalle.GetString(4), mostrarDetalle.GetString(5), mostrarDetalle.GetString(6), mostrarDetalle.GetString(7), mostrarDetalle.GetString(8));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Btn_actualizar_Click(object sender, EventArgs e)
        {
            MostrarReportes();
        }

        private void Frm_consultaReporteVacante_Load(object sender, EventArgs e)
        {
            MostrarReportes();
        }

        private void Txt_idReporte_KeyUp(object sender, KeyEventArgs e)
        {
            Funciones.ValidarCampoEntero((TextBox)sender);
        }
    }
}
