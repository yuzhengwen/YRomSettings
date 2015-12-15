.class final Lcom/android/settings/bluetooth/SapServerProfile;
.super Ljava/lang/Object;
.source "SapServerProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/SapServerProfile$1;,
        Lcom/android/settings/bluetooth/SapServerProfile$SapServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothSap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/SapServerProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/SapServerProfile$SapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/SapServerProfile$SapServiceListener;-><init>(Lcom/android/settings/bluetooth/SapServerProfile;Lcom/android/settings/bluetooth/SapServerProfile$1;)V

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/SapServerProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/SapServerProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0
    .param p0    # Lcom/android/settings/bluetooth/SapServerProfile;
    .param p1    # Landroid/bluetooth/BluetoothSap;

    iput-object p1, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/SapServerProfile;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/bluetooth/SapServerProfile;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/settings/bluetooth/SapServerProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "SapServerProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SapServerProfile"

    const-string v2, "Error cleaning up SAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothClass;

    const v0, 0x7f02004c

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    const v0, 0x7f0902dc

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    const v1, 0x7f0902f7

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0902ee

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/SapServerProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
    .param p2    # Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SAP Server"

    return-object v0
.end method
