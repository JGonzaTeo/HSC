using CapaDiseno;
using Recursos_Humanos.Mantenimientos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Recursos_Humanos
{
    public partial class MDI_RRHH : Form
    {
        private int childFormNumber = 0;

        public MDI_RRHH()
        {
            InitializeComponent();
        }

        private void ShowNewForm(object sender, EventArgs e)
        {
            Form childForm = new Form();
            childForm.MdiParent = this;
            childForm.Text = "Ventana " + childFormNumber++;
            childForm.Show();
        }

        private void OpenFile(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            openFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (openFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = openFileDialog.FileName;
            }
        }

        private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            saveFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = saveFileDialog.FileName;
            }
        }

        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CutToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void CopyToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void PasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void ToolBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
           // toolStrip.Visible = toolBarToolStripMenuItem.Checked;
        }

        private void StatusBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
         //   statusStrip.Visible = statusBarToolStripMenuItem.Checked;
        }

        private void CascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void TileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void TileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }

        private void ArrangeIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.ArrangeIcons);
        }

        private void CloseAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }

        bool ventanaNomina = false;
        Frm_nominas nomina = new Frm_nominas();
        private void NóminasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_nominas);
            if (ventanaNomina == false || frmC == null)
            {
                if (frmC == null)
                {
                    nomina = new Frm_nominas();
                }

                nomina.MdiParent = this;
                nomina.Show();
                Application.DoEvents();
                ventanaNomina = true;
            }
            else
            {
                nomina.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaCapacitacion = false;
        Frm_capacitaciones capacitacion = new Frm_capacitaciones();
        private void CapacitacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_capacitaciones);
            if (ventanaCapacitacion == false || frmC == null)
            {
                if (frmC == null)
                {
                    capacitacion = new Frm_capacitaciones();
                }

                capacitacion.MdiParent = this;
                capacitacion.Show();
                Application.DoEvents();
                ventanaCapacitacion = true;
            }
            else
            {
                capacitacion.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaEmpleado = false;
        Frm_mantEmpleado empleado = new Frm_mantEmpleado("");
        private void EmpleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantEmpleado);
            if (ventanaEmpleado == false || frmC == null)
            {
                if (frmC == null)
                {
                    empleado = new Frm_mantEmpleado(sUsuario);
                }

                empleado.MdiParent = this;
                empleado.Show();
                Application.DoEvents();
                ventanaEmpleado = true;
            }
            else
            {
                empleado.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaPuesto = false;
        Frm_mantPuesto puesto = new Frm_mantPuesto("");
        private void PuestosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantPuesto);
            if (ventanaPuesto == false || frmC == null)
            {
                if (frmC == null)
                {
                    puesto = new Frm_mantPuesto(sUsuario);
                }

                puesto.MdiParent = this;
                puesto.Show();
                Application.DoEvents();
                ventanaPuesto = true;
            }
            else
            {
                puesto.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaDepartamento = false;
        Frm_mantDepartamento departamento = new Frm_mantDepartamento("");
        private void DepartamentosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantDepartamento);
            if (ventanaDepartamento == false || frmC == null)
            {
                if (frmC == null)
                {
                    departamento = new Frm_mantDepartamento(sUsuario);
                }

                departamento.MdiParent = this;
                departamento.Show();
                Application.DoEvents();
                ventanaDepartamento = true;
            }
            else
            {
                departamento.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }
        string sUsuario;
        private void MDI_RRHH_Load(object sender, EventArgs e)
        {
            frm_login login = new frm_login();
            login.ShowDialog();
            sUsuario = login.obtenerNombreUsuario();
        }
        bool ventanaRolespago = false;

        Frm_mantRolespago rolespago = new Frm_mantRolespago("");
        private void RolesDePagosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantRolespago);
            if (ventanaRolespago == false || frmC == null)
            {
                if (frmC == null)
                {
                    rolespago = new Frm_mantRolespago(sUsuario);
                }

                rolespago.MdiParent = this;
                rolespago.Show();
                Application.DoEvents();
                ventanaRolespago = true;
            }
            else
            {
                rolespago.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }


        bool ventanaConcepto = false;
        Frm_mantConceptos Concepto = new Frm_mantConceptos("");
        private void ConceptosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantConceptos);
            if (ventanaConcepto == false || frmC == null)
            {
                if (frmC == null)
                {
                    Concepto = new Frm_mantConceptos(sUsuario);
                }

                Concepto.MdiParent = this;
                Concepto.Show();
                Application.DoEvents();
                ventanaConcepto = true;
            }
            else
            {
                Concepto.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaPruebas = false;
        Frm_mantPruebas pruebas = new Frm_mantPruebas("");
        private void PruebasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantPruebas);
            if (ventanaPruebas == false || frmC == null)
            {
                if (frmC == null)
                {
                    pruebas = new Frm_mantPruebas(sUsuario);
                }

                pruebas.MdiParent = this;
                pruebas.Show();
                Application.DoEvents();
                ventanaPruebas = true;
            }
            else
            {
                pruebas.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool VentanaArea = false;
        Frm_mantAreas Area = new Frm_mantAreas("");
        private void AreasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantAreas);
            if (VentanaArea == false || frmC == null)
            {
                if (frmC == null)
                {
                    Area = new Frm_mantAreas(sUsuario);
                }

                Area.MdiParent = this;
                Area.Show();
                Application.DoEvents();
                VentanaArea = true;
            }
            else
            {
                Area.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        private void NominasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool ventanaNomina = false;
            Frm_nominas nomina = new Frm_nominas();
             Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_nominas);
                if (ventanaNomina == false || frmC == null)
                {
                    if (frmC == null)
                    {
                        nomina = new Frm_nominas();
                    }

                    nomina.MdiParent = this;
                    nomina.Show();
                    Application.DoEvents();
                    ventanaNomina = true;
                }
                else
                {
                    nomina.WindowState = System.Windows.Forms.FormWindowState.Normal;
                }
            }

        private void CapacitacionesToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            bool ventanaCapacitacion = false;
            Frm_capacitaciones capacitacion = new Frm_capacitaciones();
           
                Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_capacitaciones);
                if (ventanaCapacitacion == false || frmC == null)
                {
                    if (frmC == null)
                    {
                        capacitacion = new Frm_capacitaciones();
                    }

                    capacitacion.MdiParent = this;
                    capacitacion.Show();
                    Application.DoEvents();
                    ventanaCapacitacion = true;
                }
                else
                {
                    capacitacion.WindowState = System.Windows.Forms.FormWindowState.Normal;
                }
            }

        private void ProcesosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        bool ventanaResultado = false;
        Frm_ResultadoBT resultado = new Frm_ResultadoBT("");

        

        private void ResultadosBTToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_ResultadoBT);
            if (ventanaResultado == false || frmC == null)
            {
                if (frmC == null)
                {
                    resultado = new Frm_ResultadoBT(sUsuario);
                }

                resultado.MdiParent = this;
                resultado.Show();
                Application.DoEvents();
                ventanaResultado = true;
            }
            else
            {
                resultado.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }


        private void DesempeñoEmpleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool ventanaDesempeño = false;
            Frm_DesempeñoEmpleado desempeño = new Frm_DesempeñoEmpleado("");

            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_DesempeñoEmpleado);
            if (ventanaDesempeño == false || frmC == null)
            {
                if (frmC == null)
                {
                    desempeño = new Frm_DesempeñoEmpleado(sUsuario);
                }

                desempeño.MdiParent = this;
                desempeño.Show();
                Application.DoEvents();
                ventanaDesempeño = true;
            }
            else
            {
                desempeño.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        
        private void ControlDeAsistenciasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool ventanaDesempeño = false;
            Frm_ControlAsistencias desempeño = new Frm_ControlAsistencias("");

            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_ControlAsistencias);
            if (ventanaDesempeño == false || frmC == null)
            {
                if (frmC == null)
                {
                    desempeño = new Frm_ControlAsistencias(sUsuario);
                }

                desempeño.MdiParent = this;
                desempeño.Show();
                Application.DoEvents();
                ventanaDesempeño = true;
            }
            else
            {
                desempeño.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        private void SolicitudDeEmpleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool ventanaDesempeño = false;
            Frm_SolicitudEmpleado desempeño = new Frm_SolicitudEmpleado("");

            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_SolicitudEmpleado);
            if (ventanaDesempeño == false || frmC == null)
            {
                if (frmC == null)
                {
                    desempeño = new Frm_SolicitudEmpleado(sUsuario);
                }

                desempeño.MdiParent = this;
                desempeño.Show();
                Application.DoEvents();
                ventanaDesempeño = true;
            }
            else
            {
                desempeño.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaPerfil = false;
        Frm_mantPerfil_Profesional perfil = new Frm_mantPerfil_Profesional("");
        private void PerfilProfesionalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantPerfil_Profesional);
            if (ventanaPerfil == false || frmC == null)
            {
                if (frmC == null)
                {
                    perfil = new Frm_mantPerfil_Profesional(sUsuario);
                }

                perfil.MdiParent = this;
                perfil.Show();
                Application.DoEvents();
                ventanaPerfil = true;
            }
            else
            {
                perfil.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaMedios = false;
        Frm_mantMedios_Comunicacion medios = new Frm_mantMedios_Comunicacion("");
        private void MediosComunicacionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantMedios_Comunicacion);
            if (ventanaMedios == false || frmC == null)
            {
                if (frmC == null)
                {
                    medios = new Frm_mantMedios_Comunicacion(sUsuario);
                }

                medios.MdiParent = this;
                medios.Show();
                Application.DoEvents();
                ventanaMedios = true;
            }
            else
            {
                medios.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }

        bool ventanaCurriculum = false;
        Frm_mantCurriculum curriculum = new Frm_mantCurriculum("");
        private void CurriculumsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmC = Application.OpenForms.Cast<Form>().FirstOrDefault(x => x is Frm_mantCurriculum);
            if (ventanaCurriculum == false || frmC == null)
            {
                if (frmC == null)
                {
                    curriculum = new Frm_mantCurriculum(sUsuario);
                }

                curriculum.MdiParent = this;
                curriculum.Show();
                Application.DoEvents();
                ventanaCurriculum = true;
            }
            else
            {
                curriculum.WindowState = System.Windows.Forms.FormWindowState.Normal;
            }
        }
    }
}
