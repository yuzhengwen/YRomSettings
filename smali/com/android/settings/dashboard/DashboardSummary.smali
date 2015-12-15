.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 24
    .param p1    # Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v18, 0x1

    :goto_1
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v13, :cond_5

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/dashboard/DashboardCategory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040031

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v3, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v2, 0x7f0f0063

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0064

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v22

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    new-instance v19, Lcom/android/settings/dashboard/DashboardTileView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iget-boolean v2, v5, Lcom/android/settings/dashboard/DashboardTile;->isDisabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setEnabled(Z)V

    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v18, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setFocusableInTouchMode(Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->requestFocusFromTouch()Z

    const/16 v18, 0x0

    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v20

    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/res/Resources;
    .param p3    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4    # Landroid/widget/ImageView;
    .param p5    # Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPackage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_1

    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040030

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
