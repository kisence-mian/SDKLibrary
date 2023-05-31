.class public abstract Lcom/tds/protobuf/GeneratedMessageLite;
.super Lcom/tds/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;,
        Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;,
        Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;,
        Lcom/tds/protobuf/GeneratedMessageLite$Visitor;,
        Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/tds/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/tds/protobuf/GeneratedMessageLite$Builder;,
        Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/tds/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractMessageLite;-><init>()V

    .line 66
    invoke-static {}, Lcom/tds/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$200(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/ExtensionLite;

    .line 60
    invoke-static {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method private static checkIsLite(Lcom/tds/protobuf/ExtensionLite;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1242
    .local p0, "extension":Lcom/tds/protobuf/ExtensionLite;, "Lcom/tds/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1246
    move-object v0, p0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0

    .line 1243
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1381
    .local p0, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 1382
    :cond_9
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/tds/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Lcom/tds/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1384
    invoke-virtual {v0, p0}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1386
    :cond_16
    :goto_16
    return-object p0
.end method

.method protected static emptyBooleanList()Lcom/tds/protobuf/Internal$BooleanList;
    .registers 1

    .line 1304
    invoke-static {}, Lcom/tds/protobuf/BooleanArrayList;->emptyList()Lcom/tds/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/tds/protobuf/Internal$DoubleList;
    .registers 1

    .line 1294
    invoke-static {}, Lcom/tds/protobuf/DoubleArrayList;->emptyList()Lcom/tds/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/tds/protobuf/Internal$FloatList;
    .registers 1

    .line 1284
    invoke-static {}, Lcom/tds/protobuf/FloatArrayList;->emptyList()Lcom/tds/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/tds/protobuf/Internal$IntList;
    .registers 1

    .line 1264
    invoke-static {}, Lcom/tds/protobuf/IntArrayList;->emptyList()Lcom/tds/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/tds/protobuf/Internal$LongList;
    .registers 1

    .line 1274
    invoke-static {}, Lcom/tds/protobuf/LongArrayList;->emptyList()Lcom/tds/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1314
    invoke-static {}, Lcom/tds/protobuf/ProtobufArrayList;->emptyList()Lcom/tds/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .registers 3

    .line 173
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/tds/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 174
    invoke-static {}, Lcom/tds/protobuf/UnknownFieldSetLite;->newInstance()Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 176
    :cond_e
    return-void
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 987
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 988
    :catch_5
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 990
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 998
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1003
    :catch_5
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1005
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1e

    .line 1007
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_16

    .line 1008
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1010
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1006
    :cond_1e
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 999
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_22
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final isInitialized(Lcom/tds/protobuf/GeneratedMessageLite;Z)Z
    .registers 4
    .param p1, "shouldMemoize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1256
    .local p0, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected static final makeImmutable(Lcom/tds/protobuf/GeneratedMessageLite;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)V"
        }
    .end annotation

    .line 1260
    .local p0, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 1261
    return-void
.end method

.method protected static mutableCopy(Lcom/tds/protobuf/Internal$BooleanList;)Lcom/tds/protobuf/Internal$BooleanList;
    .registers 3
    .param p0, "list"    # Lcom/tds/protobuf/Internal$BooleanList;

    .line 1308
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1309
    .local v0, "size":I
    if-nez v0, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v1, v0, 0x2

    :goto_b
    invoke-interface {p0, v1}, Lcom/tds/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$BooleanList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/tds/protobuf/Internal$DoubleList;)Lcom/tds/protobuf/Internal$DoubleList;
    .registers 3
    .param p0, "list"    # Lcom/tds/protobuf/Internal$DoubleList;

    .line 1298
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1299
    .local v0, "size":I
    if-nez v0, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v1, v0, 0x2

    :goto_b
    invoke-interface {p0, v1}, Lcom/tds/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$DoubleList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/tds/protobuf/Internal$FloatList;)Lcom/tds/protobuf/Internal$FloatList;
    .registers 3
    .param p0, "list"    # Lcom/tds/protobuf/Internal$FloatList;

    .line 1288
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1289
    .local v0, "size":I
    if-nez v0, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v1, v0, 0x2

    :goto_b
    invoke-interface {p0, v1}, Lcom/tds/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$FloatList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/tds/protobuf/Internal$IntList;)Lcom/tds/protobuf/Internal$IntList;
    .registers 3
    .param p0, "list"    # Lcom/tds/protobuf/Internal$IntList;

    .line 1268
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1269
    .local v0, "size":I
    if-nez v0, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v1, v0, 0x2

    :goto_b
    invoke-interface {p0, v1}, Lcom/tds/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$IntList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/tds/protobuf/Internal$LongList;)Lcom/tds/protobuf/Internal$LongList;
    .registers 3
    .param p0, "list"    # Lcom/tds/protobuf/Internal$LongList;

    .line 1278
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1279
    .local v0, "size":I
    if-nez v0, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v1, v0, 0x2

    :goto_b
    invoke-interface {p0, v1}, Lcom/tds/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$LongList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1318
    .local p0, "list":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1319
    .local v0, "size":I
    if-nez v0, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v1, v0, 0x2

    :goto_b
    invoke-interface {p0, v1}, Lcom/tds/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method public static newRepeatedGeneratedExtension(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/Internal$EnumLiteMap;ILcom/tds/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 16
    .param p1, "messageDefaultInstance"    # Lcom/tds/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/tds/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/tds/protobuf/MessageLite;",
            "Lcom/tds/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/tds/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 906
    .local p0, "containingTypeDefaultInstance":Lcom/tds/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/tds/protobuf/Internal$EnumLiteMap;, "Lcom/tds/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 907
    .local v6, "emptyList":Ljava/lang/Object;, "TType;"
    new-instance v7, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v8, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/tds/protobuf/Internal$EnumLiteMap;ILcom/tds/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v8

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/tds/protobuf/MessageLite;Ljava/lang/Object;Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v7
.end method

.method public static newSingularGeneratedExtension(Lcom/tds/protobuf/MessageLite;Ljava/lang/Object;Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/Internal$EnumLiteMap;ILcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 15
    .param p2, "messageDefaultInstance"    # Lcom/tds/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/tds/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/tds/protobuf/MessageLite;",
            "Lcom/tds/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/tds/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 884
    .local p0, "containingTypeDefaultInstance":Lcom/tds/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/tds/protobuf/Internal$EnumLiteMap;, "Lcom/tds/protobuf/Internal$EnumLiteMap<*>;"
    new-instance v6, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/tds/protobuf/Internal$EnumLiteMap;ILcom/tds/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/tds/protobuf/MessageLite;Ljava/lang/Object;Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1495
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1497
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1496
    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1495
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1504
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1505
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1504
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1393
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1394
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1393
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/ByteString;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1401
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1480
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/CodedInputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1487
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1488
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1487
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1463
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1464
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 1465
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1464
    invoke-static {p0, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1472
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1473
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[B)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1448
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1449
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1448
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1456
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePartialDelimitedFrom(Lcom/tds/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1515
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1516
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1517
    const/4 v1, 0x0

    return-object v1

    .line 1519
    :cond_9
    invoke-static {v0, p1}, Lcom/tds/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_28

    move v0, v1

    .line 1522
    .local v0, "size":I
    nop

    .line 1523
    new-instance v1, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/tds/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1524
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v2

    .line 1525
    .local v2, "codedInput":Lcom/tds/protobuf/CodedInputStream;
    invoke-static {p0, v2, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 1527
    .local v3, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v4, 0x0

    :try_start_1d
    invoke-virtual {v2, v4}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_20
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_1d .. :try_end_20} :catch_22

    .line 1530
    nop

    .line 1531
    return-object v3

    .line 1528
    :catch_22
    move-exception v4

    .line 1529
    .local v4, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 1520
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    .end local v2    # "codedInput":Lcom/tds/protobuf/CodedInputStream;
    .end local v3    # "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .end local v4    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :catch_28
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/tds/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 7
    .param p1, "data"    # Lcom/tds/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/ByteString;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1411
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->newCodedInput()Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 1412
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1
    :try_end_8
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_8} :catch_14

    .line 1414
    .local v1, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v0, v2}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_9 .. :try_end_c} :catch_e

    .line 1417
    nop

    .line 1418
    return-object v1

    .line 1415
    :catch_e
    move-exception v2

    .line 1416
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :try_start_f
    invoke-virtual {v2, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "data":Lcom/tds/protobuf/ByteString;
    .end local p2    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_14
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_14} :catch_14

    .line 1419
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "data":Lcom/tds/protobuf/ByteString;
    .restart local p2    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :catch_14
    move-exception v0

    .line 1420
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method protected static parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1370
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/tds/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/tds/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method static parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 6
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/tds/protobuf/CodedInputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1353
    .local p0, "instance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    .line 1355
    .local v0, "result":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_8
    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite;->makeImmutable()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_10} :catch_12

    .line 1362
    nop

    .line 1363
    return-object v0

    .line 1357
    :catch_12
    move-exception v1

    .line 1358
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/tds/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_22

    .line 1359
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1361
    :cond_22
    throw v1
