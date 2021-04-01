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

    .prologue
    .line 130
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdClicked()V

    .line 134
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 138
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdShow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 143
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRenderFail, errorCode: %d, errorMsg: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 143
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 6

    .prologue
    .line 149
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRenderSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iput-object p1, v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Landroid/view/View;

    .line 151
    return-void
.end method
