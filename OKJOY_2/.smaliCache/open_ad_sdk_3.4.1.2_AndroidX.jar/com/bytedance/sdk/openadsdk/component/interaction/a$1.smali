.class Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


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

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 4

    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 41
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a(Lcom/bytedance/sdk/openadsdk/core/l;)V

    .line 52
    goto :goto_3b

    .line 53
    :cond_31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    .line 55
    :goto_3b
    goto :goto_46

    .line 56
    :cond_3c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;->onError(ILjava/lang/String;)V

    .line 58
    :goto_46
    return-void
.end method
