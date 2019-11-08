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
using System.Data.Odbc;

namespace Recursos_Humanos
{
    public partial class Frm_SolicitudEmpleado : Form
    {
        Logica logic = new Logica();

        public Frm_SolicitudEmpleado(string use)
        {
            InitializeComponent();
            txt_idCreador.Enabled = false;
            txt_idPerfil.Enabled = false;
            txt_medio.Enabled = false;
            dtp_fechaS.Format = DateTimePickerFormat.Custom;
            dtp_fechaS.CustomFormat = "yyyy/MM/dd";
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_buscarEmpleado_Click(object sender, EventArgs e)
        {
            Frm_consultaCreador consultaCreador = new Frm_consultaCreador();
            consultaCreador.ShowDialog();

            if (consultaCreador.DialogResult == DialogResult.OK)
            {
                txt_idCreador.Text = consultaCreador.Dgv_consultaCreador.Rows[consultaCreador.Dgv_consultaCreador.CurrentRow.Index].Cells[0].Value.ToString();
                dtp_fechaS.Enabled = true;
            }
        }

        private void Btn_buscarPerfil_Click(object sender, EventArgs e)
        {
            Frm_consultaPerfil consultaPerfil = new Frm_consultaPerfil();
            consultaPerfil.ShowDialog();

            if (consultaPerfil.DialogResult == DialogResult.OK)
            {
                txt_idPerfil.Text = consultaPerfil.Dgv_consultaPerfil.Rows[consultaPerfil.Dgv_consultaPerfil.CurrentRow.Index].Cells[0].Value.ToString();
                cmb_TipoContratacion.Enabled = true;
            }
        }

        private void Btn_buscarMedio_Click(object sender, EventArgs e)
        {
            Frm_consultaMedio consultaMedio = new Frm_consultaMedio();
            consultaMedio.ShowDialog();

            if (consultaMedio.DialogResult == DialogResult.OK)
            {
                txt_medio.Text = consultaMedio.Dgv_consultaMedios.Rows[consultaMedio.Dgv_consultaMedios.CurrentRow.Index].Cells[0].Value.ToString();
                txt_razon.Enabled = true;
            }
        }

        private void Btn_guardar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txt_idCreador.Text) || string.IsNullOrEmpty(txt_idPerfil.Text) || string.IsNullOrEmpty(txt_cualidades.Text) || string.IsNullOrEmpty(txt_razon.Text) || string.IsNullOrEmpty(txt_medio.Text) || string.IsNullOrEmpty(cmb_TipoContratacion.Text))
                MessageBox.Show("Un campo esta vacio, por favor llenelo para poder continuar.");
            else
            {
                string fec = dtp_fechaS.Value.ToString("yyyy/MM/dd");
               
                Console.WriteLine(fec);
                //aqui pondrias el codigo de guardar
                //MessageBox.Show("Se van a guardar jeje");
                OdbcDataReader mostrarEmpleado = logic.InsertarReporte(txt_idCreador.Text, txt_idPerfil.Text, fec, cmb_TipoContratacion.SelectedItem.ToString(), txt_medio.Text, txt_razon.Text, txt_cualidades.Text);
                //(idEmpleado, idPuesto, fecha, tipo, medio,razon, descripcion); año/mes/dia
                MessageBox.Show("Se ha guardado el reporte.");
            }
        }
    

        private void Frm_SolicitudEmpleado_Load(object sender, EventArgs e)
        {
            dtp_fechaS.Enabled = false;
            txt_idPerfil.Enabled = false;
            txt_medio.Enabled = false;
            cmb_TipoContratacion.Enabled = false;
            txt_razon.Enabled = false;
            txt_cualidades.Enabled = false;
            btn_guardar.Enabled = false;
            btn_buscarMedio.Enabled = false;
            btn_buscarPerfil.Enabled = false;
        }

        private void Dtp_fechaS_ValueChanged(object sender, EventArgs e)
        {
            
            btn_buscarPerfil.Enabled = true;
        }

        private void Cmb_TipoContratacion_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            btn_buscarMedio.Enabled = true;
            Console.WriteLine(cmb_TipoContratacion.SelectedItem.ToString());
        }

        private void Txt_razon_TextChanged(object sender, EventArgs e)
        {
            txt_cualidades.Enabled = true;
        }

        private void Txt_cualidades_TextChanged(object sender, EventArgs e)
        {
            btn_guardar.Enabled = true;
        }
    }
}
