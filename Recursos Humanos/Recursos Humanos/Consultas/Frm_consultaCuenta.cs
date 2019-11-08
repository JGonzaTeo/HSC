using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaCuenta : Form
    {
        public Frm_consultaCuenta()
        {
            InitializeComponent();
        }

        private void Frm_consultaCuenta_Load(object sender, EventArgs e)
        {

        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            Frm_consultaMostrarCuenta consultaMostrarCuenta = new Frm_consultaMostrarCuenta();
            consultaMostrarCuenta.ShowDialog();

            if (consultaMostrarCuenta.DialogResult == DialogResult.OK)
            {
                Txt_idCuenta.Text = consultaMostrarCuenta.Dgv_mostrarCuentas.Rows[consultaMostrarCuenta.Dgv_mostrarCuentas.CurrentRow.Index].Cells[0].Value.ToString();
                Txt_nombreCuenta.Text = consultaMostrarCuenta.Dgv_mostrarCuentas.Rows[consultaMostrarCuenta.Dgv_mostrarCuentas.CurrentRow.Index].Cells[2].Value.ToString();
            }
        }

        private void Btn_aceptar_Click(object sender, EventArgs e)
        {
            if ( (String.IsNullOrEmpty(Txt_idCuenta.Text) )  || ( String.IsNullOrEmpty(Txt_nombreCuenta.Text) ) || ( String.IsNullOrEmpty(Txt_debe.Text) ) || ( String.IsNullOrEmpty(Txt_haber.Text) ) )
            {
                return;
            }
            else
            {
                DialogResult = DialogResult.OK;
                Close();
            }
        }
    }
}
