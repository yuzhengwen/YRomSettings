.class Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SomcSearchResultsAdapter"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1    # I

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-boolean v6, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    if-nez v6, :cond_0

    if-nez p2, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "this should only be called when the cursor is valid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t move cursor to position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p2

    const v6, 0x7f0f01a7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0f01a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v6, 0x7f0f01a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0f01a3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;

    if-eqz v2, :cond_2

    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->header:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->header:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-object v5

    :cond_3
    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->noMatch:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->noMatch:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->summary:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSearchResultAdapter(Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;)V
    .locals 0
    .param p1    # Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mDataValid:Z

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResultsAdapter;->mSearchAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
