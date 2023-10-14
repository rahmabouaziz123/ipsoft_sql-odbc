CREATE TABLE [dbo].[abscence](
	[id_abscence] [int] IDENTITY(1,1) NOT NULL,
	[id_ab] [int] NOT NULL,
	[date_debut_ab] [date] NOT NULL,
	[heure_debut_ab] [time](7) NULL,
	[date_fin_ab] [date] NOT NULL,
	[heure_fin_ab] [time](7) NULL,
	[raison] [varchar](250) NULL,
	[id_emp] [int] NULL,
	[matricule] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_abscence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrat]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrat](
	[id_contrat] [int] IDENTITY(1,1) NOT NULL,
	[nom_contrat] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contrat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrat_modifie]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrat_modifie](
	[id_mod] [int] IDENTITY(1,1) NOT NULL,
	[matricule_mod] [int] NOT NULL,
	[date_modif] [date] NOT NULL,
	[heure_modif] [time](7) NOT NULL,
	[qui_a_modifie] [varchar](255) NOT NULL,
	[contrat_modi] [varchar](255) NULL,
	[champ_modifier] [varchar](max) NOT NULL,
	[ancien_valeur] [varchar](255) NOT NULL,
	[nouvel_valeur] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dde_autorisation]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dde_autorisation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_emp] [varchar](255) NOT NULL,
	[date_dde] [date] NOT NULL,
	[heure_dde] [time](7) NOT NULL,
	[date_autorisation] [date] NOT NULL,
	[du] [time](7) NOT NULL,
	[au] [time](7) NOT NULL,
	[motif] [varchar](250) NOT NULL,
	[contact] [varchar](60) NOT NULL,
	[adresse] [varchar](250) NOT NULL,
	[validation] [varchar](255) NULL,
	[commentaire] [varchar](255) NULL,
	[approbation] [varchar](50) NOT NULL,
	[dep] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dde_conge]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dde_conge](
	[num_dde] [int] IDENTITY(1,1) NOT NULL,
	[matricule] [varchar](255) NOT NULL,
	[id_ab] [int] NOT NULL,
	[date_dde] [date] NOT NULL,
	[nbrj_dde] [float] NOT NULL,
	[du] [date] NOT NULL,
	[au] [date] NOT NULL,
	[motif] [varchar](250) NOT NULL,
	[ancien_solde] [int] NOT NULL,
	[approbation] [int] NOT NULL,
	[contact] [varchar](60) NOT NULL,
	[adresse] [varchar](250) NOT NULL,
	[validation] [varchar](255) NULL,
	[commentaire] [varchar](255) NULL,
	[heure_deb] [time](7) NULL,
	[heure_fin] [time](7) NOT NULL,
	[dep] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_dde] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id_dep] [int] IDENTITY(1,1) NOT NULL,
	[id_dir] [int] NOT NULL,
	[nom_dep] [varchar](100) NOT NULL,
	[RBU] [int] NULL,
	[pole] [varchar](255) NULL,
	[comment_dep] [varchar](max) NOT NULL,
	[RH] [int] NOT NULL,
	[RBUCCC] [int] NOT NULL,
	[RBUCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direction_pole]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direction_pole](
	[id_dir] [int] IDENTITY(1,1) NOT NULL,
	[direction_pole] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[droit_user]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[droit_user](
	[id_droit] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NOT NULL,
	[id_page] [int] NOT NULL,
	[consult] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_droit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employe]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employe](
	[id_emp] [int] IDENTITY(1,1) NOT NULL,
	[matricule] [int] NULL,
	[nom_emp] [varchar](14) NULL,
	[prenom_emp] [varchar](13) NULL,
	[nbr_enf] [int] NULL,
	[id_dep] [int] NULL,
	[cin] [int] NULL,
	[sexe] [varchar](10) NULL,
	[date_de_naissance] [varchar](10) NULL,
	[activite] [int] NULL,
	[role_id] [int] NULL,
	[situation_soc] [varchar](11) NULL,
	[cnss] [varchar](10) NULL,
	[num_phone] [int] NULL,
	[solde_conge] [float] NULL,
	[login_emp] [varchar](21) NULL,
	[mp_emp] [varchar](60) NULL,
	[user_id] [int] NULL,
	[lieu] [varchar](10) NULL,
	[RBU] [varchar](10) NULL,
	[BU] [int] NULL,
	[RH] [varchar](9) NULL,
	[manager] [varchar](17) NULL,
	[site] [varchar](10) NULL,
	[direct] [varchar](10) NULL,
	[employe] [varchar](3) NULL,
	[teletravail] [varchar](3) NULL,
	[commentaire] [varchar](10) NULL,
	[manager_bu] [varchar](10) NULL,
	[date_demarrage] [varchar](10) NULL,
	[photo] [varchar](30) NULL,
	[fonction] [varchar](10) NULL,
	[date_depart] [varchar](10) NULL,
	[commentaire_depart] [varchar](10) NULL,
	[qualification] [varchar](32) NULL,
	[email] [text] NULL,
	[allaitement] [text] NULL,
	[solde_auto] [float] NULL,
	[droit_congé] [varchar](60) NULL,
	[echelon] [varchar](20) NULL,
	[cat] [varchar](20) NULL,
	[ancienneté] [int] NULL,
	[type_salaire] [int] NULL,
	[solde_N_1] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groupofplanning]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupofplanning](
	[id_gr] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](250) NOT NULL,
	[tab1] [varchar](250) NOT NULL,
	[tab2] [varchar](250) NOT NULL,
	[tab3] [varchar](250) NOT NULL,
	[tab4] [varchar](255) NULL,
	[tab5] [varchar](255) NULL,
	[tab6] [varchar](255) NULL,
	[tab7] [varchar](255) NULL,
	[id_dep] [char](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_gr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horaire]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horaire](
	[id_horaire] [int] IDENTITY(1,1) NOT NULL,
	[nom_horaire] [varchar](250) NOT NULL,
	[debut] [time](7) NOT NULL,
	[fin] [time](7) NOT NULL,
	[marge_ret] [int] NOT NULL,
	[marge_dep] [int] NOT NULL,
	[debut_entree] [time](7) NOT NULL,
	[fin_entree] [time](7) NOT NULL,
	[debut_sortie] [time](7) NOT NULL,
	[fin_sortie] [time](7) NOT NULL,
	[jours_tra] [int] NOT NULL,
	[repos_min] [int] NOT NULL,
	[cat] [varchar](11) NOT NULL,
	[debut_pause] [time](7) NOT NULL,
	[fin_pause] [time](7) NOT NULL,
	[supplementaire] [int] NOT NULL,
	[nuit] [varchar](25) NOT NULL,
	[chauffeur] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id_image] [int] IDENTITY(1,1) NOT NULL,
	[adresse_image] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jour_ferie]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jour_ferie](
	[id_jr_ferie] [int] IDENTITY(1,1) NOT NULL,
	[nom_jr_ferie] [varchar](250) NOT NULL,
	[date_jr_ferie] [date] NOT NULL,
	[de] [date] NOT NULL,
	[a] [date] NOT NULL,
	[nombre_de_jour] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_jr_ferie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lieu_travail]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lieu_travail](
	[id_lieu] [int] IDENTITY(1,1) NOT NULL,
	[lieu] [varchar](11) NOT NULL,
	[site] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_lieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_gtp]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_gtp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_emp] [int] NOT NULL,
	[nom_emp] [varchar](255) NOT NULL,
	[date_log] [datetime] NULL,
	[page] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id_menu] [int] IDENTITY(1,1) NOT NULL,
	[nom_menu] [varchar](250) NOT NULL,
	[visible] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[page]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[page](
	[id_page] [int] IDENTITY(1,1) NOT NULL,
	[nom_page] [varchar](250) NOT NULL,
	[id_menu] [int] NOT NULL,
	[visible] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_page] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[planning]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planning](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matricule] [varchar](255) NOT NULL,
	[id_tab] [int] NOT NULL,
	[de] [date] NOT NULL,
	[a] [date] NOT NULL,
	[dep] [int] NOT NULL,
	[priorite] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pointage]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointage](
	[id_ptge] [int] IDENTITY(1,1) NOT NULL,
	[matricule] [varchar](255) NOT NULL,
	[date] [date] NOT NULL,
	[heure] [time](7) NOT NULL,
	[etat] [int] NULL,
	[id_pointeuse] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ptge] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pointage_modifie]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointage_modifie](
	[id_modif] [int] IDENTITY(1,1) NOT NULL,
	[matricule_mod] [int] NOT NULL,
	[date_modif] [date] NOT NULL,
	[heure_modif] [varchar](250) NOT NULL,
	[etat_modif] [varchar](50) NOT NULL,
	[qui_a_modifie] [varchar](250) NOT NULL,
	[date_modification] [date] NOT NULL,
	[heure_modification] [time](7) NOT NULL,
	[employe] [varchar](60) NOT NULL,
	[pointage] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_modif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pointeuses]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pointeuses](
	[id_pointeuse] [int] IDENTITY(1,1) NOT NULL,
	[nom_pointeuse] [varchar](100) NULL,
	[ip_pointeuse] [varchar](255) NOT NULL,
	[port_pointeuse] [int] NOT NULL,
	[del_att] [int] NOT NULL,
	[etat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pointeuse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[res]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[res](
	[id_RES] [int] IDENTITY(1,1) NOT NULL,
	[id_emp] [int] NOT NULL,
	[motif] [varchar](30) NOT NULL,
	[date_debut] [date] NOT NULL,
	[date_fin] [date] NOT NULL,
	[matricule] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_RES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[slug] [varchar](250) NOT NULL,
	[role_id] [int] NOT NULL,
	[page1] [int] NOT NULL,
	[page2] [int] NOT NULL,
	[page3] [int] NOT NULL,
	[page4] [int] NOT NULL,
	[page5] [int] NOT NULL,
	[page6] [int] NOT NULL,
	[page7] [int] NOT NULL,
	[page8] [int] NOT NULL,
	[page9] [int] NOT NULL,
	[page10] [int] NOT NULL,
	[page11] [int] NOT NULL,
	[page12] [int] NOT NULL,
	[page13] [int] NOT NULL,
	[page14] [int] NOT NULL,
	[page15] [int] NOT NULL,
	[page16] [int] NOT NULL,
	[page17] [int] NOT NULL,
	[page18] [int] NOT NULL,
	[page19] [int] NOT NULL,
	[page20] [int] NOT NULL,
	[page21] [int] NOT NULL,
	[page22] [int] NOT NULL,
	[page23] [int] NOT NULL,
	[page24] [int] NOT NULL,
	[page25] [int] NOT NULL,
	[page26] [int] NOT NULL,
	[page27] [int] NOT NULL,
	[page28] [int] NOT NULL,
	[page29] [int] NOT NULL,
	[page30] [int] NOT NULL,
	[page31] [int] NOT NULL,
	[page32] [int] NOT NULL,
	[page33] [int] NOT NULL,
	[page34] [int] NOT NULL,
	[page35] [int] NOT NULL,
	[page36] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[situation_sociale]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[situation_sociale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sit_soc] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tab_contrat]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_contrat](
	[id_tab] [int] IDENTITY(1,1) NOT NULL,
	[id_contrat] [int] NOT NULL,
	[matricule] [int] NOT NULL,
	[date_debut] [date] NOT NULL,
	[date_fin] [date] NOT NULL,
	[date_demarrage] [date] NOT NULL,
	[rappel1] [date] NOT NULL,
	[rappel2] [date] NOT NULL,
	[validite] [varchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[manager] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tableau_horaire]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tableau_horaire](
	[id_tab] [int] IDENTITY(1,1) NOT NULL,
	[nom_tab] [varchar](250) NOT NULL,
	[lundi] [varchar](250) NOT NULL,
	[mardi] [varchar](250) NOT NULL,
	[mercredi] [varchar](250) NOT NULL,
	[jeudi] [varchar](250) NOT NULL,
	[vendredi] [varchar](250) NOT NULL,
	[samedi] [varchar](250) NOT NULL,
	[dimanche] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_ab]    Script Date: 05/09/2023 13:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_ab](
	[id_ab] [int] IDENTITY(1,1) NOT NULL,
	[nom_ab] [varchar](250) NOT NULL,
	[justif] [int] NULL,
	[jours] [float] NULL,
	[couleur] [varchar](255) NULL,
	[max] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employe] ADD  DEFAULT ((0)) FOR [solde_N_1]
GO
ALTER TABLE [dbo].[pointeuses] ADD  DEFAULT ((0)) FOR [del_att]
GO
ALTER TABLE [dbo].[abscence]  WITH CHECK ADD  CONSTRAINT [FK_abscence_id_ab] FOREIGN KEY([id_ab])
REFERENCES [dbo].[type_ab] ([id_ab])
GO
ALTER TABLE [dbo].[abscence] CHECK CONSTRAINT [FK_abscence_id_ab]
GO
USE [master]
GO
ALTER DATABASE [etsam_db] SET  READ_WRITE 
GO
