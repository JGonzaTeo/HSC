namespace Recursos_Humanos
{
    partial class MDI_RRHH
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.inicioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.empleadosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.puestosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.departamentosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.conceptosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rolesDePagosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.areasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pruebasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.procesosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nominasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.capacitacionesToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.herramientasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ayudaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.resultadosBIToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.polizasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip.SuspendLayout();
            this.statusStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip
            // 
            this.menuStrip.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inicioToolStripMenuItem,
            this.mantenimientosToolStripMenuItem,
            this.procesosToolStripMenuItem,
            this.reportesToolStripMenuItem,
            this.herramientasToolStripMenuItem,
            this.ayudaToolStripMenuItem,
            this.resultadosBIToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(5, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(843, 28);
            this.menuStrip.TabIndex = 0;
            this.menuStrip.Text = "MenuStrip";
            // 
            // inicioToolStripMenuItem
            // 
            this.inicioToolStripMenuItem.Name = "inicioToolStripMenuItem";
            this.inicioToolStripMenuItem.Size = new System.Drawing.Size(59, 24);
            this.inicioToolStripMenuItem.Text = "Inicio";
            // 
            // mantenimientosToolStripMenuItem
            // 
            this.mantenimientosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.empleadosToolStripMenuItem,
            this.puestosToolStripMenuItem,
            this.departamentosToolStripMenuItem,
            this.conceptosToolStripMenuItem,
            this.rolesDePagosToolStripMenuItem,
            this.areasToolStripMenuItem,
            this.pruebasToolStripMenuItem});
            this.mantenimientosToolStripMenuItem.Name = "mantenimientosToolStripMenuItem";
            this.mantenimientosToolStripMenuItem.Size = new System.Drawing.Size(130, 24);
            this.mantenimientosToolStripMenuItem.Text = "Mantenimientos";
            // 
            // empleadosToolStripMenuItem
            // 
            this.empleadosToolStripMenuItem.Name = "empleadosToolStripMenuItem";
            this.empleadosToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.empleadosToolStripMenuItem.Text = "Empleados";
            this.empleadosToolStripMenuItem.Click += new System.EventHandler(this.EmpleadosToolStripMenuItem_Click);
            // 
            // puestosToolStripMenuItem
            // 
            this.puestosToolStripMenuItem.Name = "puestosToolStripMenuItem";
            this.puestosToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.puestosToolStripMenuItem.Text = "Puestos";
            this.puestosToolStripMenuItem.Click += new System.EventHandler(this.PuestosToolStripMenuItem_Click);
            // 
            // departamentosToolStripMenuItem
            // 
            this.departamentosToolStripMenuItem.Name = "departamentosToolStripMenuItem";
            this.departamentosToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.departamentosToolStripMenuItem.Text = "Departamentos";
            this.departamentosToolStripMenuItem.Click += new System.EventHandler(this.DepartamentosToolStripMenuItem_Click);
            // 
            // conceptosToolStripMenuItem
            // 
            this.conceptosToolStripMenuItem.Name = "conceptosToolStripMenuItem";
            this.conceptosToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.conceptosToolStripMenuItem.Text = "Conceptos";
            this.conceptosToolStripMenuItem.Click += new System.EventHandler(this.ConceptosToolStripMenuItem_Click);
            // 
            // rolesDePagosToolStripMenuItem
            // 
            this.rolesDePagosToolStripMenuItem.Name = "rolesDePagosToolStripMenuItem";
            this.rolesDePagosToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.rolesDePagosToolStripMenuItem.Text = "Roles de pagos";
            this.rolesDePagosToolStripMenuItem.Click += new System.EventHandler(this.RolesDePagosToolStripMenuItem_Click);
            // 
            // areasToolStripMenuItem
            // 
            this.areasToolStripMenuItem.Name = "areasToolStripMenuItem";
            this.areasToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.areasToolStripMenuItem.Text = "Areas";
            this.areasToolStripMenuItem.Click += new System.EventHandler(this.AreasToolStripMenuItem_Click);
            // 
            // pruebasToolStripMenuItem
            // 
            this.pruebasToolStripMenuItem.Name = "pruebasToolStripMenuItem";
            this.pruebasToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.pruebasToolStripMenuItem.Text = "Pruebas";
            this.pruebasToolStripMenuItem.Click += new System.EventHandler(this.PruebasToolStripMenuItem_Click);
            // 
            // procesosToolStripMenuItem
            // 
            this.procesosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nominasToolStripMenuItem,
            this.capacitacionesToolStripMenuItem1,
            this.polizasToolStripMenuItem});
            this.procesosToolStripMenuItem.Name = "procesosToolStripMenuItem";
            this.procesosToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.procesosToolStripMenuItem.Text = "Procesos";
            this.procesosToolStripMenuItem.Click += new System.EventHandler(this.ProcesosToolStripMenuItem_Click);
            // 
            // nominasToolStripMenuItem
            // 
            this.nominasToolStripMenuItem.Name = "nominasToolStripMenuItem";
            this.nominasToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.nominasToolStripMenuItem.Text = "Nominas";
            this.nominasToolStripMenuItem.Click += new System.EventHandler(this.NominasToolStripMenuItem_Click);
            // 
            // capacitacionesToolStripMenuItem1
            // 
            this.capacitacionesToolStripMenuItem1.Name = "capacitacionesToolStripMenuItem1";
            this.capacitacionesToolStripMenuItem1.Size = new System.Drawing.Size(224, 26);
            this.capacitacionesToolStripMenuItem1.Text = "Capacitaciones";
            this.capacitacionesToolStripMenuItem1.Click += new System.EventHandler(this.CapacitacionesToolStripMenuItem1_Click);
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(82, 24);
            this.reportesToolStripMenuItem.Text = "Reportes";
            // 
            // herramientasToolStripMenuItem
            // 
            this.herramientasToolStripMenuItem.Name = "herramientasToolStripMenuItem";
            this.herramientasToolStripMenuItem.Size = new System.Drawing.Size(112, 24);
            this.herramientasToolStripMenuItem.Text = "Herramientas";
            // 
            // ayudaToolStripMenuItem
            // 
            this.ayudaToolStripMenuItem.Name = "ayudaToolStripMenuItem";
            this.ayudaToolStripMenuItem.Size = new System.Drawing.Size(65, 24);
            this.ayudaToolStripMenuItem.Text = "Ayuda";
            // 
            // resultadosBIToolStripMenuItem
            // 
            this.resultadosBIToolStripMenuItem.Name = "resultadosBIToolStripMenuItem";
            this.resultadosBIToolStripMenuItem.Size = new System.Drawing.Size(112, 24);
            this.resultadosBIToolStripMenuItem.Text = "Resultados BI";
            this.resultadosBIToolStripMenuItem.Click += new System.EventHandler(this.ResultadosBIToolStripMenuItem_Click);
            // 
            // statusStrip
            // 
            this.statusStrip.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel});
            this.statusStrip.Location = new System.Drawing.Point(0, 532);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Padding = new System.Windows.Forms.Padding(1, 0, 19, 0);
            this.statusStrip.Size = new System.Drawing.Size(843, 26);
            this.statusStrip.TabIndex = 2;
            this.statusStrip.Text = "StatusStrip";
            // 
            // toolStripStatusLabel
            // 
            this.toolStripStatusLabel.Name = "toolStripStatusLabel";
            this.toolStripStatusLabel.Size = new System.Drawing.Size(54, 20);
            this.toolStripStatusLabel.Text = "Estado";
            // 
            // polizasToolStripMenuItem
            // 
            this.polizasToolStripMenuItem.Name = "polizasToolStripMenuItem";
            this.polizasToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.polizasToolStripMenuItem.Text = "Polizas";
            this.polizasToolStripMenuItem.Click += new System.EventHandler(this.PolizasToolStripMenuItem_Click);
            // 
            // MDI_RRHH
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(843, 558);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "MDI_RRHH";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MDI_RRHH";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.MDI_RRHH_Load);
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion


        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.ToolStripMenuItem mantenimientosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem empleadosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem puestosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem departamentosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem conceptosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rolesDePagosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem areasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pruebasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inicioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem procesosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem herramientasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ayudaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem nominasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem capacitacionesToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem resultadosBIToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem polizasToolStripMenuItem;
    }
}



