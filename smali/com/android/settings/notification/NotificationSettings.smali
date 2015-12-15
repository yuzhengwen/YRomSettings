.class public Lcom/android/settings/notification/NotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettings$Receiver;,
        Lcom/android/settings/notification/NotificationSettings$H;,
        Lcom/android/settings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/NotificationSettings$H;

.field private mIncreasingRingtone:Landroid/preference/TwoStatePreference;

.field private mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

.field private mLockscreen:Lcom/android/settings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMultiPhoneRingtonePreference:Landroid/preference/Preference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$7;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)I
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/notification/NotificationSettings;I)I
    .locals 0
    .param p0    # Lcom/android/settings/notification/NotificationSettings;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # I

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initIncreasingRingtone(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1    # Landroid/preference/PreferenceCategory;

    const-string v0, "increasing_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: increasing_ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateIncreasingRingtone()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initKeepLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 6
    .param p1    # Landroid/preference/PreferenceCategory;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "somc.lockscreen.keep_notifications"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/TwoStatePreference;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    const-string v2, "NotificationSettings"

    const-string v3, "Preference not found: somc.lockscreen.keep_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c001d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "somc.lockscreen.keep_notifications"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    new-instance v3, Lcom/android/settings/notification/NotificationSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/NotificationSettings$6;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .param p1    # Landroid/preference/PreferenceCategory;

    const v4, 0x7f090a78

    const v3, 0x7f090a77

    const v2, 0x7f090a76

    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v0, :cond_0

    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$5;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1    # Landroid/preference/PreferenceCategory;

    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1    # Landroid/preference/PreferenceCategory;

    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    const-string v0, "ringtone_multi"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMultiPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMultiPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMultiPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1    # Landroid/preference/PreferenceCategory;

    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    return-object v0
.end method

.method private isNotificationsDisabledByPolicy()Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a88

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x10406ba

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateIncreasingRingtone()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mIncreasingRingtone:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "increasing_ringtone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    const v2, 0x7f090a78

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->isNotificationsDisabledByPolicy()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-nez v1, :cond_4

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const v2, 0x7f090a76

    goto :goto_1

    :cond_5
    const v2, 0x7f090a77

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080324

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x1080325

    goto :goto_0

    :cond_1
    const v0, 0x1080323

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v7, 0x0

    if-nez p0, :cond_1

    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10404d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_2

    const v0, 0x10404d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const v5, 0x1080324

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    const-string v2, "sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "media_volume"

    const/4 v3, 0x3

    const v4, 0x1080327

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v2, "alarm_volume"

    const/4 v3, 0x4

    const v4, 0x1080316

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    const-string v2, "ring_volume"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v2, "notification_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    invoke-direct {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    invoke-direct {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->initIncreasingRingtone(Landroid/preference/PreferenceCategory;)V

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->initKeepLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    const-string v2, "manage_notification_access"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingerMode()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void

    :cond_1
    const-string v2, "notification_volume"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v2, "ring_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$Receiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationSettings$Receiver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateEffectsSuppressor()V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    :cond_0
    return-void
.end method
