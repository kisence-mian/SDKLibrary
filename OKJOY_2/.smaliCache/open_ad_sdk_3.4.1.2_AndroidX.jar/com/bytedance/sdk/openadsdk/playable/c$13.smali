.class Lcom/bytedance/sdk/openadsdk/playable/c$13;
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

    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$13;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c$13;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/c;->b(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/a;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 145
    return-object v1

    .line 147
    :cond_a
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/playable/a;->a(Lorg/json/JSONObject;)V

    .line 148
    return-object v1
.end method
