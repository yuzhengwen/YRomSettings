.class public Lcom/android/settings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private isTabAvailable(I)Z
    .locals 4
    .param p1    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "Creating activity"

    invoke-static {v10}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    const v10, 0x7f0400ad

    invoke-virtual {p0, v10}, Lcom/android/settings/SelectSubscription;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b007a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v10, "PACKAGE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "TARGET_CLASS"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "TITLE"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/settings/SelectSubscription;->setTitle(I)V

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SelectSubscription;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/settings/SelectSubscription;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating SelectSub activity = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    iget-object v10, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v10, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "subscription"

    invoke-virtual {v10, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iget-object v10, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v10, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v10, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v7, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/settings/SelectSubscription;->isTabAvailable(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/SelectSubscription;->isTabAvailable(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    return-void
.end method
