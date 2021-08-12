.class Lcom/bytedance/sdk/openadsdk/playable/c$2;
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

    .line 201
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$2;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

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

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    nop

    .line 207
    const-string v1, "code"

    const/4 v2, 0x2

    if-eqz p1, :cond_11

    .line 208
    :try_start_b
    const-string v3, "interval_android"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 210
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$2;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/playable/c;->c(Lcom/bytedance/sdk/openadsdk/playable/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/playable/c$2;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/playable/c;->d(Lcom/bytedance/sdk/openadsdk/playable/c;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/playable/g;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V

    .line 211
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    .line 212
    return-object v0

    .line 213
    :catchall_25
    move-exception p1

    .line 214
    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke start_accelerometer_observer error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    return-object v0
.end method
