.class public Lcom/tds/common/websocket/WebSocketMessage;
.super Ljava/lang/Object;
.source "WebSocketMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/websocket/WebSocketMessage$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageType(Ljava/lang/String;)Lcom/tds/common/websocket/WebSocketMessage$Type;
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    sget-object v0, Lcom/tds/common/websocket/WebSocketMessage$Type;->MESSAGE_TYPE_OTHER:Lcom/tds/common/websocket/WebSocketMessage$Type;

    return-object v0

    .line 17
    :cond_9
    sget-object v0, Lcom/tds/common/websocket/WebSocketMessage$Type;->MESSAGE_TYPE_TAP_FRIEND:Lcom/tds/common/websocket/WebSocketMessage$Type;

    return-object v0
.end method
