.class final Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction$1;
.super Ljava/lang/Object;
.source "Encryption.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction$1;->findValueByNumber(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    .locals 1
    .param p1    # I

    invoke-static {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v0

    return-object v0
.end method
