.class public final enum Lcom/sigmob/wire/protobuf/FieldOptions$JSType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/sigmob/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/FieldOptions$JSType$ProtoAdapter_JSType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/wire/protobuf/FieldOptions$JSType;",
        ">;",
        "Lcom/sigmob/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/protobuf/FieldOptions$JSType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum JS_NORMAL:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

.field public static final enum JS_NUMBER:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

.field public static final enum JS_STRING:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    const-string v1, "JS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->JS_NORMAL:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    new-instance v1, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    const-string v3, "JS_STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->JS_STRING:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    new-instance v3, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    const-string v5, "JS_NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->JS_NUMBER:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType$ProtoAdapter_JSType;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FieldOptions$JSType$ProtoAdapter_JSType;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

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

    iput p3, p0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/sigmob/wire/protobuf/FieldOptions$JSType;
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->JS_NUMBER:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->JS_STRING:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->JS_NORMAL:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldOptions$JSType;
    .registers 2

    const-class v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/wire/protobuf/FieldOptions$JSType;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->$VALUES:[Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    invoke-virtual {v0}, [Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->value:I

    return v0
.end method
