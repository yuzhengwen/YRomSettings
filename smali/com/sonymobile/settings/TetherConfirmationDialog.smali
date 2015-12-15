.class public Lcom/sonymobile/settings/TetherConfirmationDialog;
.super Landroid/app/Activity;
.source "TetherConfirmationDialog.java"


# instance fields
.field private mCheckbox:Landroid/view/View;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogMessageId:I

.field private mPreferenceShowDialog:Ljava/lang/String;

.field private mShowCheckbox:Z

.field private mTetherChoice:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    iput v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    iput v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/TetherConfirmationDialog;

    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/TetherConfirmationDialog;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/TetherConfirmationDialog;

    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    invoke-virtual {p0, v5}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "TETHER_TYPE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "TETHER_TYPE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    :cond_0
    iget v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-boolean v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    iget v4, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    if-nez v4, :cond_2

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_6

    invoke-virtual {p0, v5, p1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->showDialog(ILandroid/os/Bundle;)Z

    :goto_2
    return-void

    :cond_3
    iget v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mTetherChoice:I

    if-ne v6, v4, :cond_4

    const-string v6, "show_tether_dialog"

    iput-object v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    const v6, 0x7f090089

    iput v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    goto :goto_0

    :cond_4
    const-string v6, "show_wifi_tether_dialog"

    iput-object v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mPreferenceShowDialog:Ljava/lang/String;

    const v6, 0x7f090088

    iput v6, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/TetherConfirmationDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1    # I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09052c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialogMessageId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/sonymobile/settings/TetherConfirmationDialog$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$3;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/settings/TetherConfirmationDialog$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$2;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/settings/TetherConfirmationDialog$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/TetherConfirmationDialog$1;-><init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mShowCheckbox:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400dd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
