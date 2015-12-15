.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;,
        Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;,
        Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;
    }
.end annotation


# instance fields
.field private mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

.field private mDummyPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0    # Lcom/android/settings/nfc/PaymentSettings;
    .param p1    # Ljava/util/List;
    .param p2    # Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/PaymentSettings;->isListValid(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/settings/nfc/PaymentSettings;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/android/settings/nfc/PaymentSettings;
    .param p1    # Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/PaymentSettings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0    # Lcom/android/settings/nfc/PaymentSettings;
    .param p1    # Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->updateTexts(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/nfc/PaymentSettings;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isListValid(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateTexts(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .param p1    # Landroid/preference/PreferenceScreen;

    const/4 v8, 0x0

    const/16 v7, 0x8

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f00f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f00f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f00f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v5}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v3

    invoke-virtual {v2, v8}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    const v5, 0x7f0909cf

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "payment_service_search_uri"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f0909d2

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_0
    new-instance v0, Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->showSelectServiceMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0900e0

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sonymobile.settings.nfc.NFC_HCE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040069

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    invoke-direct {p0, v1, v6}, Lcom/android/settings/nfc/PaymentSettings;->isListValid(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-nez v11, :cond_0

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    :goto_1
    iget-object v1, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->getDrawableBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const-string v1, "PaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load banner drawable of service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    invoke-virtual {v1, v12}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->cancel(Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    if-nez v1, :cond_5

    const/4 v7, 0x0

    :goto_3
    new-instance v3, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;-><init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/preference/PreferenceScreen;)V

    iput-object v3, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mCertificateVerificationTask:Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;

    new-array v3, v12, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    invoke-direct {p0, v8}, Lcom/android/settings/nfc/PaymentSettings;->updateTexts(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3
.end method
