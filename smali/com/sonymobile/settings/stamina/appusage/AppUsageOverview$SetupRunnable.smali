.class Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;
.super Ljava/lang/Object;
.source "AppUsageOverview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$1;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
    .param p2    # Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$1;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V

    return-void
.end method

.method private getItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget-object v5, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;
    invoke-static {v5}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$400(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getUnusedPackages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/UnusedAppsHeaderItem;

    invoke-direct {v5, v4}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/UnusedAppsHeaderItem;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v4, v6, :cond_0

    invoke-virtual {v3, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllUnusedAppsItem;

    invoke-direct {v5}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllUnusedAppsItem;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;
    invoke-static {v5}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$400(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getConsumingPackages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;

    invoke-direct {v5, v1}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v1, v6, :cond_1

    invoke-virtual {v0, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;

    invoke-direct {v5}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ShowAllConsumingAppsItem;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$000(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$000(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f01c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    new-instance v3, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    # setter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$102(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$100(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$200(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    const/4 v3, 0x1

    # setter for: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->mLoaded:Z
    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$302(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Z)Z

    return-void
.end method
