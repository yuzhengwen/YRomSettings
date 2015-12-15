.class public Lcom/android/settings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mEncryptSdCard:Z

.field private mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$1;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$2;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/CryptKeeperSettings;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/CryptKeeperSettings;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeperSettings;)Z
    .locals 1
    .param p0    # Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Lcom/android/settings/CryptKeeperSettings;->checkEncryptionRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeperSettings;I)Z
    .locals 1
    .param p0    # Lcom/android/settings/CryptKeeperSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private checkEncryptionRequired()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatusIgnoreScreenlock()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    :goto_1
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1    # I

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    const v4, 0x7f090254

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v1, 0x7f090255

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sdcard"

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "device_policy"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatusIgnoreScreenlock()I

    move-result v4

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v3

    if-eq v4, v7, :cond_0

    if-eq v3, v7, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    const-string v2, "type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iput-boolean p2, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v5, 0x7f04002c

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f0f0059

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v5

    if-ne v5, v9, :cond_0

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iput-boolean v7, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f0f005b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f0f005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v5

    :cond_2
    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v9, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "shared"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "CryptKeeperSettings"

    const-string v6, "Get sd card path failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
