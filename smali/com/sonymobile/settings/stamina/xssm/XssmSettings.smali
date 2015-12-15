.class public Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;,
        Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;
    }
.end annotation


# static fields
.field private static mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;


# instance fields
.field private mActivatedByNothingSetDialog:Z

.field private mActivation:Landroid/preference/Preference;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mRuntimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

.field private mRuntimePreference:Landroid/preference/SwitchPreference;

.field private mShowXssmDelaySuspend:Z

.field private mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

.field private mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUserPressedStaminaSwitch:Z

.field private mXSSMApplicationsPreference:Landroid/preference/Preference;

.field private mXSSMChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mXSSMDelaySuspendChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

.field private mXSSMPreference:Landroid/preference/SwitchPreference;

.field private mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

.field private mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$3;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->registerStaminaCanceledObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;ZZ)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1    # Z
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMDelaySuspendEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setRuntimeEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)Z
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->createAndShowHintDialog()V

    return-void
.end method

.method static synthetic access$700()Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    return v0
.end method

.method private createAndShowHintDialog()V
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private isStaminaCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;->isCanceled()Z

    move-result v0

    goto :goto_0
.end method

.method private isStaminaEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    goto :goto_0
.end method

.method private registerStaminaCanceledObserver()V
    .locals 2

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setRuntimeEnabled(Z)V
    .locals 3
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private setUiEnabled(Z)V
    .locals 6
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMApplicationsPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4
.end method

.method private setXSSMDelaySuspendEnabled(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method private setXSSMEnabled(Z)V
    .locals 3
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmDelaySuspendEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMDelaySuspendEnabled(ZZ)V

    :cond_0
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->updateUi()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private unregisterStaminaCanceledObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaCanceledObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;

    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 3

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$6;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    new-instance v1, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;Landroid/os/Bundle;)V

    sput-object v1, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    sget-object v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-interface {v3}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "activatedByNothingSetDialog"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    const v2, 0x7f060057

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->addPreferencesFromResource(I)V

    const-string v2, "runtime"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    const-string v2, "xssm"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    const-string v2, "xssm_delay_suspend"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    :goto_0
    const-string v2, "xssm_applications"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMApplicationsPreference:Landroid/preference/Preference;

    const-string v2, "activation"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/preference/Preference;

    const-string v2, "hint"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$7;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "activation"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$8;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$8;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p1, :cond_2

    const-string v2, "hintDialogIsShown"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->createAndShowHintDialog()V

    :cond_1
    const-string v2, "userPressedStaminaSwitch"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    :cond_2
    return-void

    :cond_3
    const-string v2, "xssm_delay_suspend"

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->unregisterStaminaCanceledObserver()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setXSSMEnabled(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setRuntimeEnabled(Z)V

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimePreference:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMPreference:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mShowXssmDelaySuspend:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendPreference:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMDelaySuspendChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmDelaySuspendEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmDelaySuspendEnableObserver;

    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmDelaySuspendEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXSSMApplicationsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100002

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;

    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mRuntimeEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$RuntimeEnableObserver;

    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerRuntimeEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaEnableObserver;

    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->unregisterStaminaCanceledObserver()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "NothingSetDialogSharedPrefs"

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v4, v5, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "activatedByNothingSetDialog"

    invoke-interface {v1, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    iget-boolean v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, v13}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v13}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "activatedByNothingSetDialog"

    invoke-interface {v4, v5, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "hintDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "userPressedStaminaSwitch"

    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    invoke-static {v3, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaEnabled(Landroid/content/Context;Z)V

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->unregisterStaminaCanceledObserver()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method
