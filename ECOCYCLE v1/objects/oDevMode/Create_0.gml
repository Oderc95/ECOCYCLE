/// @description Initialisation

  //******************************************************//
 //						DEV MODE						 //
//******************************************************//
#region DEV MODE
// Cet objet doit rester au premier plan car il contient le dev mode (Valeur a ne pas changer)
depth						=  -1000; 

// Dev mode
dev_mode_activate			=	0;					// Etat de la dev mode : activée ou désactivée
dev_mode_delay				=	0;					// Cooldown current entre l'activation et la désactivation (à ne pas changer)
dev_mode_delay_max			=	0.1;				// Cooldown max entre l'activation et la désactivation
dev_mode_disable			=	0;					// Variable de passage du mode actif au mode passif

#endregion


