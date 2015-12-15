.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizard;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mEmptyFooter:Landroid/widget/TextView;

.field private mListLastEmpty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v6, [I

    const v4, 0x7f010039

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x7f090349

    invoke-interface {p1, v5, v6, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v2, 0x4

    const v3, 0x7f090347

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected connect(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->networkSelected()V

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1    # Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->networkSelected()V

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1a40000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizard;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v5, 0x7f0400b8

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const v5, 0x7f0f0036

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    const v5, 0x7f0400bb

    invoke-virtual {p1, v5, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    const v5, 0x7f0400ba

    invoke-virtual {p1, v5, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v8, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v6, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$1;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizard;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0f0196

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object v4
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method protected updateFooter()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
