.class final Lcom/anythink/network/toutiao/TTATAdapter$7;
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

    .prologue
    .line 303
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->b:Z

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->c:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 306
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_19

    .line 307
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 309
    :cond_19
    return-void
.end method

.method public final onNativeAdLoad(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 315
    new-instance v0, Lcom/anythink/network/toutiao/TTATNativeAd;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->b:Z

    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->c:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->d:I

    invoke-direct/range {v0 .. v6}, Lcom/anythink/network/toutiao/TTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;I)V

    .line 316
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 319
    :cond_2a
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_39

    .line 320
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$7;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-interface {v0, v1, v7}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    .line 322
    :cond_39
    return-void
.end method
