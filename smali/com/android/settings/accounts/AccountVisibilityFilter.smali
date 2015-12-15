.class public Lcom/android/settings/accounts/AccountVisibilityFilter;
.super Ljava/lang/Object;
.source "AccountVisibilityFilter.java"


# instance fields
.field private mHiddenAccounts:[Ljava/lang/String;

.field private mWhiteListAccounts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    return-void
.end method

.method private isAccountInInvisibleList(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isAccountInWhiteList(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isAccountVisibleInAddingList(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccountVisibleInManagerList(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
