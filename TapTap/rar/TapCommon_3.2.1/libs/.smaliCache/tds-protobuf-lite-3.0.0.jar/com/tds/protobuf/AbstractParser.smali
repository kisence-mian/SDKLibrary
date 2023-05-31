.class public abstract Lcom/tds/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/tds/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/tds/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMessageInitialized(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    .local p1, "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 71
    :cond_9
    invoke-direct {p0, p1}, Lcom/tds/protobuf/AbstractParser;->newUninitializedMessageException(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/tds/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 75
    :cond_16
    :goto_16
    return-object p1
.end method

.method private newUninitializedMessageException(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/UninitializedMessageException;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/tds/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    .local p1, "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    instance-of v0, p1, Lcom/tds/protobuf/AbstractMessageLite;

    if-eqz v0, :cond_c

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/AbstractMessageLite;

    invoke-virtual {v0}, Lcom/tds/protobuf/AbstractMessageLite;->newUninitializedMessageException()Lcom/tds/protobuf/UninitializedMessageException;

    move-result-object v0

    return-object v0

    .line 59
    :cond_c
    new-instance v0, Lcom/tds/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/tds/protobuf/UninitializedMessageException;-><init>(Lcom/tds/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    .line 250
    invoke-direct {p0, v0}, Lcom/tds/protobuf/AbstractParser;->checkMessageInitialized(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ByteString;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/AbstractParser;->checkMessageInitialized(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/CodedInputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    .line 90
    invoke-direct {p0, v0}, Lcom/tds/protobuf/AbstractParser;->checkMessageInitialized(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lcom/tds/protobuf/AbstractParser;->checkMessageInitialized(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BII)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/protobuf/AbstractParser;->parseFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/tds/protobuf/AbstractParser;->checkMessageInitialized(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/tds/protobuf/AbstractParser;->parseFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Lcom/tds/protobuf/ByteString;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/tds/protobuf/CodedInputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parseFrom([B)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/AbstractParser;->parseFrom([BII)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/AbstractParser;->parseFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parseFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 230
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 231
    const/4 v1, 0x0

    return-object v1

    .line 233
    :cond_9
    invoke-static {v0, p1}, Lcom/tds/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_19

    move v0, v1

    .line 236
    .local v0, "size":I
    nop

    .line 237
    new-instance v1, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 238
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v2

    return-object v2

    .line 234
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    :catch_19
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/tds/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 7
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ByteString;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->newCodedInput()Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 105
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/MessageLite;
    :try_end_a
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_a} :catch_16

    .line 107
    .local v1, "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 110
    nop

    .line 111
    return-object v1

    .line 108
    :catch_10
    move-exception v2

    .line 109
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :try_start_11
    invoke-virtual {v2, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":Lcom/tds/protobuf/ByteString;
    .end local p2    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_16
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_16} :catch_16

    .line 112
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":Lcom/tds/protobuf/ByteString;
    .restart local p2    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :catch_16
    move-exception v0

    .line 113
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    return-object v0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 7
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 197
    .local v0, "codedInput":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    .line 199
    .local v1, "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 202
    nop

    .line 203
    return-object v1

    .line 200
    :catch_10
    move-exception v2

    .line 201
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public parsePartialFrom([B)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    sget-object v1, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom([BII)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/tds/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/tds/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/tds/protobuf/CodedInputStream;->newInstance([BII)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 139
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/MessageLite;
    :try_end_a
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_a} :catch_16

    .line 141
    .local v1, "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 144
    nop

    .line 145
    return-object v1

    .line 142
    :catch_10
    move-exception v2

    .line 143
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :try_start_11
    invoke-virtual {v2, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_16
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_16} :catch_16

    .line 146
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/tds/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    .restart local p4    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :catch_16
    move-exception v0

    .line 147
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public parsePartialFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/tds/protobuf/ByteString;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([B)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BII)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tds/protobuf/AbstractParser;, "Lcom/tds/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractParser;->parsePartialFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method
