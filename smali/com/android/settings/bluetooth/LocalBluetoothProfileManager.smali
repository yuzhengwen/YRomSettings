.class final Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDunProfile:Lcom/android/settings/bluetooth/DunServerProfile;

.field private final mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

.field private final mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSapProfile:Lcom/android/settings/bluetooth/SapServerProfile;

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .param p3    # Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .param p4    # Lcom/android/settings/bluetooth/BluetoothEventManager;

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_0
    new-instance v1, Lcom/android/settings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/settings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/bluetooth/MapProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/settings/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    const-string v2, "MAP"

    const-string v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ro.bluetooth.dun"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v6, :cond_1

    new-instance v1, Lcom/android/settings/bluetooth/DunServerProfile;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/DunServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/settings/bluetooth/DunServerProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/settings/bluetooth/DunServerProfile;

    const-string v2, "DUN Server"

    const-string v3, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "ro.bluetooth.sap"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v6, :cond_2

    new-instance v1, Lcom/android/settings/bluetooth/SapServerProfile;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/SapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings/bluetooth/SapServerProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings/bluetooth/SapServerProfile;

    const-string v2, "SAP Server"

    const-string v3, "codeaurora.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/android/settings/bluetooth/PbapServerProfile;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    const-string v2, "PBAP Server"

    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getA2dpSinkProfile()Lcom/android/settings/bluetooth/A2dpSinkProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getMapProfile()Lcom/android/settings/bluetooth/MapProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    return-object v0
.end method

.method getPbapProfile()Lcom/android/settings/bluetooth/PbapServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1    # [Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_1

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    const-string v1, "A2DPSink"

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_3

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-nez v0, :cond_4

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_1

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_4

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1    # [Landroid/os/ParcelUuid;
    .param p2    # [Landroid/os/ParcelUuid;
    .param p5    # Z
    .param p6    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lcom/android/settings/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p5, :cond_a

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    if-nez v0, :cond_c

    :cond_b
    if-eqz p5, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lcom/android/settings/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/settings/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    invoke-virtual {v0, p6}, Lcom/android/settings/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
