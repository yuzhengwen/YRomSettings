.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabInfo"
.end annotation


# instance fields
.field private mAdapter:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field private mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mLabel:Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .param p3    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p4    # Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    iput-object p3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mDoneClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public build(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/Button;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/widget/Button;

    const v0, 0x7f0400d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mAdapter:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public detachView()V
    .locals 2

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
