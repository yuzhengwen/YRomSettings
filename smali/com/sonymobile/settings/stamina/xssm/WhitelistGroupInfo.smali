.class public Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;
.super Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
.source "WhitelistGroupInfo.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInfoIntent:Landroid/content/Intent;

.field private mLabel:Ljava/lang/CharSequence;

.field private mSettingIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/content/ComponentName;
    .param p5    # Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;-><init>()V

    if-eqz p4, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mSettingIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mSettingIntent:Landroid/content/Intent;

    invoke-virtual {v3, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    if-eqz p5, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mInfoIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mInfoIntent:Landroid/content/Intent;

    invoke-virtual {v3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->getPkgNameFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-direct {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->getPkgNameFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p3, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :try_start_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    return-void
.end method

.method private getPkgNameFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method


# virtual methods
.method protected getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3
    .param p1    # Landroid/view/View;

    const v1, 0x7f0f01d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f01d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method protected getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mInfoIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mInfoIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onItemClick(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mSettingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;->mSettingIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
