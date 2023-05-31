.class Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onInteractionAdLoad(Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)V

    .line 45
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, -0x6

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    .line 50
    return-void
.end method
