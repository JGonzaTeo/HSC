using CapaLogica_RRHH;
using Recursos_Humanos.Mantenimientos;
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
    public partial class Frm_ConceptoEmpleado : Form
    {
        Logica logic = new Logica();
        public string varf2; //variable para pasar informacion

        public Frm_ConceptoEmpleado()
        {
            InitializeComponent();
            label3.Visible = false;
            label4.Visible = false;
            label5.Visible = false;
            label6.Visible = false;
            label7.Visible = false;
            label8.Visible = false;
            label9.Visible = false;

            label3.Visible = false;
            Txt_Idconcepto.Visible = false;
            Txt_Valor.Visible = false;
            Txt_Naturaleza.Visible = false;
            Txt_idempleado.Visible = false;
            Txt_Sueldo.Visible = false;
            Txt_Total.Visible = false;
            textBox5.Visible = false;
                

            
        }

        private void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true)
            {
                foreach (DataGridViewRow row in dataGridView1.Rows)
                {


                    row.Cells["Column5"].Value = true;

                }


            }
            else
            {
                foreach (DataGridViewRow row in dataGridView1.Rows)
                {


                    row.Cells["Column5"].Value = false;
                }
            }
        }

        private void Frm_ConceptoEmpleado_Load(object sender, EventArgs e)
        {

            string scampo1 = logic.obtencionultimo("tbl_conceptos", "KidConcepto");
            Txt_Idconcepto.Text = scampo1;
            string scampo2 = logic.obtencionultimo("tbl_conceptos", "valor");
            Txt_Valor.Text = scampo2;
            string scampo3 = logic.obtencionultimo("tbl_conceptos", "debe_haber");
            Txt_Naturaleza.Text = scampo3;

            OdbcDataReader mostrarResultado = logic.Consutaempleadonominal();

            try
            {
                while (mostrarResultado.Read())
                {
                    dataGridView1.Rows.Add(mostrarResultado.GetString(0), mostrarResultado.GetString(1), mostrarResultado.GetString(2), mostrarResultado.GetString(3));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

        }

        private void Button1_Click(object sender, EventArgs e)
        {
            int indice = 0;

            foreach (DataGridViewRow row in dataGridView1.Rows)
            {

                int siguiente = indice + 1;

                if (indice != dataGridView1.Rows.Count - 1)
                {
                    DataGridViewCheckBoxCell cellSelecion = row.Cells["Column5"] as DataGridViewCheckBoxCell;
                    if (Convert.ToBoolean(cellSelecion.Value) == true)
                    {
                       // MessageBox.Show("se agrego a un empleado");
                        Txt_Sueldo.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                      
                        Txt_idempleado.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                      // MessageBox.Show(Txt_Sueldo.Text);
                        double sueldocalculado = Convert.ToDouble(Txt_Sueldo.Text);
                        double valorcalculado = Convert.ToDouble(Txt_Valor.Text);
                        //int respuesta = Convert.ToInt32(Txt_Sueldo.Text) * Convert.ToInt32(Txt_Valor.Text);
                        double respuesta = sueldocalculado * valorcalculado;
                        Txt_Total.Text = Convert.ToString(respuesta);
                        dataGridView1.CurrentCell = dataGridView1.Rows[siguiente].Cells[dataGridView1.CurrentCell.ColumnIndex];
                        string consultaempconta = "insert into tbl_empcontable values (0,'" + Txt_idempleado.Text + "',' 30 ','0','" + Txt_Idconcepto.Text + "','" + Txt_Total.Text + "','" + Txt_Naturaleza.Text + "','0','0')";
                        logic.nuevoQuery(consultaempconta);
                        //MessageBox.Show(consultaempconta);

                       



                    }
                    else
                    {
                        //MessageBox.Show("No esta agregando a ningun empleado");
                        dataGridView1.CurrentCell = dataGridView1.Rows[siguiente].Cells[dataGridView1.CurrentCell.ColumnIndex];



                    }

                    indice++;

                }

            }
            MessageBox.Show("Empleados asignados");
            this.Close();
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
