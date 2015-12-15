.class public Lcom/android/settings/applications/AppOpsDetails;
.super Landroid/app/Fragment;
.source "AppOpsDetails.java"


# instance fields
.field private final MODE_ALLOWED:I

.field private final MODE_ASK:I

.field private final MODE_IGNORED:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppVersion:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperationsSection:Landroid/widget/LinearLayout;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/AppOpsDetails;->MODE_ALLOWED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/AppOpsDetails;->MODE_IGNORED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/AppOpsDetails;->MODE_ASK:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppOpsDetails;I)I
    .locals 1
    .param p0    # Lcom/android/settings/applications/AppOpsDetails;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpsDetails;->positionToMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0    # Lcom/android/settings/applications/AppOpsDetails;

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private modeToPosition(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionToMode(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private refreshUi()Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    const/16 v22, 0x0

    :goto_0
    return v22

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v10, ""

    sget-object v4, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    array-length v11, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_5

    aget-object v20, v4, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f040008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    iget-object v10, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v14

    iget v0, v14, Landroid/content/pm/PermissionGroupInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const v22, 0x7f0f0013

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    const v22, 0x7f0f0014

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v22, 0x7f0f0015

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v22, 0x7f0f0016

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    const v22, 0x7f0f0017

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Switch;

    const/16 v22, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v23

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/applications/AppOpsDetails;->modeToPosition(I)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v22, Lcom/android/settings/applications/AppOpsDetails$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Lcom/android/settings/applications/AppOpsDetails$1;-><init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v23

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v22

    if-nez v22, :cond_2

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v22, Lcom/android/settings/applications/AppOpsDetails$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Lcom/android/settings/applications/AppOpsDetails$2;-><init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    const/16 v22, 0x0

    goto :goto_4

    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto/16 :goto_1

    :cond_5
    const/16 v22, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v22

    goto/16 :goto_3
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2200

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v3

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "AppOpsDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1    # Landroid/content/pm/PackageInfo;

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0f0011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f0f000c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0f000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f00d7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090600

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1    # Z
    .param p2    # Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->retrieveAppEntry()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const v1, 0x7f040007

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method
