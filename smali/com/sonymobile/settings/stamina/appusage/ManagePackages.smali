.class public Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.super Landroid/app/Fragment;
.source "ManagePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;,
        Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;,
        Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;
    }
.end annotation


# instance fields
.field private mCancelClickListener:Landroid/view/View$OnClickListener;

.field private mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLoaded:Z

.field private mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

.field private mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

.field private mRemoveButton:Landroid/widget/Button;

.field private mRemoveClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private mUidsToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnusedObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoaded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$2;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mCancelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
    .param p1    # Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->updateRemoveButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Z)Z
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->startLoading()V

    return-void
.end method

.method private startLoading()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoaded:Z

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0, v4}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;)V

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateRemoveButton()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006f

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->setRetainInstance(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUnusedObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUnusedObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerUnusedAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerConsumingAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->startLoading()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const v3, 0x7f0400cb

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    const v4, 0x7f0f01c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v3, 0x7f0400c9

    invoke-virtual {p1, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoaded:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->updateRemoveButton()V

    if-eqz p3, :cond_0

    const-string v3, "listview"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    const v4, 0x7f0f01c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->updateRemoveButton()V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    const v4, 0x7f0f003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v3, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUnusedObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mConsumingObserver:Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;

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
