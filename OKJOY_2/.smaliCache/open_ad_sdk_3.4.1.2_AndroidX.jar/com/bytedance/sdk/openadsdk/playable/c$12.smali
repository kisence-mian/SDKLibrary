.class Lcom/bytedance/sdk/openadsdk/playable/c$12;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/playable/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/playable/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/playable/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$12;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    const-string v0, "appName"

    const-string v1, "playable_sdk"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "playableSdkEdition"

    const-string v2, "1.0.0.0"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/playable/c$12;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/playable/c;->a()Ljava/util/Set;

    move-result-object v2

    .line 117
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    goto :goto_22

    .line 120
    :cond_32
    const-string v2, "supportList"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$12;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/playable/c;->a(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_8a

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->k()Lcom/bytedance/sdk/openadsdk/playable/b;

    move-result-object v2

    const-string v3, "netType"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "innerAppName"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appVersion"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b()Ljava/util/Map;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    goto :goto_76

    .line 136
    :cond_8a
    return-object p1
.end method
