.class public final enum Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
            "Lcom/sigmob/wire/ProtoAdapter<",
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
    .registers 21

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v4, "TYPE_FLOAT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v4, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v6, "TYPE_INT64"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v6, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v8, "TYPE_UINT64"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v8, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v10, "TYPE_INT32"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v10, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v12, "TYPE_FIXED64"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v12, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v14, "TYPE_FIXED32"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v14, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v13, "TYPE_BOOL"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v13, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v15, "TYPE_STRING"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v15, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v11, "TYPE_GROUP"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v11, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v9, "TYPE_MESSAGE"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v9, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v7, "TYPE_BYTES"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v7, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v5, "TYPE_UINT32"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v5, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v3, "TYPE_ENUM"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v3, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v2, "TYPE_SFIXED32"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v7, "TYPE_SFIXED64"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v7, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v5, "TYPE_SINT32"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v5, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const-string v3, "TYPE_SINT64"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    new-array v3, v7, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    aput-object v5, v3, v2

    sput-object v3, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

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
    .registers 1

    packed-switch p0, :pswitch_data_3c

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_26
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_29
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_2c
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_2f
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_32
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_35
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_38
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0
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
