.class public final Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Encryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 1

    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->create()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 3

    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    invoke-direct {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;-><init>()V

    new-instance v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;-><init>(Lcom/sonymobile/settings/idd/Encryption$1;)V

    iput-object v1, v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->build()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    invoke-static {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->buildPartial()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->buildPartial()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->clear()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;-><init>(Lcom/sonymobile/settings/idd/Encryption$1;)V

    iput-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->clone()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->clone()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->clone()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 2

    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->create()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->mergeFrom(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->clone()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->getDefaultInstanceForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->getDefaultInstanceForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .locals 1

    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getDefaultInstance()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->internalGetResult()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    invoke-virtual {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1    # Lcom/google/protobuf/CodedInputStream;
    .param p2    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1    # Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->mergeFrom(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1    # Lcom/google/protobuf/CodedInputStream;
    .param p2    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 4
    .param p1    # Lcom/google/protobuf/CodedInputStream;
    .param p2    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setFunction(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setInternalState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setSdcardState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 1
    .param p1    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getDefaultInstance()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getFunction()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setFunction(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getInternalState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setInternalState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getSdcardState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setSdcardState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    goto :goto_0
.end method

.method public setFunction(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 2
    .param p1    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction:Z
    invoke-static {v0, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->access$302(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Z)Z

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    # setter for: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->function_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    invoke-static {v0, p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->access$402(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    return-object p0
.end method

.method public setInternalState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 2
    .param p1    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState:Z
    invoke-static {v0, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->access$502(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Z)Z

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    # setter for: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->internalState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    invoke-static {v0, p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->access$602(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    return-object p0
.end method

.method public setSdcardState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 2
    .param p1    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState:Z
    invoke-static {v0, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->access$702(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Z)Z

    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->result:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    # setter for: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->sdcardState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
    invoke-static {v0, p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->access$802(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    return-object p0
.end method
