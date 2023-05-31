.class Lcom/bytedance/sdk/openadsdk/core/w$1;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


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

    .prologue
    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 9

    .prologue
    const/4 v2, -0x3

    const/4 v6, -0x4

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 92
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/w$1$1;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v5

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/w$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/w$1;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 96
    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onNativeAdLoad(Ljava/util/List;)V

    .line 104
    :goto_55
    return-void

    .line 99
    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    goto :goto_55

    .line 102
    :cond_60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    goto :goto_55
.end method
