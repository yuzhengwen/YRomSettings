.class Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;
.super Landroid/app/Fragment;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsDialogFragment"
.end annotation


# instance fields
.field private mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getWpsListener()Lcom/android/settings/wifi/WpsDialog$WpsListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setWpsListener(Lcom/android/settings/wifi/WpsDialog$WpsListener;)V
    .locals 0
    .param p1    # Lcom/android/settings/wifi/WpsDialog$WpsListener;

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    return-void
.end method
