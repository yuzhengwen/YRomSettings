.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private final getValueFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2900(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$3000(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    const-string v6, "DataRoamingSettings.RoamingHelper.Observer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChange: uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2600(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    :try_start_0
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    iget-object v6, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v6, v6, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I
    invoke-static {v6}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->getValueFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const/4 v7, 0x1

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;II)I
    invoke-static {v6, v1, v4, v7}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1900(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v6, v6, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi(Ljava/lang/String;I)V
    invoke-static {v6, v1, v7}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2800(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    goto :goto_0
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2400(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2300(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
