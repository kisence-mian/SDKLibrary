.class public Lcom/tds/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private unfinishedMessage:Lcom/tds/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/tds/protobuf/MessageLite;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/tds/protobuf/MessageLite;

    .line 47
    return-void
.end method

.method static invalidEndTag()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 106
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidTag()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 101
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidUtf8()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 132
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidWireType()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 111
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static malformedVarint()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 96
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static negativeSize()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 90
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static parseFailure()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 128
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static recursionLimitExceeded()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 116
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static sizeLimitExceeded()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 122
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static truncatedMessage()Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 82
    new-instance v0, Lcom/tds/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getUnfinishedMessage()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/tds/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/tds/protobuf/MessageLite;

    return-object v0
.end method

.method public setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;
    .registers 2
    .param p1, "unfinishedMessage"    # Lcom/tds/protobuf/MessageLite;

    .line 61
    iput-object p1, p0, Lcom/tds/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/tds/protobuf/MessageLite;

    .line 62
    return-object p0
.end method

.method public unwrapIOException()Ljava/io/IOException;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method
