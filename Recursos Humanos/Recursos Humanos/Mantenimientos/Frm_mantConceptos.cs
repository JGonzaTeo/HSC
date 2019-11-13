﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDeDiseno;
using CapaDiseno;
using CapaLogica_RRHH;

namespace Recursos_Humanos.Mantenimientos
{
    public partial class Frm_mantConceptos : Form
    {

        ToolTip ayuda_tp = new ToolTip();
        string sususario;
        Logica lo = new Logica();
        string scampo;
        public Frm_mantConceptos(string user)
        {
            InitializeComponent();
            sususario = user;
            string[] alias = { "Codigo Concepto:", "Nombre:", "Naturaleza:", "Valor:","Estado" };
            navegador1.asignarAlias(alias);
            navegador1.asignarSalida(this);
            Color rrhh = Color.FromArgb(128, 173, 239);
            navegador1.asignarColorFondo(rrhh);
            navegador1.asignarColorFuente(Color.Black);
            navegador1.asignarAyuda("402");
            //navegador1.asignarReporte("4");
            navegador1.asignarTabla("tbl_conceptos");
            navegador1.asignarNombreForm("Conceptos");
            scampo = lo.siguiente("tbl_conceptos", "KidConcepto");
            Txt_Sig.Text = scampo;
            Txt_Sig.Enabled = false;
            ayuda_tp.IsBalloon = true;
            
        }

        private void Frm_mantConceptos_Load(object sender, EventArgs e)
        {
            string aplicacionActiva = "1";
            navegador1.ObtenerIdUsuario(sususario);
            navegador1.botonesYPermisosInicial(sususario, aplicacionActiva);
            navegador1.ObtenerIdAplicacion(aplicacionActiva);
            scampo = lo.siguiente("tbl_conceptos", "KidConcepto");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_MouseHover(object sender, EventArgs e)
        {
            scampo = lo.siguiente("tbl_conceptos", "KidConcepto");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_Load(object sender, EventArgs e)
        {

        }

        private void Button1_Click(object sender, EventArgs e)
        {
            
            Frm_ConceptoEmpleado conemp = new Frm_ConceptoEmpleado();
            //conemp.varf2 = KidConcepto.Text;         
            conemp.Show();
            
        }
    }
}
