.class Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;
.super Ljava/lang/Object;
.source "HceOverflowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/nfc/HceOverflowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/HceOverflowDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;->this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;->this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->finish()V

    return-void
.end method
