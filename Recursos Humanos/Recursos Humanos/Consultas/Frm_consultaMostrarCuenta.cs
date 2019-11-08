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

namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaMostrarCuenta : Form
    {
        Logica logic = new Logica();
        ToolTip ayuda_tp = new ToolTip();
        public Frm_consultaMostrarCuenta()
        {
            InitializeComponent();
            ayuda_tp.IsBalloon = true;
            ayuda_tp.SetToolTip(Btn_buscar, "Buscar Cuenta");
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        public void MostrarCuentas()
        {
            Dgv_mostrarCuentas.Rows.Clear();
            OdbcDataReader mostrarCuentas = logic.ConsultaLogicaCuentas();
            try
            {
                while (mostrarCuentas.Read())
                {
                    Dgv_mostrarCuentas.Rows.Add(mostrarCuentas.GetString(0), mostrarCuentas.GetString(1), mostrarCuentas.GetString(3), mostrarCuentas.GetString(4));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        public void MostrarCuentasConFiltro()
        {
            Dgv_mostrarCuentas.Rows.Clear();
            OdbcDataReader mostrarCuentasFiltro = logic.ConsultaLogicaCuentasFiltro(Txt_nombreCuenta.Text);
            try
            {
                while (mostrarCuentasFiltro.Read())
                {
                    Dgv_mostrarCuentas.Rows.Add(mostrarCuentasFiltro.GetString(0), mostrarCuentasFiltro.GetString(1), mostrarCuentasFiltro.GetString(3), mostrarCuentasFiltro.GetString(4));
                }
            }
            catch(Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Frm_consultaMostrarCuenta_Load(object sender, EventArgs e)
        {
            MostrarCuentas();
        }

        private void Btn_actualizar_Click(object sender, EventArgs e)
        {
            MostrarCuentas();
        }

        private void Btn_seleccionar_Click(object sender, EventArgs e)
        {
            if (Dgv_mostrarCuentas.Rows.Count == 0)
            {
                return;
            }
            else
            {
                DialogResult = DialogResult.OK;
                Close();
            }
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            MostrarCuentasConFiltro();
        }

        private void Txt_nombreCuenta_TextChanged(object sender, EventArgs e)
        {
            MostrarCuentasConFiltro();
        }
    }
}
