.class Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/print/PrintSettingsFragment;
    .param p2    # Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
