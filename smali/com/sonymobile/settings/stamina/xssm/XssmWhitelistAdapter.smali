.class public Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.super Landroid/widget/BaseAdapter;
.source "XssmWhitelistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/database/Cursor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhiteListFromCursor(Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhitelistGroupsFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initWhiteListFromCursor(Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V
    .locals 6
    .param p1    # Landroid/database/Cursor;
    .param p2    # Landroid/content/pm/PackageManager;

    const-string v3, "package"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-direct {v4, p2, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method

.method private initWhitelistGroupsFromCursor(Landroid/database/Cursor;)V
    .locals 14
    .param p1    # Landroid/database/Cursor;

    const-string v1, "settingIntentPkg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v1, "settingIntentCls"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v1, "infoIntentPkg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v1, "infoIntentCls"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v1, "icon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v11, :cond_0

    if-eqz v6, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0400da

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v2, 0x7f0f01d8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected removeItemFromList(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)V
    .locals 3
    .param p1    # Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from list, but failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
