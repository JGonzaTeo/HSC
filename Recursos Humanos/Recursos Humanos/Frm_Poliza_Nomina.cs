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
        public static int contador_fila = 0;
        public static double totalDebe = 0;
        public static double totalHaber = 0;
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
            Frm_consultaMostrarCuenta consultaCuentas = new Frm_consultaMostrarCuenta();
            consultaCuentas.ShowDialog();

            if(consultaCuentas.DialogResult == DialogResult.OK)
            {
                bool existe = false;
                int num_fila = 0; 

                if(contador_fila == 0)
                {
                    Dgv_detallePoliza.Rows.Add(consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[0].Value.ToString(),
                                               consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[2].Value.ToString(),
                                               consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[4].Value.ToString(),
                                               consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[5].Value.ToString());
                    contador_fila++;
                }
                else
                {
                    Lbl_codigoCuenta.Text = consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[0].Value.ToString(); 
                    
                    foreach (DataGridViewRow Fila in Dgv_detallePoliza.Rows)
                    {
                        try
                        {
                            if (Fila.Cells[0].Value.ToString() == Lbl_codigoCuenta.Text)
                            {
                                existe = true;
                                num_fila = Fila.Index;
                            }
                        }
                        catch(Exception err)
                        {
                            Console.WriteLine(err.Message);
                        }
                    }
                    
                    //CODIGO QUE SE EJECUTA CUANDO SE HA AGREGADO MAS DE UNA CUENTA
                    if(existe == true)
                    {
                        MessageBox.Show("Esta Cuenta ya ha sido agregada");
                    } else
                    {
                        Dgv_detallePoliza.Rows.Add(consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[0].Value.ToString(),
                                              consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[2].Value.ToString(),
                                              consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[4].Value.ToString(),
                                              consultaCuentas.Dgv_mostrarCuentas.Rows[consultaCuentas.Dgv_mostrarCuentas.CurrentRow.Index].Cells[5].Value.ToString());
                        contador_fila++;
                    }
                }

                totalDebe = 0;
                totalHaber = 0;
                foreach (DataGridViewRow Fila in Dgv_detallePoliza.Rows)
                {
                    totalDebe += Convert.ToDouble(Fila.Cells[2].Value);
                    totalHaber += Convert.ToDouble(Fila.Cells[3].Value);
                }
                Txt_sumaDebe.Text = totalDebe.ToString();
                Txt_sumaHaber.Text = totalHaber.ToString();
            }
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

        private void Btn_eliminarCuenta_Click(object sender, EventArgs e)
        {
            if(contador_fila > 0)
            {
                try
                {
                    totalDebe = totalDebe - (Convert.ToDouble(Dgv_detallePoliza.Rows[Dgv_detallePoliza.CurrentRow.Index].Cells[2].Value));
                    totalHaber = totalHaber - (Convert.ToDouble(Dgv_detallePoliza.Rows[Dgv_detallePoliza.CurrentRow.Index].Cells[3].Value));
                    Txt_sumaDebe.Text = totalDebe.ToString();
                    Txt_sumaHaber.Text = totalHaber.ToString();

                    Dgv_detallePoliza.Rows.RemoveAt(Dgv_detallePoliza.CurrentRow.Index);

                    contador_fila--;
                }
                catch(Exception err)
                {
                    Console.WriteLine(err.Message);
                }
            }
            else
            {
                MessageBox.Show("No se han agregado cuentas contables.");
            }
        }
    }
}
