.class final Lcom/anythink/network/toutiao/TTATAdapter$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/Map;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:I

.field final synthetic e:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;ZLandroid/graphics/Bitmap;I)V
    .registers 6

    .line 292
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->b:Z

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->c:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATAdapter;->m(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 296
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATAdapter;->n(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_15
    return-void
.end method

.method public final onNativeAdLoad(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 304
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeAd;

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v4, v2, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->b:Z

    iget-object v7, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->c:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->d:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/anythink/network/toutiao/TTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;I)V

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    goto :goto_9

    .line 308
    :cond_2c
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATAdapter;->o(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 310
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 311
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$6;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATAdapter;->p(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 313
    :cond_49
    return-void
.end method