.class final Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 154
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdClicked()V

    .line 155
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 159
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onAdShow()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdImpression()V

    .line 161
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8

    .line 165
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 165
    const-string v2, "onRenderFail, errorCode: %d, errorMsg: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_27

    .line 168
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 170
    :cond_27
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 6

    .line 174
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRenderSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iput-object p1, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_1a

    .line 177
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 180
    :cond_1a
    return-void
.end method
