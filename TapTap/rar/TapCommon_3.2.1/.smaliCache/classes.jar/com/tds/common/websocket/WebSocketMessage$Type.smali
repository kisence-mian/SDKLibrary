.class public final enum Lcom/tds/common/websocket/WebSocketMessage$Type;
.super Ljava/lang/Enum;
.source "WebSocketMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/WebSocketMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/websocket/WebSocketMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/websocket/WebSocketMessage$Type;

.field public static final enum MESSAGE_TYPE_OTHER:Lcom/tds/common/websocket/WebSocketMessage$Type;

.field public static final enum MESSAGE_TYPE_TAP_FRIEND:Lcom/tds/common/websocket/WebSocketMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 9
    new-instance v0, Lcom/tds/common/websocket/WebSocketMessage$Type;

    const-string v1, "MESSAGE_TYPE_TAP_FRIEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/WebSocketMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/websocket/WebSocketMessage$Type;->MESSAGE_TYPE_TAP_FRIEND:Lcom/tds/common/websocket/WebSocketMessage$Type;

    .line 10
    new-instance v1, Lcom/tds/common/websocket/WebSocketMessage$Type;

    const-string v3, "MESSAGE_TYPE_OTHER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/common/websocket/WebSocketMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/common/websocket/WebSocketMessage$Type;->MESSAGE_TYPE_OTHER:Lcom/tds/common/websocket/WebSocketMessage$Type;

    .line 8
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tds/common/websocket/WebSocketMessage$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tds/common/websocket/WebSocketMessage$Type;->$VALUES:[Lcom/tds/common/websocket/WebSocketMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/websocket/WebSocketMessage$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/tds/common/websocket/WebSocketMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/WebSocketMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/websocket/WebSocketMessage$Type;
    .registers 1

    .line 8
    sget-object v0, Lcom/tds/common/websocket/WebSocketMessage$Type;->$VALUES:[Lcom/tds/common/websocket/WebSocketMessage$Type;

    invoke-virtual {v0}, [Lcom/tds/common/websocket/WebSocketMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/websocket/WebSocketMessage$Type;

    return-object v0
.end method
