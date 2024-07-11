.class Lcom/bytedance/sdk/openadsdk/playable/c$8;
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

    .line 307
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$8;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 310
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$8;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/playable/c;->a(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object p1

    .line 311
    if-eqz p1, :cond_b

    .line 312
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/playable/e;->o()V

    .line 314
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
