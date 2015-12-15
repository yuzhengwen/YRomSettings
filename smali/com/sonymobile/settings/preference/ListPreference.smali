.class public Lcom/sonymobile/settings/preference/ListPreference;
.super Landroid/preference/ListPreference;
.source "ListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v1, p1, p2, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    sget-object v1, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p0}, Lcom/sonymobile/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/ListPreference;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/preference/ListPreference;

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/ListPreference;->updateListPreference()V

    return-void
.end method

.method private persistValue(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateListPreference()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/preference/ListPreference;->setValueIndex(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dependOn()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/preference/ListPreference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sonymobile/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/preference/ListPreference;->persistValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 5

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/ListPreference;->updateListPreference()V

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sonymobile/settings/preference/ListPreference$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/ListPreference$1;-><init>(Lcom/sonymobile/settings/preference/ListPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
