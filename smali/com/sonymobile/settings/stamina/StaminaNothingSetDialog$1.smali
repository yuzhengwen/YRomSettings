.class Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$1;
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

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    const-string v2, "NothingSetDialogSharedPrefs"

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "activatedByNothingSetDialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->finish()V

    return-void
.end method
