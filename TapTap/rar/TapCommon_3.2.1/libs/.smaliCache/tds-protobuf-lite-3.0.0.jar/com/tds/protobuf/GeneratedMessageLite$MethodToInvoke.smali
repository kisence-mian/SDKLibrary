.class public final enum Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
.super Ljava/lang/Enum;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodToInvoke"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum GET_DEFAULT_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum GET_PARSER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum IS_INITIALIZED:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum MAKE_IMMUTABLE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum MERGE_FROM_STREAM:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum NEW_BUILDER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum NEW_MUTABLE_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum VISIT:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 238
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 239
    new-instance v1, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v3, "VISIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->VISIT:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 240
    new-instance v3, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v5, "MERGE_FROM_STREAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 241
    new-instance v5, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v7, "MAKE_IMMUTABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 244
    new-instance v7, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v9, "NEW_MUTABLE_INSTANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 245
    new-instance v9, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v11, "NEW_BUILDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 246
    new-instance v11, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v13, "GET_DEFAULT_INSTANCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 247
    new-instance v13, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v15, "GET_PARSER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 236
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->$VALUES:[Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 236
    const-class v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-object v0
.end method

.method public static values()[Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;
    .registers 1

    .line 236
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->$VALUES:[Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0}, [Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-object v0
.end method
