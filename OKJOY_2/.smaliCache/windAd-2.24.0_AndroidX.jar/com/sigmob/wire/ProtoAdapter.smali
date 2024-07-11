.class public abstract Lcom/sigmob/wire/ProtoAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;,
        Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;,
        Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOL:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTES:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIXED32:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIXED64:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIXED_32_SIZE:I = 0x4

.field private static final FIXED_64_SIZE:I = 0x8

.field private static final FIXED_BOOL_SIZE:I = 0x1

.field public static final FLOAT:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT32:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT64:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SFIXED32:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SFIXED64:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINT32:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINT64:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UINT32:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UINT64:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

.field final javaType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field packedAdapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field repeatedAdapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$1;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$1;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$2;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$2;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$3;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$3;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$4;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$4;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->SINT32:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$5;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$5;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->FIXED32:Lcom/sigmob/wire/ProtoAdapter;

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->SFIXED32:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$6;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$6;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$7;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$7;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$8;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$8;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->SINT64:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$9;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$9;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->FIXED64:Lcom/sigmob/wire/ProtoAdapter;

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->SFIXED64:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$10;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$10;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$11;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$11;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->DOUBLE:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$12;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$12;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$13;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$13;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sput-object v0, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/FieldEncoding;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/wire/ProtoAdapter;->fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    iput-object p2, p0, Lcom/sigmob/wire/ProtoAdapter;->javaType:Ljava/lang/Class;

    return-void
.end method

.method private createPacked()Lcom/sigmob/wire/ProtoAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    if-eq v0, v1, :cond_10

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$14;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$14;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to pack a length-delimited type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createRepeated()Lcom/sigmob/wire/ProtoAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$15;

    iget-object v1, p0, Lcom/sigmob/wire/ProtoAdapter;->fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const-class v2, Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter$15;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static get(Lcom/sigmob/wire/Message;)Lcom/sigmob/wire/ProtoAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/sigmob/wire/Message;",
            ">(TM;)",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/wire/ProtoAdapter;->get(Ljava/lang/Class;)Lcom/sigmob/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Lcom/sigmob/wire/ProtoAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ADAPTER"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/ProtoAdapter;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object v0

    :catchall_e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "#ADAPTER"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static get(Ljava/lang/String;)Lcom/sigmob/wire/ProtoAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x23

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/ProtoAdapter;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newEnumAdapter(Ljava/lang/Class;)Lcom/sigmob/wire/RuntimeEnumAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/sigmob/wire/WireEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/sigmob/wire/RuntimeEnumAdapter<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/wire/RuntimeEnumAdapter;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/RuntimeEnumAdapter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newMapAdapter(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)Lcom/sigmob/wire/ProtoAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TK;>;",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TV;>;)",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)V

    return-object v0
.end method

.method public static newMessageAdapter(Ljava/lang/Class;)Lcom/sigmob/wire/ProtoAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/sigmob/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/sigmob/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/wire/RuntimeMessageAdapter;->create(Ljava/lang/Class;)Lcom/sigmob/wire/RuntimeMessageAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asPacked()Lcom/sigmob/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->packedAdapter:Lcom/sigmob/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoAdapter;->createPacked()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->packedAdapter:Lcom/sigmob/wire/ProtoAdapter;

    :goto_b
    return-object v0
.end method

.method public final asRepeated()Lcom/sigmob/wire/ProtoAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->repeatedAdapter:Lcom/sigmob/wire/ProtoAdapter;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoAdapter;->createRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->repeatedAdapter:Lcom/sigmob/wire/ProtoAdapter;

    :goto_b
    return-object v0
.end method

.method public abstract decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoReader;",
            ")TE;"
        }
    .end annotation
.end method

.method public final decode(Lcom/sigmob/wire/okio/BufferedSource;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/okio/BufferedSource;",
            ")TE;"
        }
    .end annotation

    const-string v0, "source == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/wire/ProtoReader;

    invoke-direct {v0, p1}, Lcom/sigmob/wire/ProtoReader;-><init>(Lcom/sigmob/wire/okio/BufferedSource;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/sigmob/wire/okio/ByteString;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")TE;"
        }
    .end annotation

    const-string v0, "bytes == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/okio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->source(Ljava/io/InputStream;)Lcom/sigmob/wire/okio/Source;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/BufferedSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/okio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final decode([B)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TE;"
        }
    .end annotation

    const-string v0, "bytes == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->write([B)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/okio/BufferedSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "TE;)V"
        }
    .end annotation
.end method

.method public final encode(Lcom/sigmob/wire/okio/BufferedSink;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/okio/BufferedSink;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "value == null"

    invoke-static {p2, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/wire/ProtoWriter;

    invoke-direct {v0, p1}, Lcom/sigmob/wire/ProtoWriter;-><init>(Lcom/sigmob/wire/okio/BufferedSink;)V

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/wire/ProtoAdapter;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final encode(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "value == null"

    invoke-static {p2, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter;->encode(Lcom/sigmob/wire/okio/BufferedSink;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sigmob/wire/okio/BufferedSink;->emit()Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method public final encode(Ljava/lang/Object;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)[B"
        }
    .end annotation

    const-string v0, "value == null"

    invoke-static {p1, v0}, Lcom/sigmob/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    :try_start_a
    invoke-virtual {p0, v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->encode(Lcom/sigmob/wire/okio/BufferedSink;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByteArray()[B

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "ITE;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/wire/ProtoWriter;->writeTag(ILcom/sigmob/wire/FieldEncoding;)V

    iget-object p2, p0, Lcom/sigmob/wire/ProtoAdapter;->fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    if-ne p2, v0, :cond_15

    invoke-virtual {p0, p3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSize(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeVarint32(I)V

    :cond_15
    invoke-virtual {p0, p1, p3}, Lcom/sigmob/wire/ProtoAdapter;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract encodedSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation
.end method

.method public encodedSizeWithTag(ILjava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSize(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter;->fieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    sget-object v1, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    if-ne v0, v1, :cond_13

    invoke-static {p2}, Lcom/sigmob/wire/ProtoWriter;->varint32Size(I)I

    move-result v0

    add-int/2addr p2, v0

    :cond_13
    invoke-static {p1}, Lcom/sigmob/wire/ProtoWriter;->tagSize(I)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method withLabel(Lcom/sigmob/wire/WireField$Label;)Lcom/sigmob/wire/ProtoAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/WireField$Label;",
            ")",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/sigmob/wire/WireField$Label;->isPacked()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoAdapter;->asPacked()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object p1

    :goto_15
    return-object p1

    :cond_16
    return-object p0
.end method
