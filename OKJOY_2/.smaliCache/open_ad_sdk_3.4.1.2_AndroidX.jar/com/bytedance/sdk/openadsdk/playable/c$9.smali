.class Lcom/bytedance/sdk/openadsdk/playable/c$9;
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

    .line 318
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$9;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c$9;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/c;->b(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/a;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_b

    .line 323
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/playable/a;->c(Lorg/json/JSONObject;)V

    .line 325
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
