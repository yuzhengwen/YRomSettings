.class public final Lcom/sonymobile/settings/LocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/LocaleAdapter$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerColor:I

.field private mDividerHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerColor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerHeight:I

    iput-object p1, p0, Lcom/sonymobile/settings/LocaleAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/LocaleAdapter;->getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;

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
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/LocaleAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Ljava/util/Locale;)I
    .locals 5
    .param p1    # Ljava/util/Locale;

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p2, Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerColor:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-object p2

    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400be

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/CheckedTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    move-object v2, p2

    check-cast v2, Landroid/widget/CheckedTextView;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setMinEms(I)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/LocaleAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sonymobile/settings/LocaleAdapter;->mDividerColor:I

    return-void
.end method
