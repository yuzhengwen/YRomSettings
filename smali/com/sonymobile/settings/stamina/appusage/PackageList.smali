.class public Lcom/sonymobile/settings/stamina/appusage/PackageList;
.super Landroid/preference/PreferenceFragment;
.source "PackageList.java"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

.field private mLoaded:Z

.field private mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRootView:Landroid/view/View;

.field private mShowUnusedApps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/PackageList$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/appusage/PackageList;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/PackageList;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/PackageList;
    .param p1    # Landroid/os/Bundle;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/PackageList;
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->updateList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/settings/stamina/appusage/PackageList;Z)Z
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/PackageList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    return p1
.end method

.method private startLoading()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0, v4}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;-><init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateList(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    const v3, 0x7f0f01c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v3, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    iget-boolean v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getUnusedPackages()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v0, v2}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p1, :cond_0

    const-string v2, "listview"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getConsumingPackages()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "what_to_show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;

    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/settings/stamina/appusage/PackageList$2;-><init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mShowUnusedApps:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerUnusedAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerConsumingAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f0400cc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->updateList(Landroid/os/Bundle;)V

    :cond_0
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList;->mRootView:Landroid/view/View;

    const v2, 0x7f0f01c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const-string v1, "listview"

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
