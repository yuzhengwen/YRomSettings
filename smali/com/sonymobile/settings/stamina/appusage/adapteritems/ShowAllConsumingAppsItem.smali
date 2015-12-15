.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;
.super Ljava/lang/Object;
.source "ShowAllConsumingAppsItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;->getViewResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v1, 0x7f0f0036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getViewResourceId()I
    .locals 1

    const v0, 0x7f0400c8

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 7
    .param p1    # Landroid/app/Fragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "what_to_show"

    const-string v3, "consuming"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090062

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method
