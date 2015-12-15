.class public Lcom/sonymobile/settings/preference/IntentPreference;
.super Landroid/preference/Preference;
.source "IntentPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mChooserTitle:Ljava/lang/String;

.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/IntentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    sget-object v1, Lcom/android/settings/R$styleable;->IntentPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/IntentPreference;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/preference/IntentPreference;

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->updateIntentPreference()V

    return-void
.end method

.method private updateIntentPreference()V
    .locals 6

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-gt v1, v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/preference/IntentPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SomcPreferences"

    const-string v5, "SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/preference/IntentPreference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 5

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SomcPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException on preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->updateIntentPreference()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sonymobile/settings/preference/IntentPreference$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/settings/preference/IntentPreference$1;-><init>(Lcom/sonymobile/settings/preference/IntentPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method
