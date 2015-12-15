.class Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    return-void
.end method

.method private updateVisibility(Landroid/view/View;I)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # I

    const v6, 0x7f0f01a4

    const v5, 0x7f0f01a1

    const v4, 0x7f0f01a0

    const/4 v3, 0x4

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f01a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f01a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCursorForPosition(I)Landroid/database/Cursor;
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    move v1, p1

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    :goto_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    # getter for: Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v1, p1, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 14
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v6, 0x7f020033

    :goto_1
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-object v0

    :catch_0
    move-exception v9

    const-string v0, "SearchResultsSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot create Context for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    sub-int v12, p1, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v12}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItemViewType(I)I

    move-result v10

    if-nez p2, :cond_0

    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f0400c0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-nez v12, :cond_1

    if-nez p2, :cond_1

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "this should only be called when the cursor is valid"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_0
    invoke-direct {p0, v11, v10}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->updateVisibility(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v12, :cond_0

    invoke-direct {p0, v11, v10}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->updateVisibility(Landroid/view/View;I)V

    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v13, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    sub-int v13, p1, v13

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v11, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    :goto_1
    return-object v12

    :cond_1
    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v13, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v13

    sub-int v13, p1, v13

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v11, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    :cond_2
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "couldn\'t move cursor to position "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    const v12, 0x7f0f01a5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v12, 0x7f0f0036

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v12, 0x7f0f0035

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    iget-object v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    const-string v13, "results no match"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const v12, 0x7f0f01a4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v9, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    const-string v12, "@="

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v12, v1

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    const/4 v12, 0x1

    aget-object v9, v1, v12

    :cond_4
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    move-object v12, v11

    goto/16 :goto_1

    :cond_5
    const-string v12, ""

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    const v13, 0x7f020033

    if-eq v12, v13, :cond_6

    iget-object v6, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    :try_start_0
    iget v12, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    invoke-virtual {v6, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v12, "SearchResultsSummary"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot load Drawable for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v12, 0x7f020033

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSomcResultAdapter(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)V
    .locals 0
    .param p1    # Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mSomcAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
