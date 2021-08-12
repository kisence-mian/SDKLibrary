.class Lcom/bytedance/sdk/openadsdk/core/r$2;
.super Lcom/bytedance/sdk/adnet/b/f;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r;ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;Lorg/json/JSONObject;)V
    .registers 7

    .line 486
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$2;->d:Lcom/bytedance/sdk/openadsdk/core/r;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/r$2;->c:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 490
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r$2;->d:Lcom/bytedance/sdk/openadsdk/core/r;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/r;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ss-sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-object v0
.end method
