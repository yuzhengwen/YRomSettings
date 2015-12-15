.class Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;
.super Landroid/os/AsyncTask;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificateVerificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p2    # Landroid/app/Activity;
    .param p5    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;",
            "Landroid/preference/PreferenceScreen;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mCurrentPreferences:Ljava/util/List;

    iput-object p5, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mCurrentPreferences:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    # invokes: Lcom/android/settings/nfc/PaymentSettings;->isListValid(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v3, v4, v5}, Lcom/android/settings/nfc/PaymentSettings;->access$100(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mCurrentPreferences:Ljava/util/List;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;-><init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # setter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v1, p1}, Lcom/android/settings/nfc/PaymentSettings;->access$202(Lcom/android/settings/nfc/PaymentSettings;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    const/4 v6, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mAppInfos:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mDummyPreferences:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/nfc/PaymentSettings;->access$200(Lcom/android/settings/nfc/PaymentSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    invoke-virtual {v5}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->getDrawableBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$CertificateVerificationTask;->mScreen:Landroid/preference/PreferenceScreen;

    # invokes: Lcom/android/settings/nfc/PaymentSettings;->updateTexts(Landroid/preference/PreferenceScreen;)V
    invoke-static {v1, v2}, Lcom/android/settings/nfc/PaymentSettings;->access$300(Lcom/android/settings/nfc/PaymentSettings;Landroid/preference/PreferenceScreen;)V

    return-void
.end method
