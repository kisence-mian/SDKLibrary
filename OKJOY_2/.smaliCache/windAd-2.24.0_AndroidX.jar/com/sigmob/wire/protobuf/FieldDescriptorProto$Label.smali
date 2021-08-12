.class public final enum Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label$ProtoAdapter_Label;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
            "Lcom/sigmob/wire/ProtoAdapter<",
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
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    const-string v1, "LABEL_OPTIONAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-instance v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    const-string v4, "LABEL_REQUIRED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-instance v4, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    const-string v6, "LABEL_REPEATED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    new-array v6, v7, [Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

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
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object p0
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
