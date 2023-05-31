.class public final enum Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;",
        ">;",
        "Lcom/sigmob/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TYPE_BOOL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_BYTES:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_ENUM:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_FIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_FIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_FLOAT:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_GROUP:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_INT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_INT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_MESSAGE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SFIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SFIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_STRING:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_UINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_UINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_FLOAT"

    invoke-direct {v0, v1, v4, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_INT64"

    invoke-direct {v0, v1, v5, v6}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_UINT64"

    invoke-direct {v0, v1, v6, v7}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_INT32"

    invoke-direct {v0, v1, v7, v8}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_FIXED64"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_FIXED32"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_BOOL"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_STRING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_GROUP"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_MESSAGE"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_BYTES"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_UINT32"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_ENUM"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED32"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED64"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_SINT32"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_SINT64"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
    .registers 2

    packed-switch p0, :pswitch_data_3c

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_8
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_b
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_e
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_11
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_14
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_17
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_1a
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_1d
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_20
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_26
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_29
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_2c
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_32
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_35
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    :pswitch_38
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    goto :goto_4

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v0}, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->value:I

    return v0
.end method
