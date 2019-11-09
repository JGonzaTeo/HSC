namespace Recursos_Humanos
{
    partial class Frm_Poliza_Nomina
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.Grpbx_encabezadoNomina = new System.Windows.Forms.GroupBox();
            this.Cmbx_tipoPoliza = new System.Windows.Forms.ComboBox();
            this.Txt_idNomina = new System.Windows.Forms.TextBox();
            this.Lbl_documentoAsociado = new System.Windows.Forms.Label();
            this.Dtpck_fecha = new System.Windows.Forms.DateTimePicker();
            this.Lbl_fechaEmision = new System.Windows.Forms.Label();
            this.Lbl_tipoPoliza = new System.Windows.Forms.Label();
            this.Txt_idPoliza = new System.Windows.Forms.TextBox();
            this.Lbl_idPoliza = new System.Windows.Forms.Label();
            this.Dgv_detallePoliza = new System.Windows.Forms.DataGridView();
            this.cuenta = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.debe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.haber = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Lbl_sumasIguales = new System.Windows.Forms.Label();
            this.Txt_sumaDebe = new System.Windows.Forms.TextBox();
            this.Txt_sumaHaber = new System.Windows.Forms.TextBox();
            this.Lbl_descripcion = new System.Windows.Forms.Label();
            this.Txt_descPoliza = new System.Windows.Forms.TextBox();
            this.Lbl_codigoCuenta = new System.Windows.Forms.Label();
            this.Btn_eliminarCuenta = new System.Windows.Forms.Button();
            this.Btn_aceptar = new System.Windows.Forms.Button();
            this.Lbl_diferencia = new System.Windows.Forms.Label();
            this.Btn_consultaNomina = new System.Windows.Forms.Button();
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.Grpbx_encabezadoNomina.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_detallePoliza)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.panel1.Controls.Add(this.Btn_minimizar);
            this.panel1.Controls.Add(this.Btn_salir);
            this.panel1.Controls.Add(this.Lbl_titulo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1000, 52);
            this.panel1.TabIndex = 0;
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(13, 20);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(93, 28);
            this.Lbl_titulo.TabIndex = 1;
            this.Lbl_titulo.Text = "POLIZA";
            // 
            // Grpbx_encabezadoNomina
            // 
            this.Grpbx_encabezadoNomina.Controls.Add(this.Cmbx_tipoPoliza);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Txt_idNomina);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Lbl_documentoAsociado);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Dtpck_fecha);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Lbl_fechaEmision);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Lbl_tipoPoliza);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Txt_idPoliza);
            this.Grpbx_encabezadoNomina.Controls.Add(this.Lbl_idPoliza);
            this.Grpbx_encabezadoNomina.Location = new System.Drawing.Point(46, 56);
            this.Grpbx_encabezadoNomina.Name = "Grpbx_encabezadoNomina";
            this.Grpbx_encabezadoNomina.Size = new System.Drawing.Size(942, 112);
            this.Grpbx_encabezadoNomina.TabIndex = 2;
            this.Grpbx_encabezadoNomina.TabStop = false;
            this.Grpbx_encabezadoNomina.Text = "Encabezado";
            // 
            // Cmbx_tipoPoliza
            // 
            this.Cmbx_tipoPoliza.FormattingEnabled = true;
            this.Cmbx_tipoPoliza.Location = new System.Drawing.Point(406, 45);
            this.Cmbx_tipoPoliza.Name = "Cmbx_tipoPoliza";
            this.Cmbx_tipoPoliza.Size = new System.Drawing.Size(121, 29);
            this.Cmbx_tipoPoliza.TabIndex = 10;
            // 
            // Txt_idNomina
            // 
            this.Txt_idNomina.Enabled = false;
            this.Txt_idNomina.Location = new System.Drawing.Point(476, 81);
            this.Txt_idNomina.Name = "Txt_idNomina";
            this.Txt_idNomina.Size = new System.Drawing.Size(100, 28);
            this.Txt_idNomina.TabIndex = 9;
            // 
            // Lbl_documentoAsociado
            // 
            this.Lbl_documentoAsociado.AutoSize = true;
            this.Lbl_documentoAsociado.Location = new System.Drawing.Point(272, 88);
            this.Lbl_documentoAsociado.Name = "Lbl_documentoAsociado";
            this.Lbl_documentoAsociado.Size = new System.Drawing.Size(198, 21);
            this.Lbl_documentoAsociado.TabIndex = 8;
            this.Lbl_documentoAsociado.Text = "Documento asociado:";
            // 
            // Dtpck_fecha
            // 
            this.Dtpck_fecha.CustomFormat = "yyyy/MM/dd";
            this.Dtpck_fecha.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.Dtpck_fecha.Location = new System.Drawing.Point(720, 41);
            this.Dtpck_fecha.Name = "Dtpck_fecha";
            this.Dtpck_fecha.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.Dtpck_fecha.Size = new System.Drawing.Size(216, 28);
            this.Dtpck_fecha.TabIndex = 7;
            // 
            // Lbl_fechaEmision
            // 
            this.Lbl_fechaEmision.AutoSize = true;
            this.Lbl_fechaEmision.Location = new System.Drawing.Point(540, 48);
            this.Lbl_fechaEmision.Name = "Lbl_fechaEmision";
            this.Lbl_fechaEmision.Size = new System.Drawing.Size(174, 21);
            this.Lbl_fechaEmision.TabIndex = 6;
            this.Lbl_fechaEmision.Text = "Fecha de apertura:";
            // 
            // Lbl_tipoPoliza
            // 
            this.Lbl_tipoPoliza.AutoSize = true;
            this.Lbl_tipoPoliza.Location = new System.Drawing.Point(272, 48);
            this.Lbl_tipoPoliza.Name = "Lbl_tipoPoliza";
            this.Lbl_tipoPoliza.Size = new System.Drawing.Size(128, 21);
            this.Lbl_tipoPoliza.TabIndex = 5;
            this.Lbl_tipoPoliza.Text = "Tipo de Póliza:";
            // 
            // Txt_idPoliza
            // 
            this.Txt_idPoliza.Enabled = false;
            this.Txt_idPoliza.Location = new System.Drawing.Point(146, 45);
            this.Txt_idPoliza.Name = "Txt_idPoliza";
            this.Txt_idPoliza.Size = new System.Drawing.Size(100, 28);
            this.Txt_idPoliza.TabIndex = 4;
            // 
            // Lbl_idPoliza
            // 
            this.Lbl_idPoliza.AutoSize = true;
            this.Lbl_idPoliza.Location = new System.Drawing.Point(15, 48);
            this.Lbl_idPoliza.Name = "Lbl_idPoliza";
            this.Lbl_idPoliza.Size = new System.Drawing.Size(125, 21);
            this.Lbl_idPoliza.TabIndex = 3;
            this.Lbl_idPoliza.Text = "No. de póliza:";
            // 
            // Dgv_detallePoliza
            // 
            this.Dgv_detallePoliza.AllowUserToDeleteRows = false;
            this.Dgv_detallePoliza.AllowUserToResizeColumns = false;
            this.Dgv_detallePoliza.AllowUserToResizeRows = false;
            this.Dgv_detallePoliza.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.Dgv_detallePoliza.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_detallePoliza.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cuenta,
            this.nombre,
            this.debe,
            this.haber});
            this.Dgv_detallePoliza.Location = new System.Drawing.Point(12, 263);
            this.Dgv_detallePoliza.Name = "Dgv_detallePoliza";
            this.Dgv_detallePoliza.RowHeadersVisible = false;
            this.Dgv_detallePoliza.RowHeadersWidth = 51;
            this.Dgv_detallePoliza.RowTemplate.Height = 24;
            this.Dgv_detallePoliza.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Dgv_detallePoliza.Size = new System.Drawing.Size(976, 308);
            this.Dgv_detallePoliza.StandardTab = true;
            this.Dgv_detallePoliza.TabIndex = 3;
            this.Dgv_detallePoliza.TabStop = false;
            this.Dgv_detallePoliza.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.ConsultarCuentas);
            // 
            // cuenta
            // 
            this.cuenta.HeaderText = "Cuenta";
            this.cuenta.MinimumWidth = 6;
            this.cuenta.Name = "cuenta";
            // 
            // nombre
            // 
            this.nombre.HeaderText = "Nombre";
            this.nombre.MinimumWidth = 6;
            this.nombre.Name = "nombre";
            // 
            // debe
            // 
            this.debe.HeaderText = "Debe";
            this.debe.MinimumWidth = 6;
            this.debe.Name = "debe";
            // 
            // haber
            // 
            this.haber.HeaderText = "Haber";
            this.haber.MinimumWidth = 6;
            this.haber.Name = "haber";
            // 
            // Lbl_sumasIguales
            // 
            this.Lbl_sumasIguales.AutoSize = true;
            this.Lbl_sumasIguales.Location = new System.Drawing.Point(350, 604);
            this.Lbl_sumasIguales.Name = "Lbl_sumasIguales";
            this.Lbl_sumasIguales.Size = new System.Drawing.Size(143, 21);
            this.Lbl_sumasIguales.TabIndex = 4;
            this.Lbl_sumasIguales.Text = "SUMAS IGUALES";
            // 
            // Txt_sumaDebe
            // 
            this.Txt_sumaDebe.Enabled = false;
            this.Txt_sumaDebe.Location = new System.Drawing.Point(522, 597);
            this.Txt_sumaDebe.Name = "Txt_sumaDebe";
            this.Txt_sumaDebe.Size = new System.Drawing.Size(219, 28);
            this.Txt_sumaDebe.TabIndex = 5;
            this.Txt_sumaDebe.TextChanged += new System.EventHandler(this.TextBox2_TextChanged);
            // 
            // Txt_sumaHaber
            // 
            this.Txt_sumaHaber.Enabled = false;
            this.Txt_sumaHaber.Location = new System.Drawing.Point(766, 597);
            this.Txt_sumaHaber.Name = "Txt_sumaHaber";
            this.Txt_sumaHaber.Size = new System.Drawing.Size(219, 28);
            this.Txt_sumaHaber.TabIndex = 6;
            // 
            // Lbl_descripcion
            // 
            this.Lbl_descripcion.AutoSize = true;
            this.Lbl_descripcion.Location = new System.Drawing.Point(14, 160);
            this.Lbl_descripcion.Name = "Lbl_descripcion";
            this.Lbl_descripcion.Size = new System.Drawing.Size(112, 21);
            this.Lbl_descripcion.TabIndex = 8;
            this.Lbl_descripcion.Text = "Descripcion:";
            // 
            // Txt_descPoliza
            // 
            this.Txt_descPoliza.Location = new System.Drawing.Point(18, 184);
            this.Txt_descPoliza.Multiline = true;
            this.Txt_descPoliza.Name = "Txt_descPoliza";
            this.Txt_descPoliza.Size = new System.Drawing.Size(964, 69);
            this.Txt_descPoliza.TabIndex = 9;
            // 
            // Lbl_codigoCuenta
            // 
            this.Lbl_codigoCuenta.AutoSize = true;
            this.Lbl_codigoCuenta.Location = new System.Drawing.Point(8, 629);
            this.Lbl_codigoCuenta.Name = "Lbl_codigoCuenta";
            this.Lbl_codigoCuenta.Size = new System.Drawing.Size(0, 21);
            this.Lbl_codigoCuenta.TabIndex = 11;
            this.Lbl_codigoCuenta.Visible = false;
            // 
            // Btn_eliminarCuenta
            // 
            this.Btn_eliminarCuenta.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_eliminarCuenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_eliminarCuenta.Location = new System.Drawing.Point(12, 577);
            this.Btn_eliminarCuenta.Name = "Btn_eliminarCuenta";
            this.Btn_eliminarCuenta.Size = new System.Drawing.Size(174, 36);
            this.Btn_eliminarCuenta.TabIndex = 12;
            this.Btn_eliminarCuenta.Text = "Eliminar Cuenta";
            this.Btn_eliminarCuenta.UseVisualStyleBackColor = true;
            this.Btn_eliminarCuenta.Click += new System.EventHandler(this.Btn_eliminarCuenta_Click);
            // 
            // Btn_aceptar
            // 
            this.Btn_aceptar.FlatAppearance.BorderSize = 0;
            this.Btn_aceptar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_aceptar.Image = global::Recursos_Humanos.Properties.Resources.icons8_aprobación_35;
            this.Btn_aceptar.Location = new System.Drawing.Point(0, 107);
            this.Btn_aceptar.Name = "Btn_aceptar";
            this.Btn_aceptar.Size = new System.Drawing.Size(40, 40);
            this.Btn_aceptar.TabIndex = 10;
            this.Btn_aceptar.UseVisualStyleBackColor = true;
            this.Btn_aceptar.Click += new System.EventHandler(this.Btn_aceptar_Click);
            // 
            // Lbl_diferencia
            // 
            this.Lbl_diferencia.AutoSize = true;
            this.Lbl_diferencia.ForeColor = System.Drawing.Color.Red;
            this.Lbl_diferencia.Location = new System.Drawing.Point(254, 620);
            this.Lbl_diferencia.Name = "Lbl_diferencia";
            this.Lbl_diferencia.Size = new System.Drawing.Size(0, 21);
            this.Lbl_diferencia.TabIndex = 13;
            // 
            // Btn_consultaNomina
            // 
            this.Btn_consultaNomina.FlatAppearance.BorderSize = 0;
            this.Btn_consultaNomina.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_consultaNomina.Image = global::Recursos_Humanos.Properties.Resources.icons8_transferencia_de_dinero_35;
            this.Btn_consultaNomina.Location = new System.Drawing.Point(0, 59);
            this.Btn_consultaNomina.Name = "Btn_consultaNomina";
            this.Btn_consultaNomina.Size = new System.Drawing.Size(40, 40);
            this.Btn_consultaNomina.TabIndex = 1;
            this.Btn_consultaNomina.UseVisualStyleBackColor = true;
            this.Btn_consultaNomina.Click += new System.EventHandler(this.Btn_consultaNomina_Click);
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(830, 10);
            this.Btn_minimizar.Name = "Btn_minimizar";
            this.Btn_minimizar.Size = new System.Drawing.Size(40, 40);
            this.Btn_minimizar.TabIndex = 1;
            this.Btn_minimizar.UseVisualStyleBackColor = true;
            this.Btn_minimizar.Click += new System.EventHandler(this.Btn_minimizar_Click);
            // 
            // Btn_salir
            // 
            this.Btn_salir.FlatAppearance.BorderSize = 0;
            this.Btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_salir.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.Btn_salir.Location = new System.Drawing.Point(916, 10);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(40, 40);
            this.Btn_salir.TabIndex = 2;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Frm_Poliza_Nomina
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1000, 650);
            this.Controls.Add(this.Lbl_diferencia);
            this.Controls.Add(this.Btn_eliminarCuenta);
            this.Controls.Add(this.Lbl_codigoCuenta);
            this.Controls.Add(this.Btn_aceptar);
            this.Controls.Add(this.Txt_descPoliza);
            this.Controls.Add(this.Lbl_descripcion);
            this.Controls.Add(this.Txt_sumaHaber);
            this.Controls.Add(this.Txt_sumaDebe);
            this.Controls.Add(this.Lbl_sumasIguales);
            this.Controls.Add(this.Dgv_detallePoliza);
            this.Controls.Add(this.Grpbx_encabezadoNomina);
            this.Controls.Add(this.Btn_consultaNomina);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Frm_Poliza_Nomina";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_Poliza_Nomina";
            this.Load += new System.EventHandler(this.Frm_Poliza_Nomina_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.Grpbx_encabezadoNomina.ResumeLayout(false);
            this.Grpbx_encabezadoNomina.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_detallePoliza)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_consultaNomina;
        private System.Windows.Forms.GroupBox Grpbx_encabezadoNomina;
        private System.Windows.Forms.DateTimePicker Dtpck_fecha;
        private System.Windows.Forms.Label Lbl_fechaEmision;
        private System.Windows.Forms.Label Lbl_tipoPoliza;
        private System.Windows.Forms.TextBox Txt_idPoliza;
        private System.Windows.Forms.Label Lbl_idPoliza;
        private System.Windows.Forms.DataGridView Dgv_detallePoliza;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuenta;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn debe;
        private System.Windows.Forms.DataGridViewTextBoxColumn haber;
        private System.Windows.Forms.Label Lbl_sumasIguales;
        private System.Windows.Forms.TextBox Txt_sumaDebe;
        private System.Windows.Forms.TextBox Txt_sumaHaber;
        private System.Windows.Forms.Label Lbl_descripcion;
        private System.Windows.Forms.TextBox Txt_descPoliza;
        private System.Windows.Forms.Button Btn_aceptar;
        private System.Windows.Forms.Label Lbl_documentoAsociado;
        private System.Windows.Forms.TextBox Txt_idNomina;
        private System.Windows.Forms.ComboBox Cmbx_tipoPoliza;
        private System.Windows.Forms.Label Lbl_codigoCuenta;
        private System.Windows.Forms.Button Btn_eliminarCuenta;
        private System.Windows.Forms.Label Lbl_diferencia;
    }
}