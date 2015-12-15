.class Lcom/android/settings/wifi/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# direct methods
.method static get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZZ)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/NetworkInfo$DetailedState;
    .param p2    # Z
    .param p3    # Z

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZZ)Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/net/NetworkInfo$DetailedState;
    .param p3    # Z
    .param p4    # Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    const v3, 0x7f090302

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez p1, :cond_2

    const v3, 0x7f0b000f

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const v3, 0x7f0b0010

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, p2, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez p1, :cond_4

    const v3, 0x7f09008d

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const v3, 0x7f09008e

    goto :goto_2

    :cond_5
    aget-object v3, v1, v2

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
