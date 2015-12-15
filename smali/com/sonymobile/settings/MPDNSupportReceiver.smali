.class public Lcom/sonymobile/settings/MPDNSupportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MPDNSupportReceiver.java"


# static fields
.field private static oldMultiplePDNMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_required"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v2, v7, :cond_1

    const-string v4, "mpdnSupport"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v4, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    if-eqz v4, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/settings/MPDNSupportActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "mpdnSupport"

    const-string v5, "mpdnSupport"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sput-boolean v1, Lcom/sonymobile/settings/MPDNSupportReceiver;->oldMultiplePDNMode:Z

    :cond_1
    return-void
.end method
