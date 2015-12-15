.class Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;
    }
.end annotation


# instance fields
.field private final FALSE:Ljava/lang/String;

.field private final TRUE:Ljava/lang/String;

.field private final mAuthority:Ljava/lang/String;

.field private final mBaseUri:Landroid/net/Uri;

.field public mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 2

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.sonymobile.phone.roaming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p2    # Lcom/sonymobile/settings/phone/DataRoamingSettings$1;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;IZ)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;IZ)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;

    return-object v0
.end method

.method private query(Ljava/lang/String;II)I
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/subId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p3

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return p3

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "DataRoamingSettings.RoamingHelper"

    const-string v2, "queryInt:"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private query(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private update(Ljava/lang/String;II)I
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private update(Ljava/lang/String;IZ)I
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;II)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
