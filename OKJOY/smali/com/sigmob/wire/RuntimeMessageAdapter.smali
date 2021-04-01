.class final Lcom/sigmob/wire/RuntimeMessageAdapter;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/sigmob/wire/Message",
        "<TM;TB;>;B:",
        "Lcom/sigmob/wire/Message$Builder",
        "<TM;TB;>;>",
        "Lcom/sigmob/wire/ProtoAdapter",
        "<TM;>;"
    }
.end annotation


# static fields
.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TB;>;"
        }
    .end annotation
.end field

.field private final fieldBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/wire/FieldBinding",
            "<TM;TB;>;>;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TM;>;",
            "Ljava/lang/Class",
            "<TB;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/wire/FieldBinding",
            "<TM;TB;>;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    invoke-direct {p0, v0, p1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->builderType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    return-void
.end method

.method static create(Ljava/lang/Class;)Lcom/sigmob/wire/RuntimeMessageAdapter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/sigmob/wire/Message",
            "<TM;TB;>;B:",
            "Lcom/sigmob/wire/Message$Builder",
            "<TM;TB;>;>(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Lcom/sigmob/wire/RuntimeMessageAdapter",
            "<TM;TB;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/wire/RuntimeMessageAdapter;->getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v5, :cond_32

    aget-object v6, v4, v1

    const-class v0, Lcom/sigmob/wire/WireField;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/WireField;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/sigmob/wire/WireField;->tag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/sigmob/wire/FieldBinding;

    invoke-direct {v8, v0, v6, v2}, Lcom/sigmob/wire/FieldBinding;-><init>(Lcom/sigmob/wire/WireField;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_32
    new-instance v0, Lcom/sigmob/wire/RuntimeMessageAdapter;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/sigmob/wire/RuntimeMessageAdapter;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method

.method private static getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/sigmob/wire/Message",
            "<TM;TB;>;B:",
            "Lcom/sigmob/wire/Message$Builder",
            "<TM;TB;>;>(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Ljava/lang/Class",
            "<TB;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder class found for message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoReader;",
            ")TM;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/wire/RuntimeMessageAdapter;->newBuilder()Lcom/sigmob/wire/Message$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v4

    :goto_8
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_52

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/FieldBinding;

    if-eqz v0, :cond_42

    :try_start_1d
    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->isMap()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->adapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    :goto_27
    invoke-virtual {v1, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/FieldBinding;->value(Lcom/sigmob/wire/Message$Builder;Ljava/lang/Object;)V
    :try_end_2e
    .catch Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1d .. :try_end_2e} :catch_2f

    goto :goto_8

    :catch_2f
    move-exception v0

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iget v0, v0, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/sigmob/wire/Message$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_8

    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->singleAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    goto :goto_27

    :cond_42
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/sigmob/wire/Message$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;
    :try_end_51
    .catch Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_3d .. :try_end_51} :catch_2f

    goto :goto_8

    :cond_52
    invoke-virtual {p1, v4, v5}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v2}, Lcom/sigmob/wire/Message$Builder;->build()Lcom/sigmob/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/RuntimeMessageAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/Message;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/FieldBinding;

    invoke-virtual {v0, p2}, Lcom/sigmob/wire/FieldBinding;->get(Lcom/sigmob/wire/Message;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->adapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v3

    iget v0, v0, Lcom/sigmob/wire/FieldBinding;->tag:I

    invoke-virtual {v3, p1, v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_a

    :cond_26
    invoke-virtual {p2}, Lcom/sigmob/wire/Message;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/Message;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/RuntimeMessageAdapter;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/Message;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/Message;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    iget v0, p1, Lcom/sigmob/wire/Message;->cachedSerializedSize:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/FieldBinding;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/FieldBinding;->get(Lcom/sigmob/wire/Message;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->adapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v4

    iget v0, v0, Lcom/sigmob/wire/FieldBinding;->tag:I

    invoke-virtual {v4, v0, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_11

    :cond_30
    invoke-virtual {p1}, Lcom/sigmob/wire/Message;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Lcom/sigmob/wire/Message;->cachedSerializedSize:I

    goto :goto_4
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/Message;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/RuntimeMessageAdapter;->encodedSize(Lcom/sigmob/wire/Message;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/sigmob/wire/RuntimeMessageAdapter;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/sigmob/wire/RuntimeMessageAdapter;

    iget-object v0, p1, Lcom/sigmob/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method fieldBindings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/wire/FieldBinding",
            "<TM;TB;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/Message$Builder;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public redact(Lcom/sigmob/wire/Message;)Lcom/sigmob/wire/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TM;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/wire/Message;->newBuilder()Lcom/sigmob/wire/Message$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/FieldBinding;

    iget-boolean v1, v0, Lcom/sigmob/wire/FieldBinding;->redacted:Z

    if-eqz v1, :cond_41

    iget-object v1, v0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    sget-object v4, Lcom/sigmob/wire/WireField$Label;->REQUIRED:Lcom/sigmob/wire/WireField$Label;

    if-ne v1, v4, :cond_41

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Field \'%s\' in %s is required and cannot be redacted."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/sigmob/wire/FieldBinding;->name:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->javaType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    const-class v1, Lcom/sigmob/wire/Message;

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->singleAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/wire/ProtoAdapter;->javaType:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iget-boolean v4, v0, Lcom/sigmob/wire/FieldBinding;->redacted:Z

    if-nez v4, :cond_5b

    if-eqz v1, :cond_6d

    iget-object v4, v0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {v4}, Lcom/sigmob/wire/WireField$Label;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_6d

    :cond_5b
    invoke-virtual {v0, v2}, Lcom/sigmob/wire/FieldBinding;->getFromBuilder(Lcom/sigmob/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->adapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/FieldBinding;->set(Lcom/sigmob/wire/Message$Builder;Ljava/lang/Object;)V

    goto :goto_e

    :cond_6d
    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {v1}, Lcom/sigmob/wire/WireField$Label;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/FieldBinding;->getFromBuilder(Lcom/sigmob/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldBinding;->singleAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    goto :goto_e

    :cond_85
    invoke-virtual {v2}, Lcom/sigmob/wire/Message$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v2}, Lcom/sigmob/wire/Message$Builder;->build()Lcom/sigmob/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/Message;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/RuntimeMessageAdapter;->redact(Lcom/sigmob/wire/Message;)Lcom/sigmob/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/sigmob/wire/Message;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/FieldBinding;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/FieldBinding;->get(Lcom/sigmob/wire/Message;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sigmob/wire/FieldBinding;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, v0, Lcom/sigmob/wire/FieldBinding;->redacted:Z

    if-eqz v0, :cond_3d

    const-string v0, "\u2588\u2588"

    :goto_39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_3d
    move-object v0, v1

    goto :goto_39

    :cond_3f
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sigmob/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/Message;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/RuntimeMessageAdapter;->toString(Lcom/sigmob/wire/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
