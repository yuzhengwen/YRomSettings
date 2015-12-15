.class public Lcom/sonymobile/settings/MPDNSupportActivity;
.super Landroid/app/Activity;
.source "MPDNSupportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/MPDNSupportActivity$2;,
        Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
    }
.end annotation


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mTetherIfaceList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbRegexs:[Ljava/lang/String;

.field private mWaitingForResult:Z

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    new-instance v0, Lcom/sonymobile/settings/MPDNSupportActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/MPDNSupportActivity$1;-><init>(Lcom/sonymobile/settings/MPDNSupportActivity;)V

    iput-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/settings/MPDNSupportActivity;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0    # Lcom/sonymobile/settings/MPDNSupportActivity;
    .param p1    # Landroid/bluetooth/BluetoothPan;

    iput-object p1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0    # [Ljava/lang/String;
    .param p1    # [Ljava/lang/String;

    move-object v0, p0

    array-length v5, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    move-object v1, p1

    array-length v6, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isTethered()Z
    .locals 7

    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWifiRegexs:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mUsbRegexs:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    sget-object v6, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->WIFI:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    sget-object v6, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->USB:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    sget-object v6, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->BLUETOOTH:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_3
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setBluetoothTethering(Z)Z
    .locals 9
    .param p1    # Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/sonymobile/settings/MPDNSupportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string v5, "MPDNSupportActivity"

    const-string v6, "bluetooth adapter is null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "MPDNSupportActivity"

    const-string v7, "Untethering bluetooth has failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "MPDNSupportActivity"

    const-string v7, "bluetoothIface is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const-string v5, "MPDNSupportActivity"

    const-string v6, "mBluetoothPan is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbTethering(Z)Z
    .locals 3
    .param p1    # Z

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/MPDNSupportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MPDNSupportActivity"

    const-string v2, "USB tethering error has occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setWifiTethering(Z)Z
    .locals 5
    .param p1    # Z

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/MPDNSupportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v1, "MPDNSupportActivity"

    const-string v3, "Starting Wifi AP failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "MPDNSupportActivity"

    const-string v3, "Wifi AP disable error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method private tether(Z)V
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    sget-object v2, Lcom/sonymobile/settings/MPDNSupportActivity$2;->$SwitchMap$com$sonymobile$settings$MPDNSupportActivity$TetheredInterface:[I

    invoke-virtual {v1}, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/MPDNSupportActivity;->setWifiTethering(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/MPDNSupportActivity;->setUsbTethering(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/MPDNSupportActivity;->setBluetoothTethering(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/sonymobile/settings/MPDNSupportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->finish()V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_0

    if-ne p2, v1, :cond_3

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/MPDNSupportActivity;->tether(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/MPDNSupportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWifiRegexs:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mUsbRegexs:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mpdnSupport"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->isTethered()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/MPDNSupportActivity;->tether(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/settings/TetherAllowDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v4}, Lcom/sonymobile/settings/MPDNSupportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v4, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
