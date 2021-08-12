.class Lcom/bytedance/sdk/openadsdk/core/w$1;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/w;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/w;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 10

    .line 104
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 105
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 108
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 109
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/w$1$1;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/w$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/w$1;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4c
    goto :goto_21

    .line 113
    :cond_4d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_59

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onNativeAdLoad(Ljava/util/List;)V

    goto :goto_63

    .line 116
    :cond_59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    .line 118
    :goto_63
    goto :goto_6e

    .line 119
    :cond_64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    .line 121
    :goto_6e
    return-void
.end method
