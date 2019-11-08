namespace Recursos_Humanos
{
    partial class Frm_SolicitudEmpleado
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
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.lbl_nom = new System.Windows.Forms.Label();
            this.txt_idCreador = new System.Windows.Forms.TextBox();
            this.btn_buscarEmpleado = new System.Windows.Forms.Button();
            this.lbl_perfil = new System.Windows.Forms.Label();
            this.txt_idPerfil = new System.Windows.Forms.TextBox();
            this.btn_buscarPerfil = new System.Windows.Forms.Button();
            this.lbl_fecha = new System.Windows.Forms.Label();
            this.dtp_fechaS = new System.Windows.Forms.DateTimePicker();
            this.lbl_tipo = new System.Windows.Forms.Label();
            this.cmb_TipoContratacion = new System.Windows.Forms.ComboBox();
            this.txt_razon = new System.Windows.Forms.TextBox();
            this.lbl_razon = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_cualidades = new System.Windows.Forms.TextBox();
            this.lbl_medio = new System.Windows.Forms.Label();
            this.txt_medio = new System.Windows.Forms.TextBox();
            this.btn_buscarMedio = new System.Windows.Forms.Button();
            this.btn_guardar = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
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
            this.panel1.Size = new System.Drawing.Size(972, 52);
            this.panel1.TabIndex = 9;
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(831, 9);
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
            this.Btn_salir.Location = new System.Drawing.Point(920, 9);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(40, 40);
            this.Btn_salir.TabIndex = 2;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(13, 20);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(254, 23);
            this.Lbl_titulo.TabIndex = 1;
            this.Lbl_titulo.Text = "Solicitud nuevo empleado";
            // 
            // lbl_nom
            // 
            this.lbl_nom.AutoSize = true;
            this.lbl_nom.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_nom.Location = new System.Drawing.Point(4, 17);
            this.lbl_nom.Name = "lbl_nom";
            this.lbl_nom.Size = new System.Drawing.Size(137, 17);
            this.lbl_nom.TabIndex = 19;
            this.lbl_nom.Text = "ID creador solicitud:";
            // 
            // txt_idCreador
            // 
            this.txt_idCreador.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_idCreador.Location = new System.Drawing.Point(169, 17);
            this.txt_idCreador.Name = "txt_idCreador";
            this.txt_idCreador.Size = new System.Drawing.Size(170, 23);
            this.txt_idCreador.TabIndex = 18;
            // 
            // btn_buscarEmpleado
            // 
            this.btn_buscarEmpleado.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_buscarEmpleado.Location = new System.Drawing.Point(345, 17);
            this.btn_buscarEmpleado.Name = "btn_buscarEmpleado";
            this.btn_buscarEmpleado.Size = new System.Drawing.Size(75, 23);
            this.btn_buscarEmpleado.TabIndex = 17;
            this.btn_buscarEmpleado.Text = "Buscar";
            this.btn_buscarEmpleado.UseVisualStyleBackColor = true;
            this.btn_buscarEmpleado.Click += new System.EventHandler(this.Btn_buscarEmpleado_Click);
            // 
            // lbl_perfil
            // 
            this.lbl_perfil.AutoSize = true;
            this.lbl_perfil.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_perfil.Location = new System.Drawing.Point(4, 85);
            this.lbl_perfil.Name = "lbl_perfil";
            this.lbl_perfil.Size = new System.Drawing.Size(60, 17);
            this.lbl_perfil.TabIndex = 22;
            this.lbl_perfil.Text = "ID perfil:";
            // 
            // txt_idPerfil
            // 
            this.txt_idPerfil.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_idPerfil.Location = new System.Drawing.Point(169, 85);
            this.txt_idPerfil.Name = "txt_idPerfil";
            this.txt_idPerfil.Size = new System.Drawing.Size(170, 23);
            this.txt_idPerfil.TabIndex = 21;
            // 
            // btn_buscarPerfil
            // 
            this.btn_buscarPerfil.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_buscarPerfil.Location = new System.Drawing.Point(345, 85);
            this.btn_buscarPerfil.Name = "btn_buscarPerfil";
            this.btn_buscarPerfil.Size = new System.Drawing.Size(75, 23);
            this.btn_buscarPerfil.TabIndex = 20;
            this.btn_buscarPerfil.Text = "Buscar";
            this.btn_buscarPerfil.UseVisualStyleBackColor = true;
            this.btn_buscarPerfil.Click += new System.EventHandler(this.Btn_buscarPerfil_Click);
            // 
            // lbl_fecha
            // 
            this.lbl_fecha.AutoSize = true;
            this.lbl_fecha.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_fecha.Location = new System.Drawing.Point(4, 53);
            this.lbl_fecha.Name = "lbl_fecha";
            this.lbl_fecha.Size = new System.Drawing.Size(129, 17);
            this.lbl_fecha.TabIndex = 23;
            this.lbl_fecha.Text = "Fecha de solicitud:";
            // 
            // dtp_fechaS
            // 
            this.dtp_fechaS.Location = new System.Drawing.Point(169, 56);
            this.dtp_fechaS.Name = "dtp_fechaS";
            this.dtp_fechaS.Size = new System.Drawing.Size(200, 20);
            this.dtp_fechaS.TabIndex = 24;
            this.dtp_fechaS.ValueChanged += new System.EventHandler(this.Dtp_fechaS_ValueChanged);
            // 
            // lbl_tipo
            // 
            this.lbl_tipo.AutoSize = true;
            this.lbl_tipo.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_tipo.Location = new System.Drawing.Point(471, 20);
            this.lbl_tipo.Name = "lbl_tipo";
            this.lbl_tipo.Size = new System.Drawing.Size(148, 17);
            this.lbl_tipo.TabIndex = 25;
            this.lbl_tipo.Text = "Tipo de contratacion:";
            // 
            // cmb_TipoContratacion
            // 
            this.cmb_TipoContratacion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_TipoContratacion.FormattingEnabled = true;
            this.cmb_TipoContratacion.Items.AddRange(new object[] {
            "Contrato Temporal",
            "Contrato Indefinido",
            "Planilla"});
            this.cmb_TipoContratacion.Location = new System.Drawing.Point(671, 20);
            this.cmb_TipoContratacion.Name = "cmb_TipoContratacion";
            this.cmb_TipoContratacion.Size = new System.Drawing.Size(170, 21);
            this.cmb_TipoContratacion.TabIndex = 26;
            this.cmb_TipoContratacion.SelectedIndexChanged += new System.EventHandler(this.Cmb_TipoContratacion_SelectedIndexChanged);
            // 
            // txt_razon
            // 
            this.txt_razon.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.txt_razon.Location = new System.Drawing.Point(7, 29);
            this.txt_razon.Multiline = true;
            this.txt_razon.Name = "txt_razon";
            this.txt_razon.Size = new System.Drawing.Size(413, 121);
            this.txt_razon.TabIndex = 27;
            this.txt_razon.TextChanged += new System.EventHandler(this.Txt_razon_TextChanged);
            // 
            // lbl_razon
            // 
            this.lbl_razon.AutoSize = true;
            this.lbl_razon.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_razon.Location = new System.Drawing.Point(4, 9);
            this.lbl_razon.Name = "lbl_razon";
            this.lbl_razon.Size = new System.Drawing.Size(130, 17);
            this.lbl_razon.TabIndex = 28;
            this.lbl_razon.Text = "Razon de solicitud:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(464, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(183, 17);
            this.label1.TabIndex = 30;
            this.label1.Text = "Descripcion de cualidades:";
            // 
            // txt_cualidades
            // 
            this.txt_cualidades.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.txt_cualidades.Location = new System.Drawing.Point(467, 29);
            this.txt_cualidades.Multiline = true;
            this.txt_cualidades.Name = "txt_cualidades";
            this.txt_cualidades.Size = new System.Drawing.Size(413, 121);
            this.txt_cualidades.TabIndex = 29;
            this.txt_cualidades.TextChanged += new System.EventHandler(this.Txt_cualidades_TextChanged);
            // 
            // lbl_medio
            // 
            this.lbl_medio.AutoSize = true;
            this.lbl_medio.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_medio.Location = new System.Drawing.Point(471, 59);
            this.lbl_medio.Name = "lbl_medio";
            this.lbl_medio.Size = new System.Drawing.Size(193, 17);
            this.lbl_medio.TabIndex = 33;
            this.lbl_medio.Text = "ID medio de Comunicacion:";
            // 
            // txt_medio
            // 
            this.txt_medio.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_medio.Location = new System.Drawing.Point(671, 53);
            this.txt_medio.Name = "txt_medio";
            this.txt_medio.Size = new System.Drawing.Size(170, 23);
            this.txt_medio.TabIndex = 32;
            // 
            // btn_buscarMedio
            // 
            this.btn_buscarMedio.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_buscarMedio.Location = new System.Drawing.Point(847, 53);
            this.btn_buscarMedio.Name = "btn_buscarMedio";
            this.btn_buscarMedio.Size = new System.Drawing.Size(75, 23);
            this.btn_buscarMedio.TabIndex = 31;
            this.btn_buscarMedio.Text = "Buscar";
            this.btn_buscarMedio.UseVisualStyleBackColor = true;
            this.btn_buscarMedio.Click += new System.EventHandler(this.Btn_buscarMedio_Click);
            // 
            // btn_guardar
            // 
            this.btn_guardar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_guardar.Location = new System.Drawing.Point(398, 421);
            this.btn_guardar.Name = "btn_guardar";
            this.btn_guardar.Size = new System.Drawing.Size(169, 40);
            this.btn_guardar.TabIndex = 34;
            this.btn_guardar.Text = "Generar solicitud";
            this.btn_guardar.UseVisualStyleBackColor = true;
            this.btn_guardar.Click += new System.EventHandler(this.Btn_guardar_Click);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.panel2.Controls.Add(this.lbl_razon);
            this.panel2.Controls.Add(this.txt_razon);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.txt_cualidades);
            this.panel2.Location = new System.Drawing.Point(37, 233);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(915, 160);
            this.panel2.TabIndex = 35;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.panel3.Controls.Add(this.lbl_nom);
            this.panel3.Controls.Add(this.btn_buscarEmpleado);
            this.panel3.Controls.Add(this.lbl_medio);
            this.panel3.Controls.Add(this.txt_idCreador);
            this.panel3.Controls.Add(this.txt_medio);
            this.panel3.Controls.Add(this.btn_buscarPerfil);
            this.panel3.Controls.Add(this.btn_buscarMedio);
            this.panel3.Controls.Add(this.txt_idPerfil);
            this.panel3.Controls.Add(this.cmb_TipoContratacion);
            this.panel3.Controls.Add(this.lbl_perfil);
            this.panel3.Controls.Add(this.lbl_tipo);
            this.panel3.Controls.Add(this.lbl_fecha);
            this.panel3.Controls.Add(this.dtp_fechaS);
            this.panel3.Location = new System.Drawing.Point(31, 85);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(929, 132);
            this.panel3.TabIndex = 31;
            // 
            // Frm_SolicitudEmpleado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(972, 502);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.btn_guardar);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Frm_SolicitudEmpleado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_SolicitudEmpleado";
            this.Load += new System.EventHandler(this.Frm_SolicitudEmpleado_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Label lbl_nom;
        private System.Windows.Forms.TextBox txt_idCreador;
        private System.Windows.Forms.Button btn_buscarEmpleado;
        private System.Windows.Forms.Label lbl_perfil;
        private System.Windows.Forms.TextBox txt_idPerfil;
        private System.Windows.Forms.Button btn_buscarPerfil;
        private System.Windows.Forms.Label lbl_fecha;
        private System.Windows.Forms.DateTimePicker dtp_fechaS;
        private System.Windows.Forms.Label lbl_tipo;
        private System.Windows.Forms.ComboBox cmb_TipoContratacion;
        private System.Windows.Forms.TextBox txt_razon;
        private System.Windows.Forms.Label lbl_razon;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_cualidades;
        private System.Windows.Forms.Label lbl_medio;
        private System.Windows.Forms.TextBox txt_medio;
        private System.Windows.Forms.Button btn_buscarMedio;
        private System.Windows.Forms.Button btn_guardar;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
    }
}