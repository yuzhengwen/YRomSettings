.class final Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AidResolveInfo"
.end annotation


# instance fields
.field category:Ljava/lang/String;

.field defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

.field mustRoute:Z

.field services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    return-void
.end method
