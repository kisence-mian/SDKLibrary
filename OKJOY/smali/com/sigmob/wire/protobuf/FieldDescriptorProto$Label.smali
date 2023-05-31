.class public final enum Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;",
        ">;",
        "Lcom/sigmob/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

.field public static final enum LABEL_REPEATED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

.field public static final enum LABEL_REQUIRED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    const-string v1, "LABEL_OPTIONAL"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    const-string v1, "LABEL_REQUIRED"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    const-string v1, "LABEL_REPEATED"

    invoke-direct {v0, v1, v3, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-array v0, v5, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label$ProtoAdapter_Label;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label$ProtoAdapter_Label;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

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

    iput p3, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    goto :goto_4

    :pswitch_8
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    goto :goto_4

    :pswitch_b
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-virtual {v0}, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->value:I

    return v0
.end method
