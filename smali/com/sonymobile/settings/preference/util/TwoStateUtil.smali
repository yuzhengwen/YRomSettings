.class public Lcom/sonymobile/settings/preference/util/TwoStateUtil;
.super Ljava/lang/Object;
.source "TwoStateUtil.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mIsOrderedBroadcast:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreference:Landroid/preference/TwoStatePreference;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;

.field private final mValueOnExtraStatusName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/preference/TwoStatePreference;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # Landroid/preference/TwoStatePreference;

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    sget-object v2, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p4, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    const-string v1, "android.intent.extra.RETURN_RESULT"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    return-void
.end method

.method private createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V

    return-object v0
.end method

.method private onChecked(Z)V
    .locals 5
    .param p1    # Z

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_5

    const-string v2, "1"

    :goto_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "0"

    goto :goto_1
.end method

.method private updateCheckBox()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    move v1, v4

    :goto_2
    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_6

    move v1, v4

    :goto_4
    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v1, v5

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_8

    move v3, v4

    :goto_5
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_9

    move v1, v4

    :goto_6
    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_5

    :cond_9
    move v1, v5

    goto :goto_6
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    new-instance v7, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(I)V

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return v8

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    return-void
.end method
