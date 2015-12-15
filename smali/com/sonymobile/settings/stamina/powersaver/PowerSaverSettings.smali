.class public Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.super Landroid/preference/PreferenceFragment;
.source "PowerSaverSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field private static mBrightness:I

.field private static mBrightnessDialogIsShowing:Z

.field private static mBrightnessFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

.field private static mTimeoutFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;


# instance fields
.field private mActivation:Landroid/view/View;

.field private mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

.field private mHint:Landroid/view/View;

.field private mHintDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTimeoutDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$7;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$7;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setActivationLevelText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Z)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->onActivationClicked()V

    return-void
.end method

.method static synthetic access$500()Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    sput-object p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialogIsShowing:Z

    return p0
.end method

.method static synthetic access$800()Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    sput-object p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    return-void
.end method

.method private createAndShowHintDialog()V
    .locals 4

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090078

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f090079

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090077

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private find([II)I
    .locals 2
    .param p1    # [I
    .param p2    # I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCurrentTimeout()I
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private onActivationClicked()V
    .locals 2

    sget-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    return-void
.end method

.method private removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .param p2    # [I
    .param p3    # [Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v1, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->saved:I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget v3, p2, v0

    if-ge v3, v1, :cond_1

    aget-object v3, p3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getCurrentTimeout()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    return-object v3
.end method

.method private setActivationLevelText(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v2, 0x7f0f01cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUiEnabled(Z)V
    .locals 5
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v4, 0x7f0f01cc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v4, 0x7f0f01cd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->setPowerSaverEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method private showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 6
    .param p1    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iget-boolean v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->find([II)I

    move-result v1

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090032

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;

    invoke-direct {v4, p0, p1, v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$6;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$6;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    new-instance v1, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;Landroid/os/Bundle;)V

    sput-object v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    :cond_0
    sget-boolean v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialogIsShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    sget-object v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->show(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    sget v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightness:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setSeekbarProgress(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    if-eqz p1, :cond_3

    const-string v0, "lbmHintDialogIsShown"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V

    :cond_0
    const-string v0, "lbmTimeoutDialogIsShown"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    :cond_1
    const-string v0, "lbmBrightnessDialogIsShown"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    :cond_2
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    sget-object v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->show(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialogIsShowing:Z

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f0400d5

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f01c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    const v2, 0x7f0400d3

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v2, 0x7f0400d2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v2, 0x7f0400ce

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->isShowing()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialogIsShowing:Z

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->getSeekbarProgress()I

    move-result v0

    sput v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightness:I

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->close()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    sget-object v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverBatteryThreshold(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setActivationLevelText(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v3, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v3, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    const-string v3, "lbmHintDialogIsShown"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    move v1, v2

    :goto_1
    const-string v2, "lbmTimeoutDialogIsShown"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "lbmBrightnessDialogIsShown"

    sget-boolean v3, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialogIsShowing:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    goto :goto_1
.end method
