.class public Lcom/sonymobile/settings/phone/DataRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;
    }
.end annotation


# instance fields
.field private mDisableChargePopups:Z

.field private mEnableEuRoamingUi:Z

.field private mEnableNationalRoamingUi:Z

.field private mEnableNationalRoamingWarning:Z

.field private final mEuRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

.field private final mNationalDataRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

.field private mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

.field private mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEuRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mNationalDataRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getEuRoamingWarningState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showEuRoamingWarning()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingSetting(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDatatRoamingPreferenceSetting(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showDataRoamingWarning()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showNationalDataRoamingWarning(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showInternationalDataRoamingWarning(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showRoamingBlockedNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private createEuRoamingUi()V
    .locals 2

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    if-eqz v0, :cond_0

    const-string v0, "somc_phone_eu_roaming_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEuRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "somc_phone_eu_roaming_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createNationalDataRoamingUi()V
    .locals 2

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_0

    const-string v0, "somc_phone_data_roaming_mode_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mNationalDataRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "somc_phone_data_roaming_mode_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    const v1, 0x11200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    const v1, 0x11200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createEuRoamingUi()V

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createNationalDataRoamingUi()V

    return-void
.end method

.method private doShowDataRoamingWarning(III)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-static {p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->newInstance(II)Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private getEuRoamingSetting()Z
    .locals 5

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string v2, "eu_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;IZ)Z
    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1700(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method private getEuRoamingWarningState()Z
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eu_roaming_warning"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private getNationalDataRoamingPreferenceSetting()I
    .locals 5

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string v2, "national_roaming_preference"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v3

    const/4 v4, 0x2

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;II)I
    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1900(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getNationalDataRoamingSetting()I
    .locals 5

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string v2, "national_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;II)I
    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1900(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getNationalRoamingUiValue()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getRoamingSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalDataRoamingSetting()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->getDataRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method private final getSubId()I
    .locals 4

    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    const-string v1, "DataRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId: using subId from getDefaultDataSubId, mSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    goto :goto_0
.end method

.method private setEuRoamingSetting(Z)I
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string v1, "eu_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v2

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;IZ)I
    invoke-static {v0, v1, v2, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1800(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private setEuRoamingWarningState(Z)V
    .locals 5
    .param p1    # Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eu_roaming_warning"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNationalDataRoamingSetting(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string v1, "national_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v2

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;II)I
    invoke-static {v0, v1, v2, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2000(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    return-void
.end method

.method private setNationalDatatRoamingPreferenceSetting(I)I
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string v1, "national_roaming_preference"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v2

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;II)I
    invoke-static {v0, v1, v2, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2000(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setRoamingSetting(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->setDataRoaming(Z)V

    goto :goto_1
.end method

.method private showDataRoamingWarning()V
    .locals 3

    const v0, 0x16204a98

    const v1, 0x7f0900f1

    const v2, 0x7f09021a

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    return-void
.end method

.method private showEuRoamingWarning()V
    .locals 3

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;-><init>()V

    const v1, 0x16204a9b

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showInternationalDataRoamingWarning(I)V
    .locals 2
    .param p1    # I

    const v0, 0x1040014

    const v1, 0x7f0900f3

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    return-void
.end method

.method private showNationalDataRoamingWarning(I)V
    .locals 2
    .param p1    # I

    const v0, 0x1040014

    const v1, 0x7f0900f2

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    return-void
.end method

.method private showRoamingBlockedNotification()V
    .locals 10

    const v7, 0x10406fd

    const v3, 0x10406fe

    const v1, 0x108074d

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v8, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private updateEuRoamingUi(I)V
    .locals 1
    .param p1    # I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateEuRoamingUi(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEuRoamingUi(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "DataRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEuRoamingUi: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateNationalRoamingUi(I)V
    .locals 3
    .param p1    # I

    const-string v0, "DataRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNationalRoamingUi: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateRoamingUi(I)V
    .locals 1
    .param p1    # I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRoamingUi(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void
.end method

.method private updateUi()V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getRoamingSetting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(Z)V

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getEuRoamingSetting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateEuRoamingUi(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalDataRoamingPreferenceSetting()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateNationalRoamingUi(I)V

    :cond_1
    return-void
.end method

.method private updateUi(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const-string v0, "DataRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUi: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-nez v0, :cond_1

    const-string v0, "data_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    if-eqz v0, :cond_2

    const-string v0, "eu_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateEuRoamingUi(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_3

    const-string v0, "national_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_0

    const-string v0, "national_roaming_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateNationalRoamingUi(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setSubIdFromExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "DataRoamingSettings"

    const-string v1, "onActivityResult: unknown requestCode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->decodeEnableEuRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingSetting(Z)I

    :cond_1
    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->decodeDisableWarning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingWarningState(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16204a98
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060055

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createUi()V

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->register()V

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->register()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->unRegister()V

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->unRegister()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi()V

    return-void
.end method

.method setSubIdFromExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string v3, "subscription"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "subscription"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "DataRoamingSettings"

    const-string v4, "setSubIdFromExtras: invalid subId in extras."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DataRoamingSettings"

    const-string v4, "setSubIdFromExtras: subId in extras is not an int."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
