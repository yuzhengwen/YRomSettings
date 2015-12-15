.class Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;
.super Ljava/lang/Object;
.source "StaminaNothingSetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "activatedByNothingSetDialog"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    const-string v3, "NothingSetDialogSharedPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "activatedByNothingSetDialog"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->mActivatedFromXssm:Z
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->access$000(Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonymobile.intent.action.STAMINA_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "activatedByNothingSetDialog"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
