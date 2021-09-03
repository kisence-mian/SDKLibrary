.class public final enum Lcom/tds/common/websocket/enums/Opcode;
.super Ljava/lang/Enum;
.source "Opcode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/websocket/enums/Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/websocket/enums/Opcode;

.field public static final enum BINARY:Lcom/tds/common/websocket/enums/Opcode;

.field public static final enum CLOSING:Lcom/tds/common/websocket/enums/Opcode;

.field public static final enum CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

.field public static final enum PING:Lcom/tds/common/websocket/enums/Opcode;

.field public static final enum PONG:Lcom/tds/common/websocket/enums/Opcode;

.field public static final enum TEXT:Lcom/tds/common/websocket/enums/Opcode;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 7
    new-instance v0, Lcom/tds/common/websocket/enums/Opcode;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    new-instance v1, Lcom/tds/common/websocket/enums/Opcode;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/common/websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    new-instance v3, Lcom/tds/common/websocket/enums/Opcode;

    const-string v5, "BINARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/common/websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    new-instance v5, Lcom/tds/common/websocket/enums/Opcode;

    const-string v7, "PING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tds/common/websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tds/common/websocket/enums/Opcode;->PING:Lcom/tds/common/websocket/enums/Opcode;

    new-instance v7, Lcom/tds/common/websocket/enums/Opcode;

    const-string v9, "PONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tds/common/websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    new-instance v9, Lcom/tds/common/websocket/enums/Opcode;

    const-string v11, "CLOSING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tds/common/websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tds/common/websocket/enums/Opcode;->CLOSING:Lcom/tds/common/websocket/enums/Opcode;

    .line 6
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/tds/common/websocket/enums/Opcode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/tds/common/websocket/enums/Opcode;->$VALUES:[Lcom/tds/common/websocket/enums/Opcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/websocket/enums/Opcode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/tds/common/websocket/enums/Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/enums/Opcode;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/websocket/enums/Opcode;
    .registers 1

    .line 6
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->$VALUES:[Lcom/tds/common/websocket/enums/Opcode;

    invoke-virtual {v0}, [Lcom/tds/common/websocket/enums/Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/websocket/enums/Opcode;

    return-object v0
.end method
