.class Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/interaction/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/interaction/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->c:Lcom/bytedance/sdk/openadsdk/component/interaction/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 6

    .prologue
    const/4 v3, -0x3

    const/4 v2, -0x4

    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 40
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a(Lcom/bytedance/sdk/openadsdk/core/k;)V

    .line 58
    :goto_32
    return-void

    .line 53
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    goto :goto_32

    .line 56
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    goto :goto_32
.end method
