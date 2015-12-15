.class public Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
.super Landroid/app/Fragment;
.source "AppUsageOverview.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;,
        Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

.field private mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

.field private mLoaded:Z

.field private mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRootView:Landroid/view/View;

.field private mUnusedObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$2;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$2;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoaded:Z

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
    .param p1    # Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Z)Z
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->startLoading()V

    return-void
.end method

.method private startLoading()V
    .locals 6

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoaded:Z

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0, v5}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$1;)V

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;-><init>(Landroid/content/Context;Ljava/lang/Runnable;II)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->setHasOptionsMenu(Z)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->setRetainInstance(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mUnusedObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mUnusedObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerUnusedAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerConsumingAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->startLoading()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f09006c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f0400cc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;

    const v2, 0x7f0f01c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p3, :cond_0

    const-string v1, "listview"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mUnusedObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09006c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v7

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;

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
