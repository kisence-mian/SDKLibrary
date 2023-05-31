.class final Lcom/sigmob/wire/FieldBinding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/sigmob/wire/Message",
        "<TM;TB;>;B:",
        "Lcom/sigmob/wire/Message$Builder",
        "<TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterString:Ljava/lang/String;

.field private final builderField:Ljava/lang/reflect/Field;

.field private final builderMethod:Ljava/lang/reflect/Method;

.field private keyAdapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private final keyAdapterString:Ljava/lang/String;

.field public final label:Lcom/sigmob/wire/WireField$Label;

.field private final messageField:Ljava/lang/reflect/Field;

.field public final name:Ljava/lang/String;

.field public final redacted:Z

.field private singleAdapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field public final tag:I


# direct methods
.method constructor <init>(Lcom/sigmob/wire/WireField;Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/WireField;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/sigmob/wire/WireField;->label()Lcom/sigmob/wire/WireField$Label;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sigmob/wire/WireField;->tag()I

    move-result v0

    iput v0, p0, Lcom/sigmob/wire/FieldBinding;->tag:I

    invoke-interface {p1}, Lcom/sigmob/wire/WireField;->keyAdapter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sigmob/wire/WireField;->adapter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->adapterString:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sigmob/wire/WireField;->redacted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/wire/FieldBinding;->redacted:Z

    iput-object p2, p0, Lcom/sigmob/wire/FieldBinding;->messageField:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->name:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/sigmob/wire/FieldBinding;->getBuilderField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->builderField:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sigmob/wire/FieldBinding;->getBuilderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->builderMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static getBuilderField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static getBuilderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method adapter()Lcom/sigmob/wire/ProtoAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/sigmob/wire/FieldBinding;->isMap()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/sigmob/wire/FieldBinding;->keyAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/wire/FieldBinding;->singleAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->newMapAdapter(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_4

    :cond_1a
    invoke-virtual {p0}, Lcom/sigmob/wire/FieldBinding;->singleAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->withLabel(Lcom/sigmob/wire/WireField$Label;)Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->adapter:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_4
.end method

.method get(Lcom/sigmob/wire/Message;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->messageField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getFromBuilder(Lcom/sigmob/wire/Message$Builder;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->builderField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method isMap()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method keyAdapter()Lcom/sigmob/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->keyAdapter:Lcom/sigmob/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/wire/ProtoAdapter;->get(Ljava/lang/String;)Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->keyAdapter:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_4
.end method

.method set(Lcom/sigmob/wire/Message$Builder;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {v0}, Lcom/sigmob/wire/WireField$Label;->isOneOf()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->builderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->builderField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_13

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method singleAdapter()Lcom/sigmob/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->singleAdapter:Lcom/sigmob/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->adapterString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/wire/ProtoAdapter;->get(Ljava/lang/String;)Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/FieldBinding;->singleAdapter:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_4
.end method

.method value(Lcom/sigmob/wire/Message$Builder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->label:Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {v0}, Lcom/sigmob/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/FieldBinding;->getFromBuilder(Lcom/sigmob/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/sigmob/wire/FieldBinding;->keyAdapterString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/FieldBinding;->getFromBuilder(Lcom/sigmob/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_11

    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/FieldBinding;->set(Lcom/sigmob/wire/Message$Builder;Ljava/lang/Object;)V

    goto :goto_11
.end method
