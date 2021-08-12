.class final Lcom/anythink/network/toutiao/TTATNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeAd;->setAdData(ZLandroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(JJ)V
    .registers 5

    .line 92
    return-void
.end method

.method public final onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2

    .line 87
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdVideoEnd()V

    .line 88
    return-void
.end method

.method public final onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2

    .line 83
    return-void
.end method

.method public final onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2

    .line 79
    return-void
.end method

.method public final onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2

    .line 74
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$1;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdVideoStart()V

    .line 75
    return-void
.end method

.method public final onVideoError(II)V
    .registers 3

    .line 70
    return-void
.end method

.method public final onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2

    .line 66
    return-void
.end method
