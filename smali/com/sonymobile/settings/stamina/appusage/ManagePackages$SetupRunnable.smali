.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;
.super Ljava/lang/Object;
.source "ManagePackages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
    .param p2    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;-><init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$300(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mRootView:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$300(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0f01c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoader:Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$400(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/PackageInfoLoader;->getIgnorePackages()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    new-instance v4, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    invoke-direct {v4, v0, v2}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    # setter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$102(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$100(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$500(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->updateRemoveButton()V
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$200(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$SetupRunnable;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    const/4 v4, 0x1

    # setter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mLoaded:Z
    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$602(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Z)Z

    return-void
.end method
