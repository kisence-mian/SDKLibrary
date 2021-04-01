.class Lcom/bytedance/sdk/openadsdk/component/a/a$2;
.super Ljava/lang/Object;
.source "FeedAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->c:Lcom/bytedance/sdk/openadsdk/component/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onError(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 9

    .prologue
    const/4 v2, -0x3

    const/4 v6, -0x4

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 100
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 101
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/a/b;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->b:Landroid/content/Context;

    const/16 v5, 0x9

    invoke-direct {v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/component/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_50

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_23

    .line 105
    :cond_50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 106
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 107
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v3

    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 111
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/f/b;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/h/f/b;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v3

    const v4, 0x7d000

    .line 113
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(I)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a()Lcom/bytedance/sdk/openadsdk/h/f/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a(Lcom/bytedance/sdk/openadsdk/h/f/b;)Z

    goto/16 :goto_23

    .line 120
    :cond_b1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onDrawFeedAdLoad(Ljava/util/List;)V

    .line 128
    :goto_bc
    return-void

    .line 123
    :cond_bd
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onError(ILjava/lang/String;)V

    goto :goto_bc

    .line 126
    :cond_c7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onError(ILjava/lang/String;)V

    goto :goto_bc
.end method
