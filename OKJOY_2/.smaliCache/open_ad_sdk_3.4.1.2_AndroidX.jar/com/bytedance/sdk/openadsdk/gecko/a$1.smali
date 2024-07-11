.class Lcom/bytedance/sdk/openadsdk/gecko/a$1;
.super Ljava/lang/Object;
.source "GeckoHub.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/gecko/a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/gecko/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/gecko/a;Ljava/util/Map;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/gecko/a$1;->b:Lcom/bytedance/sdk/openadsdk/gecko/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/gecko/a$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 120
    const-string v0, "geckosdk_update_stats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 121
    const-string v0, "channel"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/gecko/a$1;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 123
    if-eqz v0, :cond_1b

    .line 124
    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/c/d$a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 127
    :cond_1b
    return-void
.end method
