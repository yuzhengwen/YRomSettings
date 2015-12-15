.class public Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;
.super Landroid/app/Activity;
.source "StaminaNothingSetDialog.java"


# instance fields
.field private mActivatedFromXssm:Z

.field private mNothingSetAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mActivatedFromXssm:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mActivatedFromXssm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "ActivatedFromXssmSettings"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mActivatedFromXssm:Z

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;)V

    new-instance v4, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$2;-><init>(Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f09002d

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f090018

    new-instance v6, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;

    invoke-direct {v6, p0}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;-><init>(Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f09001a

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f090019

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mNothingSetAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mNothingSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7dc

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mNothingSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mNothingSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
