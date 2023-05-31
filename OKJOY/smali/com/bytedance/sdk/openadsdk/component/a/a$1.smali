.class Lcom/bytedance/sdk/openadsdk/component/a/a$1;
.super Ljava/lang/Object;
.source "FeedAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->d:Lcom/bytedance/sdk/openadsdk/component/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 10

    .prologue
    const/4 v7, 0x5

    const/4 v2, -0x3

    const/4 v6, -0x4

    .line 54
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_bf

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 59
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/a/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v3, v4, v0, v7, v5}, Lcom/bytedance/sdk/openadsdk/component/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v3

    if-ne v3, v7, :cond_24

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v3

    .line 65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 66
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/f/b;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/h/f/b;-><init>()V

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v3

    const v4, 0x32000

    .line 68
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(I)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v3

    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a()Lcom/bytedance/sdk/openadsdk/h/f/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a(Lcom/bytedance/sdk/openadsdk/h/f/b;)Z

    goto/16 :goto_24

    .line 75
    :cond_a9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    .line 83
    :goto_b4
    return-void

    .line 78
    :cond_b5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    goto :goto_b4

    .line 81
    :cond_bf
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    goto :goto_b4
.end method
