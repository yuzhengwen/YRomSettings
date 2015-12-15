.class public Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;
.super Landroid/app/DialogFragment;
.source "LocationConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/LocationConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationConfirmationDialogFragment"
.end annotation


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mNewMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const-string v0, "com.sonymobile.intent.extra.NEW_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sonymobile.intent.extra.NEW_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mNewMode:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    iget v0, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mNewMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    iget-object v0, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;

    invoke-direct {v0, p2}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "com.sonymobile.intent.extra.NEW_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sonymobile.intent.extra.NEW_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mNewMode:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040055

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900ee

    new-instance v4, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment$1;-><init>(Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900ef

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    invoke-virtual {p0}, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.sonymobile.intent.extra.NEW_MODE"

    iget v1, p0, Lcom/sonymobile/settings/LocationConfirmationDialog$LocationConfirmationDialogFragment;->mNewMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
