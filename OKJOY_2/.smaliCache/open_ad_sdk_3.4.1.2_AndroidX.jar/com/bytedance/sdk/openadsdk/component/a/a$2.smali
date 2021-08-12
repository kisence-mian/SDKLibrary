.class Lcom/bytedance/sdk/openadsdk/component/a/a$2;
.super Ljava/lang/Object;
.source "FeedAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/a;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
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

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->d:Lcom/bytedance/sdk/openadsdk/component/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 8

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 100
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 101
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->b:Landroid/content/Context;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/component/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_40
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v2

    if-nez v2, :cond_a7

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 105
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a7

    .line 106
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v2

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 109
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/f/b;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/i/f/b;-><init>()V

    .line 110
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/f/b;

    move-result-object v2

    const v3, 0x32000

    .line 111
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/f/b;->a(I)Lcom/bytedance/sdk/openadsdk/i/f/b;

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/i/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/f/b;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/e/c;->a(Lcom/bytedance/sdk/openadsdk/i/f/b;)V

    .line 116
    :cond_a7
    goto/16 :goto_21

    .line 118
    :cond_a9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b5

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    goto :goto_bf

    .line 121
    :cond_b5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 123
    :goto_bf
    goto :goto_ca

    .line 124
    :cond_c0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 126
    :goto_ca
    return-void
.end method
