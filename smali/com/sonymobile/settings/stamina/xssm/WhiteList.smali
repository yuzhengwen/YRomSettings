.class public Lcom/sonymobile/settings/stamina/xssm/WhiteList;
.super Landroid/app/Fragment;
.source "WhiteList.java"


# instance fields
.field private mTemporaryWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v3, "package"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mTemporaryWhitelist:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mWhitelist:Ljava/util/HashSet;

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mTemporaryWhitelist:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mWhitelist:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mWhitelist:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mTemporaryWhitelist:Ljava/util/HashSet;

    return-void
.end method

.method public getTemporaryWhiteList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mTemporaryWhitelist:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->init()V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mTemporaryWhitelist:Ljava/util/HashSet;

    return-object v0
.end method

.method public getWhiteList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mWhitelist:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->init()V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->mWhitelist:Ljava/util/HashSet;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->setRetainInstance(Z)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->init()V

    return-void
.end method
