.class public abstract Lcom/tds/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
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
        "Lcom/tds/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 131
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 4
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

    .line 355
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    if-eqz p0, :cond_40

    .line 358
    instance-of v0, p0, Lcom/tds/protobuf/LazyStringList;

    if-eqz v0, :cond_17

    .line 361
    move-object v0, p0

    check-cast v0, Lcom/tds/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/tds/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 362
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    .line 363
    :cond_17
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_25

    .line 364
    invoke-static {p0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 365
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    .line 367
    :cond_25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_39

    .line 371
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_29

    .line 369
    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 374
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_3f
    :goto_3f
    return-void

    .line 356
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static checkForNullValues(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 377
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_11

    .line 381
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 379
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 382
    .end local v1    # "value":Ljava/lang/Object;
    :cond_17
    return-void
.end method

.method private getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 332
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a "

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

.method protected static newUninitializedMessageException(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/UninitializedMessageException;
    .registers 2
    .param p0, "message"    # Lcom/tds/protobuf/MessageLite;

    .line 342
    new-instance v0, Lcom/tds/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/UninitializedMessageException;-><init>(Lcom/tds/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->clone()Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->clone()Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract internalMergeFrom(Lcom/tds/protobuf/AbstractMessageLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 315
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Z
    .registers 7
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 304
    const/4 v1, 0x0

    return v1

    .line 306
    :cond_9
    invoke-static {v0, p1}, Lcom/tds/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    .line 307
    .local v1, "size":I
    new-instance v2, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v2, p1, v1}, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 308
    .local v2, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 309
    const/4 v3, 0x1

    return v3
.end method

.method public mergeFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->newCodedInput()Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 154
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 156
    return-object p0

    .line 159
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    :catch_c
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 158
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 6
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/ByteString;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->newCodedInput()Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 170
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 172
    return-object p0

    .line 175
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    :catch_c
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 174
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/CodedInputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .param p1, "other"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/MessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 326
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/AbstractMessageLite;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->internalMergeFrom(Lcom/tds/protobuf/AbstractMessageLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0

    .line 322
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 230
    .local v0, "codedInput":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 232
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 239
    .local v0, "codedInput":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 241
    return-object p0
.end method

.method public mergeFrom([B)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 190
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/tds/protobuf/CodedInputStream;->newInstance([BII)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 191
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_c} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    .line 193
    return-object p0

    .line 196
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    :catch_d
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v0

    .line 195
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 216
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/tds/protobuf/CodedInputStream;->newInstance([BII)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 217
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_c} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    .line 219
    return-object p0

    .line 222
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    :catch_d
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v0

    .line 221
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/protobuf/AbstractMessageLite$Builder;, "Lcom/tds/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
