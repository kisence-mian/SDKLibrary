.class public final enum Lcom/tds/common/websocket/enums/ReadyState;
.super Ljava/lang/Enum;
.source "ReadyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/websocket/enums/ReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/websocket/enums/ReadyState;

.field public static final enum CLOSED:Lcom/tds/common/websocket/enums/ReadyState;

.field public static final enum CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

.field public static final enum NOT_YET_CONNECTED:Lcom/tds/common/websocket/enums/ReadyState;

.field public static final enum OPEN:Lcom/tds/common/websocket/enums/ReadyState;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 7
    new-instance v0, Lcom/tds/common/websocket/enums/ReadyState;

    const-string v1, "NOT_YET_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/enums/ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lcom/tds/common/websocket/enums/ReadyState;

    new-instance v1, Lcom/tds/common/websocket/enums/ReadyState;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/common/websocket/enums/ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/common/websocket/enums/ReadyState;->OPEN:Lcom/tds/common/websocket/enums/ReadyState;

    new-instance v3, Lcom/tds/common/websocket/enums/ReadyState;

    const-string v5, "CLOSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/common/websocket/enums/ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    new-instance v5, Lcom/tds/common/websocket/enums/ReadyState;

    const-string v7, "CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tds/common/websocket/enums/ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tds/common/websocket/enums/ReadyState;->CLOSED:Lcom/tds/common/websocket/enums/ReadyState;

    .line 6
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tds/common/websocket/enums/ReadyState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tds/common/websocket/enums/ReadyState;->$VALUES:[Lcom/tds/common/websocket/enums/ReadyState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/websocket/enums/ReadyState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/tds/common/websocket/enums/ReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/enums/ReadyState;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/websocket/enums/ReadyState;
    .registers 1

    .line 6
    sget-object v0, Lcom/tds/common/websocket/enums/ReadyState;->$VALUES:[Lcom/tds/common/websocket/enums/ReadyState;

    invoke-virtual {v0}, [Lcom/tds/common/websocket/enums/ReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/websocket/enums/ReadyState;

    return-object v0
.end method
