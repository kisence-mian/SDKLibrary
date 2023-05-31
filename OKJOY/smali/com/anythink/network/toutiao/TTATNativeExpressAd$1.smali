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

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickRetry()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public final onProgressUpdate(JJ)V
    .registers 5

    .prologue
    .line 67
    return-void
.end method

.method public final onVideoAdComplete()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdVideoEnd()V

    .line 72
    return-void
.end method

.method public final onVideoAdContinuePlay()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method public final onVideoAdPaused()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public final onVideoAdStartPlay()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdVideoStart()V

    .line 52
    return-void
.end method

.method public final onVideoError(II)V
    .registers 8

    .prologue
    .line 45
    invoke-static {}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoError, errorCode: %d, errorMsg: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 45
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public final onVideoLoad()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method
