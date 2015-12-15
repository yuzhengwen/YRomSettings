.class public Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
.super Landroid/app/Fragment;
.source "AppConsumingDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;
    }
.end annotation


# instance fields
.field private mEnableStaminaButton:Landroid/widget/Button;

.field private mPackageName:Ljava/lang/String;

.field private mStaminaEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->uninstallPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getBytesAsString(J)Ljava/lang/String;
    .locals 1
    .param p1    # J

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setIntentAndFinish()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "UPDATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->setIntentAndFinish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$StaminaEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v8, 0x7f0400c2

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "package_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mPackageName:Ljava/lang/String;

    const v8, 0x7f090064

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "app_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0f01a9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "data_traffic"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const v8, 0x7f0f01b1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getBytesAsString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "cpu_usage"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const v8, 0x7f0f01af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    long-to-double v10, v2

    const/4 v9, 0x1

    invoke-static {v8, v10, v11, v9}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0f01ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v8, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0f01aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    new-instance v9, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;

    invoke-direct {v9, p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v8, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    return-object v7

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mEnableStaminaButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->mStaminaEnableObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
