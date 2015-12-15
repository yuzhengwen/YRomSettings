.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# instance fields
.field private mAutoFinishOnConnection:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsNetworkRequired:Z

.field private mIsWifiRequired:Z

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSelectedNetwork:Z

.field private mWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/wifi/WifiSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WifiSetupActivity;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method private isNetworkConnected()Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshConnectionState()V
    .locals 4

    const v1, 0x7f0901f6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSetupActivity"

    const-string v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->finishOrNext(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    :cond_0
    const/high16 v0, 0x7f090000

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0
.end method

.method private setNextButtonEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setNextButtonText(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finishOrNext(I)V
    .locals 3
    .param p1    # I

    const-string v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishOrNext resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUsingWizardManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->isUsingWizardManager(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->isUsingWizardManager(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->sendResultsToSetupWizard(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish()V

    goto :goto_0
.end method

.method getWifiSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method networkSelected()V
    .locals 2

    const-string v0, "WifiSetupActivity"

    const-string v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
    .param p2    # I
    .param p3    # Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "wifi_auto_finish_on_connect"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    const-string v2, "is_network_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    const-string v2, "is_wifi_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    const-string v2, "wifi_require_user_network_selection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->onBackPressed()V

    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->finishOrNext(I)V

    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