.end method

.method private static parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;[BLcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tds/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1431
    .local p0, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {p1}, Lcom/tds/protobuf/CodedInputStream;->newInstance([B)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    .line 1432
    .local v0, "input":Lcom/tds/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1
    :try_end_8
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_8} :catch_14

    .line 1434
    .local v1, "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v0, v2}, Lcom/tds/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_9 .. :try_end_c} :catch_e

    .line 1437
    nop

    .line 1438
    return-object v1

    .line 1435
    :catch_e
    move-exception v2

    .line 1436
    .local v2, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    :try_start_f
    invoke-virtual {v2, v1}, Lcom/tds/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "data":[B
    .end local p2    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_14
    .catch Lcom/tds/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_14} :catch_14

    .line 1439
    .end local v0    # "input":Lcom/tds/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .end local v2    # "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "data":[B
    .restart local p2    # "extensionRegistry":Lcom/tds/protobuf/ExtensionRegistryLite;
    :catch_14
    move-exception v0

    .line 1440
    .local v0, "e":Lcom/tds/protobuf/InvalidProtocolBufferException;
    throw v0
.end method


# virtual methods
.method protected dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .registers 3
    .param p1, "method"    # Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 288
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "method"    # Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;

    .line 281
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method equals(Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/tds/protobuf/MessageLite;)Z
    .registers 5
    .param p1, "visitor"    # Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;
    .param p2, "other"    # Lcom/tds/protobuf/MessageLite;

    .line 153
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x1

    if-ne p0, p2, :cond_4

    .line 154
    return v0

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 158
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_14
    move-object v1, p2

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 162
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 132
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 133
    return v0

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 137
    return v2

    .line 141
    :cond_14
    :try_start_14
    sget-object v1, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;

    move-object v3, p1

    check-cast v3, Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, v1, v3}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V
    :try_end_1c
    .catch Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException; {:try_start_14 .. :try_end_1c} :catch_1e

    .line 144
    nop

    .line 145
    return v0

    .line 142
    :catch_1e
    move-exception v0

    .line 143
    .local v0, "e":Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;
    return v2
