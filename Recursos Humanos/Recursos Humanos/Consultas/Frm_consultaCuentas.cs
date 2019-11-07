using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Recursos_Humanos.Consultas;

namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaCuentas : Form
    {
        public Frm_consultaCuentas()
        {
            InitializeComponent();
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Frm_consultaCuentas_Load(object sender, EventArgs e)
        {

        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            Frm_consultaMostrarCuenta consultaCuenta = new Frm_consultaMostrarCuenta();
            consultaCuenta.ShowDialog();

            if (consultaCuenta.DialogResult == DialogResult.OK)
            {
                Txt_idCuenta.Text = consultaCuenta.Dgv_mostrarCuentas.Rows[consultaCuenta.Dgv_mostrarCuentas.CurrentRow.Index].Cells[0].Value.ToString();
                Txt_nombreCuenta.Text = consultaCuenta.Dgv_mostrarCuentas.Rows[consultaCuenta.Dgv_mostrarCuentas.CurrentRow.Index].Cells[2].Value.ToString();
            }
        }
    }
}
