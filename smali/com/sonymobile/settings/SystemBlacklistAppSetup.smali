.class public Lcom/sonymobile/settings/SystemBlacklistAppSetup;
.super Landroid/content/BroadcastReceiver;
.source "SystemBlacklistAppSetup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/android/settings/Utils;->setSystemBlackListAppEnabledSetting(Landroid/content/Context;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/sonymobile/settings/SystemBlacklistAppSetup;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method
