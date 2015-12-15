.class public Lcom/android/settings/notification/OtherSoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$4;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/notification/OtherSoundSettings;

    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f060026

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    return-void
.end method
