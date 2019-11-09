namespace Recursos_Humanos.Consultas
{
    partial class Frm_consultaReporteVacante
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
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Btn_actualizar = new System.Windows.Forms.Button();
            this.Dgv_encabezado = new System.Windows.Forms.DataGridView();
            this.Btn_buscar = new System.Windows.Forms.Button();
            this.Txt_idReporte = new System.Windows.Forms.TextBox();
            this.Lbl_nombreCuenta = new System.Windows.Forms.Label();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ID_Cre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ID_PE = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.med = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Dgv_detalle = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pri = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.se = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bachi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EU = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Graduado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Curso = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Sueldo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_encabezado)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_detalle)).BeginInit();
            this.SuspendLayout();
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(13, 20);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(291, 23);
            this.Lbl_titulo.TabIndex = 1;
            this.Lbl_titulo.Text = "Consulta Reporte de Vacantes";
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
            this.panel1.Size = new System.Drawing.Size(909, 52);
            this.panel1.TabIndex = 28;
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(768, 9);
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
            this.Btn_salir.Location = new System.Drawing.Point(857, 9);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(40, 40);
            this.Btn_salir.TabIndex = 2;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Btn_actualizar
            // 
            this.Btn_actualizar.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.Btn_actualizar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_actualizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_actualizar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_actualizar.Location = new System.Drawing.Point(387, 462);
            this.Btn_actualizar.Name = "Btn_actualizar";
            this.Btn_actualizar.Size = new System.Drawing.Size(129, 34);
            this.Btn_actualizar.TabIndex = 33;
            this.Btn_actualizar.Text = "Actualizar";
            this.Btn_actualizar.UseVisualStyleBackColor = true;
            this.Btn_actualizar.Click += new System.EventHandler(this.Btn_actualizar_Click);
            // 
            // Dgv_encabezado
            // 
            this.Dgv_encabezado.AllowUserToAddRows = false;
            this.Dgv_encabezado.AllowUserToDeleteRows = false;
            this.Dgv_encabezado.AllowUserToResizeColumns = false;
            this.Dgv_encabezado.AllowUserToResizeRows = false;
            this.Dgv_encabezado.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.Dgv_encabezado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_encabezado.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.ID_Cre,
            this.ID_PE,
            this.Fe,
            this.tipo,
            this.med});
            this.Dgv_encabezado.Location = new System.Drawing.Point(36, 100);
            this.Dgv_encabezado.Name = "Dgv_encabezado";
            this.Dgv_encabezado.ReadOnly = true;
            this.Dgv_encabezado.RowHeadersVisible = false;
            this.Dgv_encabezado.RowHeadersWidth = 51;
            this.Dgv_encabezado.RowTemplate.Height = 24;
            this.Dgv_encabezado.Size = new System.Drawing.Size(823, 149);
            this.Dgv_encabezado.TabIndex = 32;
            // 
            // Btn_buscar
            // 
            this.Btn_buscar.FlatAppearance.BorderSize = 0;
            this.Btn_buscar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_buscar.Location = new System.Drawing.Point(636, 57);
            this.Btn_buscar.Name = "Btn_buscar";
            this.Btn_buscar.Size = new System.Drawing.Size(91, 30);
            this.Btn_buscar.TabIndex = 31;
            this.Btn_buscar.Text = "Buscar";
            this.Btn_buscar.UseVisualStyleBackColor = true;
            this.Btn_buscar.Click += new System.EventHandler(this.Btn_buscar_Click);
            // 
            // Txt_idReporte
            // 
            this.Txt_idReporte.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Txt_idReporte.Location = new System.Drawing.Point(214, 61);
            this.Txt_idReporte.Name = "Txt_idReporte";
            this.Txt_idReporte.Size = new System.Drawing.Size(416, 23);
            this.Txt_idReporte.TabIndex = 30;
            this.Txt_idReporte.TextChanged += new System.EventHandler(this.Txt_nombrePerfil_TextChanged);
            this.Txt_idReporte.KeyUp += new System.Windows.Forms.KeyEventHandler(this.Txt_idReporte_KeyUp);
            // 
            // Lbl_nombreCuenta
            // 
            this.Lbl_nombreCuenta.AutoSize = true;
            this.Lbl_nombreCuenta.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_nombreCuenta.Location = new System.Drawing.Point(104, 64);
            this.Lbl_nombreCuenta.Name = "Lbl_nombreCuenta";
            this.Lbl_nombreCuenta.Size = new System.Drawing.Size(104, 17);
            this.Lbl_nombreCuenta.TabIndex = 29;
            this.Lbl_nombreCuenta.Text = "ID del Reporte:";
            this.Lbl_nombreCuenta.Click += new System.EventHandler(this.Lbl_nombreCuenta_Click);
            // 
            // id
            // 
            this.id.HeaderText = "ID";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            // 
            // ID_Cre
            // 
            this.ID_Cre.HeaderText = "ID Creador";
            this.ID_Cre.Name = "ID_Cre";
            this.ID_Cre.ReadOnly = true;
            // 
            // ID_PE
            // 
            this.ID_PE.HeaderText = "ID Perfil";
            this.ID_PE.Name = "ID_PE";
            this.ID_PE.ReadOnly = true;
            // 
            // Fe
            // 
            this.Fe.HeaderText = "Fecha Creacion";
            this.Fe.Name = "Fe";
            this.Fe.ReadOnly = true;
            // 
            // tipo
            // 
            this.tipo.HeaderText = "Tipo Contratacion";
            this.tipo.Name = "tipo";
            this.tipo.ReadOnly = true;
            // 
            // med
            // 
            this.med.HeaderText = "ID Medio";
            this.med.Name = "med";
            this.med.ReadOnly = true;
            // 
            // Dgv_detalle
            // 
            this.Dgv_detalle.AllowUserToAddRows = false;
            this.Dgv_detalle.AllowUserToDeleteRows = false;
            this.Dgv_detalle.AllowUserToResizeColumns = false;
            this.Dgv_detalle.AllowUserToResizeRows = false;
            this.Dgv_detalle.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.Dgv_detalle.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_detalle.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.pri,
            this.se,
            this.bachi,
            this.EU,
            this.Graduado,
            this.Curso,
            this.descripcion,
            this.Sueldo});
            this.Dgv_detalle.Location = new System.Drawing.Point(17, 268);
            this.Dgv_detalle.Name = "Dgv_detalle";
            this.Dgv_detalle.ReadOnly = true;
            this.Dgv_detalle.RowHeadersVisible = false;
            this.Dgv_detalle.RowHeadersWidth = 51;
            this.Dgv_detalle.RowTemplate.Height = 24;
            this.Dgv_detalle.Size = new System.Drawing.Size(880, 169);
            this.Dgv_detalle.TabIndex = 34;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // pri
            // 
            this.pri.HeaderText = "Primaria";
            this.pri.Name = "pri";
            this.pri.ReadOnly = true;
            // 
            // se
            // 
            this.se.HeaderText = "Secundaria";
            this.se.Name = "se";
            this.se.ReadOnly = true;
            // 
            // bachi
            // 
            this.bachi.HeaderText = "Bachillerato";
            this.bachi.Name = "bachi";
            this.bachi.ReadOnly = true;
            // 
            // EU
            // 
            this.EU.HeaderText = "Estudiante Universitario";
            this.EU.Name = "EU";
            this.EU.ReadOnly = true;
            // 
            // Graduado
            // 
            this.Graduado.HeaderText = "Graduado Universitario";
            this.Graduado.Name = "Graduado";
            this.Graduado.ReadOnly = true;
            // 
            // Curso
            // 
            this.Curso.HeaderText = "Cursos Extras";
            this.Curso.Name = "Curso";
            this.Curso.ReadOnly = true;
            // 
            // descripcion
            // 
            this.descripcion.HeaderText = "Descripcion cursos";
            this.descripcion.Name = "descripcion";
            this.descripcion.ReadOnly = true;
            // 
            // Sueldo
            // 
            this.Sueldo.HeaderText = "Sueldo Base";
            this.Sueldo.Name = "Sueldo";
            this.Sueldo.ReadOnly = true;
            // 
            // Frm_consultaReporteVacante
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(909, 508);
            this.Controls.Add(this.Dgv_detalle);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Btn_actualizar);
            this.Controls.Add(this.Dgv_encabezado);
            this.Controls.Add(this.Btn_buscar);
            this.Controls.Add(this.Txt_idReporte);
            this.Controls.Add(this.Lbl_nombreCuenta);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Frm_consultaReporteVacante";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_consultaReporteVacante";
            this.Load += new System.EventHandler(this.Frm_consultaReporteVacante_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_encabezado)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_detalle)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Button Btn_actualizar;
        public System.Windows.Forms.DataGridView Dgv_encabezado;
        private System.Windows.Forms.Button Btn_buscar;
        private System.Windows.Forms.TextBox Txt_idReporte;
        private System.Windows.Forms.Label Lbl_nombreCuenta;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID_Cre;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID_PE;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fe;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn med;
        public System.Windows.Forms.DataGridView Dgv_detalle;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn pri;
        private System.Windows.Forms.DataGridViewTextBoxColumn se;
        private System.Windows.Forms.DataGridViewTextBoxColumn bachi;
        private System.Windows.Forms.DataGridViewTextBoxColumn EU;
        private System.Windows.Forms.DataGridViewTextBoxColumn Graduado;
        private System.Windows.Forms.DataGridViewTextBoxColumn Curso;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn Sueldo;
    }
}