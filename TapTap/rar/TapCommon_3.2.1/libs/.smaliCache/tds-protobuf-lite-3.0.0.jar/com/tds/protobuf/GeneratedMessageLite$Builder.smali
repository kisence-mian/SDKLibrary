.class public abstract Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.super Lcom/tds/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/tds/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/tds/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected instance:Lcom/tds/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected isBuilt:Z


# direct methods
.method protected constructor <init>(Lcom/tds/protobuf/GeneratedMessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/tds/protobuf/GeneratedMessageLite;

    .line 318
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 319
    invoke-virtual {p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 321
    return-void
.end method


# virtual methods
.method public final build()Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 372
    .local v0, "result":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 375
    return-object v0

    .line 373
    :cond_b
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->newUninitializedMessageException(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    if-eqz v0, :cond_7

    .line 360
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    return-object v0

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 366
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    .line 346
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 352
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 353
    .local v0, "builder":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    .line 354
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

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

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected copyOnWrite()V
    .registers 4

    .line 328
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    if-eqz v0, :cond_1a

    .line 329
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 330
    invoke-virtual {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    .line 331
    .local v0, "newInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    iget-object v2, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 332
    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 335
    .end local v0    # "newInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    :cond_1a
    return-void
.end method

.method public getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/tds/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/tds/protobuf/AbstractMessageLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    check-cast p1, Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected internalMergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 339
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->isInitialized(Lcom/tds/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 5
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
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

    .line 400
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 402
    :try_start_3
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_c

    .line 408
    nop

    .line 409
    return-object p0

    .line 403
    :catch_c
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1c

    .line 405
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 407
    :cond_1c
    throw v0
.end method

.method public mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-virtual {v0, v1, p1}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 387
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "Lcom/tds/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
