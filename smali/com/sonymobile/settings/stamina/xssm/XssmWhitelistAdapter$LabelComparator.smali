.class Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;
.super Ljava/lang/Object;
.source "XssmWhitelistAdapter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)I
    .locals 2
    .param p1    # Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    check-cast p2, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$LabelComparator;->compare(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)I

    move-result v0

    return v0
.end method
