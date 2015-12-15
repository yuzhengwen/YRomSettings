.class public Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProxyPreferenceRootAdapter.java"


# instance fields
.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mTextColorPrimary:I

.field private mTextColorSecondary:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/ListAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->getThemeColors(Landroid/content/Context;)V

    return-void
.end method

.method private changeTextColorIfNecessary(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private getThemeColors(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorPrimary:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorSecondary:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x1010036
        0x1010038
    .end array-data
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorPrimary:I

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->changeTextColorIfNecessary(Landroid/view/View;I)V

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mTextColorSecondary:I

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->changeTextColorIfNecessary(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1    # Landroid/database/DataSetObserver;

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1    # Landroid/database/DataSetObserver;

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;->mRootAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
