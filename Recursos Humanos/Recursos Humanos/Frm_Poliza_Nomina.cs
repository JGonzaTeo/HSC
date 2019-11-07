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
using CapaLogica_RRHH;

namespace Recursos_Humanos
{
    public partial class Frm_Poliza_Nomina : Form
    {

        string usuario;
        ToolTip ayuda_tp = new ToolTip();
        Logica logic = new Logica();
        public Frm_Poliza_Nomina(string usuario)
        {
            InitializeComponent();
            this.usuario = usuario;
            ayuda_tp.IsBalloon = true;
            ayuda_tp.SetToolTip(Btn_consultaNomina,"Ver Nominas");
            ayuda_tp.SetToolTip(Btn_aceptar, "Aceptar cambios");
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void ConsultarCuentas(object sender, DataGridViewCellEventArgs e)
        {
            Frm_consultaCuentas consultaCuentas = new Frm_consultaCuentas();
            consultaCuentas.Show();
        }

        private void Btn_consultaNomina_Click(object sender, EventArgs e)
        {
            Frm_consultaNomina consultaNomina = new Frm_consultaNomina();
            consultaNomina.ShowDialog();

            if(consultaNomina.DialogResult == DialogResult.OK)
            {
                Txt_idNomina.Text = consultaNomina.Dgv_consultaNomina.Rows[consultaNomina.Dgv_consultaNomina.CurrentRow.Index].Cells[0].Value.ToString();
            }
        }

        private void Frm_Poliza_Nomina_Load(object sender, EventArgs e)
        {
            DataTable dtTipoPoliza = logic.ConsultaLogicaTipoPoliza();

            foreach (DataRow row in dtTipoPoliza.Rows)
            {
                Cmbx_tipoPoliza.Items.Add(row[0].ToString());
            }
        }
    }
}
