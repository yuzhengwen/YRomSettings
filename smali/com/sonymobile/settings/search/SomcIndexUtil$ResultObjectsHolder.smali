.class public Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
.super Ljava/lang/Object;
.source "SomcIndexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/search/SomcIndexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultObjectsHolder"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public database:Landroid/database/sqlite/SQLiteDatabase;

.field public enabled:Z

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public rank:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # I
    .param p10    # I
    .param p11    # Ljava/lang/String;
    .param p12    # Ljava/lang/String;
    .param p13    # Ljava/lang/String;
    .param p14    # Ljava/lang/String;
    .param p15    # Z
    .param p16    # Ljava/lang/String;
    .param p17    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->database:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->locale:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOn:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOff:Ljava/lang/String;

    iput-object p6, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->entries:Ljava/lang/String;

    iput-object p7, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->className:Ljava/lang/String;

    iput-object p8, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->screenTitle:Ljava/lang/String;

    iput p9, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->iconResId:I

    iput p10, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->rank:I

    iput-object p11, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->keywords:Ljava/lang/String;

    iput-object p12, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentAction:Ljava/lang/String;

    iput-object p13, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetPackage:Ljava/lang/String;

    iput-object p14, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetClass:Ljava/lang/String;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->enabled:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->key:Ljava/lang/String;

    move/from16 v0, p17

    iput v0, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->userId:I

    return-void
.end method
