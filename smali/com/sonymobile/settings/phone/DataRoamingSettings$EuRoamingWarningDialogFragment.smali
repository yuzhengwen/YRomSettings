.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EuRoamingWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static decodeDisableWarning(I)Z
    .locals 1
    .param p0    # I

    add-int/lit8 v0, p0, -0x1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static decodeEnableEuRoaming(I)Z
    .locals 1
    .param p0    # I

    add-int/lit8 v0, p0, -0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Dialog;

    const v3, 0x7f0f019f

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->getTargetRequestCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0400bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
