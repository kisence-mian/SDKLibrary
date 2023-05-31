.class public abstract Lcom/tds/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/AbstractMessageLite$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/tds/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/tds/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/tds/protobuf/MessageLite;"
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-static {p0, p1}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 123
    return-void
.end method

.method protected static checkByteStringIsUtf8(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p0, "byteString"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    return-void

    .line 116
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte string is not UTF-8."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 109
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method newUninitializedMessageException()Lcom/tds/protobuf/UninitializedMessageException;
    .registers 2

    .line 105
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/tds/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/UninitializedMessageException;-><init>(Lcom/tds/protobuf/MessageLite;)V

    return-object v0
.end method

.method public toByteArray()[B
    .registers 4

    .line 67
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 68
    .local v0, "result":[B
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->newInstance([B)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v1

    .line 69
    .local v1, "output":Lcom/tds/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/tds/protobuf/AbstractMessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 70
    invoke-virtual {v1}, Lcom/tds/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 71
    return-object v0

    .line 72
    .end local v0    # "result":[B
    .end local v1    # "output":Lcom/tds/protobuf/CodedOutputStream;
    :catch_11
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/tds/protobuf/ByteString;
    .registers 4

    .line 55
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    nop

    .line 56
    :try_start_1
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->newCodedBuilder(I)Lcom/tds/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 57
    .local v0, "out":Lcom/tds/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tds/protobuf/AbstractMessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 58
    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString$CodedBuilder;->build()Lcom/tds/protobuf/ByteString;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v1

    .line 59
    .end local v0    # "out":Lcom/tds/protobuf/ByteString$CodedBuilder;
    :catch_15
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 90
    .local v0, "serialized":I
    nop

    .line 91
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 90
    invoke-static {v1}, Lcom/tds/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 92
    .local v1, "bufferSize":I
    nop

    .line 93
    invoke-static {p1, v1}, Lcom/tds/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v2

    .line 94
    .local v2, "codedOutput":Lcom/tds/protobuf/CodedOutputStream;
    invoke-virtual {v2, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 96
    invoke-virtual {v2}, Lcom/tds/protobuf/CodedOutputStream;->flush()V

    .line 97
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite;, "Lcom/tds/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    nop

    .line 80
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 81
    .local v0, "bufferSize":I
    nop

    .line 82
    invoke-static {p1, v0}, Lcom/tds/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v1

    .line 83
    .local v1, "codedOutput":Lcom/tds/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/tds/protobuf/AbstractMessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 84
    invoke-virtual {v1}, Lcom/tds/protobuf/CodedOutputStream;->flush()V

    .line 85
    return-void
.end method
