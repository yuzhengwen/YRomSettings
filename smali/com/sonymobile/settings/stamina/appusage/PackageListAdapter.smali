.class public Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageListAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getViewResourceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getViewResourceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    invoke-interface {v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getViewResourceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, p2, v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 2

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method