.end method

.method public final getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 60
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/tds/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/Parser;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 109
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v0, :cond_13

    .line 110
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;-><init>(Lcom/tds/protobuf/GeneratedMessageLite$1;)V

    .line 111
    .local v0, "visitor":Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;
    invoke-virtual {p0, v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 112
    # getter for: Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I
    invoke-static {v0}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v1

    iput v1, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 114
    .end local v0    # "visitor":Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;
    :cond_13
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method hashCode(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;)I
    .registers 4
    .param p1, "visitor"    # Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;

    .line 119
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v0, :cond_18

    .line 120
    # getter for: Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v0

    .line 121
    .local v0, "inProgressHashCode":I
    const/4 v1, 0x0

    # setter for: Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I
    invoke-static {p1, v1}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$102(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I

    .line 122
    invoke-virtual {p0, p1, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 123
    # getter for: Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I
    invoke-static {p1}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v1

    iput v1, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 124
    # setter for: Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I
    invoke-static {p1, v0}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$102(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I

    .line 126
    .end local v0    # "inProgressHashCode":I
    :cond_18
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 220
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected makeImmutable()V
    .registers 2

    .line 213
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/tds/protobuf/UnknownFieldSetLite;->makeImmutable()V

    .line 216
    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/ByteString;

    .line 205
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 206
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 207
    return-void
.end method

.method protected final mergeUnknownFields(Lcom/tds/protobuf/UnknownFieldSetLite;)V
    .registers 3
    .param p1, "unknownFields"    # Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 303
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/tds/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 304
    return-void
.end method

.method protected mergeVarintField(II)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 197
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 198
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 199
    return-void
.end method

.method public final newBuilderForType()Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 60
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected parseUnknownField(ILcom/tds/protobuf/CodedInputStream;)Z
    .registers 5
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/tds/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 186
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_9
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 190
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/tds/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method public final toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    .line 226
    .local v0, "builder":Lcom/tds/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    .line 227
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/tds/protobuf/MessageLite$Builder;
    .registers 2

    .line 60
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/GeneratedMessageLite;->toBuilder()Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 103
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tds/protobuf/MessageLiteToString;->toString(Lcom/tds/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visit(Lcom/tds/protobuf/GeneratedMessageLite$Visitor;Lcom/tds/protobuf/GeneratedMessageLite;)V
    .registers 5
    .param p1, "visitor"    # Lcom/tds/protobuf/GeneratedMessageLite$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite;, "Lcom/tds/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p2, "other":Lcom/tds/protobuf/GeneratedMessageLite;, "TMessageType;"
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->VISIT:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    iget-object v1, p2, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-interface {p1, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$Visitor;->visitUnknownFields(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 294
    return-void
.end method
