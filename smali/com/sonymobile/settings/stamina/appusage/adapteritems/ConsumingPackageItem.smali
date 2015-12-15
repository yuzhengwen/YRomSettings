.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;
.super Ljava/lang/Object;
.source "ConsumingPackageItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# instance fields
.field private mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    return-void
.end method

.method private createDetailsBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_name"

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppName()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_traffic"

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getNetworkData()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "cpu_usage"

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getCpuUsage()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private showPackageDetails(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/app/Fragment;
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090062

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->getViewResourceId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v2, 0x7f0f000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getViewResourceId()I
    .locals 1

    const v0, 0x7f0400c7

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->createDetailsBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingPackageItem;->showPackageDetails(Landroid/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method
