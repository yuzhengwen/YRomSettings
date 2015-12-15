.class public Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;
.super Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.source "AidRoutingSimulatorNxp.java"


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

    const/16 v0, 0x14

    return v0
.end method

.method public getMaxAidLength()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;->mRoutedAids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;->mRoutedAids:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
