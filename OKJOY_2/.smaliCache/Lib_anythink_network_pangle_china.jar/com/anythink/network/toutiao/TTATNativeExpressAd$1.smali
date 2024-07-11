.class final Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressAd;->setAdData(ZZ)V
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

    .line 53
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickRetry()V
    .registers 1

    .line 93
    return-void
.end method

.method public final onProgressUpdate(JJ)V
    .registers 5

    .line 83
    return-void
.end method

.method public final onVideoAdComplete()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdVideoEnd()V

    .line 88
    return-void
.end method

.method public final onVideoAdContinuePlay()V
    .registers 1

    .line 78
    return-void
.end method

.method public final onVideoAdPaused()V
    .registers 1

    .line 73
    return-void
.end method

.method public final onVideoAdStartPlay()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdVideoStart()V

    .line 68
    return-void
.end method

.method public final onVideoError(II)V
    .registers 6

    .line 61
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 61
    const-string p1, "onVideoError, errorCode: %d, errorMsg: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public final onVideoLoad()V
    .registers 1

    .line 57
    return-void
.end method
