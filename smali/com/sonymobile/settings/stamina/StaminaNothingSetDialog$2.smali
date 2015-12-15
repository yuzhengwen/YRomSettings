.class Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$2;
.super Ljava/lang/Object;
.source "StaminaNothingSetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$2;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog$2;->this$0:Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/StaminaNothingSetDialog;->finish()V

    return-void
.end method
