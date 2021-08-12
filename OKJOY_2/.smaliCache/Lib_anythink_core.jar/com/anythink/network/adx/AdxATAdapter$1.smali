.class final Lcom/anythink/network/adx/AdxATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/adx/AdxATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATAdapter;Landroid/content/Context;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadError(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATAdapter;->c(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 49
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATAdapter;->d(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_19
    return-void
.end method

.method public final varargs onNativeAdLoaded([Lcom/anythink/basead/e/h;)V
    .registers 7

    .line 37
    array-length v0, p1

    new-array v0, v0, [Lcom/anythink/network/adx/AdxATNativeAd;

    .line 38
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 39
    new-instance v2, Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->a:Landroid/content/Context;

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/e/h;)V

    aput-object v2, v0, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 41
    :cond_15
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->a(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 42
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$1;->b:Lcom/anythink/network/adx/AdxATAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->b(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 44
    :cond_26
    return-void
.end method
