.class public Lcom/mintegral/msdk/mtgjscommon/windvane/MvBridge;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "MvBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    const-string v1, "a"

    const-string v2, "hello fail"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/d;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 29
    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public getTitle(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 9
    move-object v0, p1

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 12
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 13
    const-string v2, "a"

    const-string v3, "hello succ"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/d;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/d;

    const-string v2, "receiveMessage"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    .line 18
    :goto_25
    return-void

    :catch_26
    move-exception v0

    goto :goto_25
.end method

.method public openWindow(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string v1, "a"

    const-string v2, "hello succ"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/d;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 40
    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method
