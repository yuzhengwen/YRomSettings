.class public Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;
.super Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.source "AidRoutingSimulatorSony.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getMaxAidEntries()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getMaxAidLength()I
    .locals 1

    const/16 v0, 0x280

    return v0
.end method
