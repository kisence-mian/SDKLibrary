.class final Lcom/anythink/network/toutiao/TTATAdapter$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;[ILjava/util/List;Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V
    .registers 5

    .line 359
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->a:[I

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->c:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 362
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 366
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 6

    .line 370
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->a:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 371
    aget p1, p1, v0

    if-nez p1, :cond_4c

    .line 372
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2b

    .line 373
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATAdapter;->u(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 374
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATAdapter;->v(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 377
    :cond_2b
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATAdapter;->w(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 378
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 379
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 380
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATAdapter;->x(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 384
    :cond_4c
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 4

    .line 388
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->c:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->a:[I

    const/4 p2, 0x0

    aget p3, p1, p2

    add-int/lit8 p3, p3, -0x1

    aput p3, p1, p2

    .line 390
    aget p1, p1, p2

    if-nez p1, :cond_35

    .line 391
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATAdapter;->y(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 392
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 393
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 394
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$8;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATAdapter;->z(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 398
    :cond_35
    return-void
.end method
