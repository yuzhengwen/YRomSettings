.class Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;
.super Ljava/lang/Object;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyPaymentAppPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;
    }
.end annotation


# instance fields
.field private mAuthRspFilter:Landroid/content/IntentFilter;

.field private mAuthorizationCondition:Landroid/os/ConditionVariable;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mDrawableBanner:Landroid/graphics/drawable/Drawable;

.field private volatile mHasCertificate:Z

.field private mIsAuthRec:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

.field final synthetic this$0:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;Landroid/app/Activity;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
    .param p3    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthRspFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mHasCertificate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mIsAuthRec:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mContext:Landroid/content/Context;

    iget-object v0, p3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, p3}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->initDrawableBanner(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mHasCertificate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0    # Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private initDrawableBanner(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 12
    .param p1    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    :try_start_0
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->isAuthorized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v1, 0x2

    new-array v7, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    aput-object v2, v7, v1

    const/4 v1, 0x1

    aput-object v10, v7, v1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v6, :cond_0

    if-nez v9, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bannerBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    const/4 v3, -0x8

    const/16 v4, -0x10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v5, v11

    add-int/lit8 v5, v5, 0x8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized isAuthorized(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mHasCertificate:Z

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->triggerAuthorization(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mIsAuthRec:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mHasCertificate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private triggerAuthorization(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mIsAuthRec:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;-><init>(Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;Lcom/android/settings/nfc/PaymentSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mIsAuthRec:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mIsAuthRec:Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference$IsAuthorizedReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mAuthRspFilter:Landroid/content/IntentFilter;

    const-string v4, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mContext:Landroid/content/Context;

    const-string v2, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getDrawableBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$DummyPaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
