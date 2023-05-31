.class final Lcom/anythink/network/gdt/GDTATNativeAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/MediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd$3;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADButtonClicked()V
    .registers 3

    .prologue
    .line 266
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onADButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public final onFullScreenChanged(Z)V
    .registers 5

    .prologue
    .line 271
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFullScreenChanged, inFullScreen = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public final onReplayButtonClicked()V
    .registers 3

    .prologue
    .line 261
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReplayButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public final onVideoComplete()V
    .registers 3

    .prologue
    .line 249
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$3;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdVideoEnd()V

    .line 251
    return-void
.end method

.method public final onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .registers 7

    .prologue
    .line 255
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoError, errorCode: %d, errorMsg: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 256
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public final onVideoPause()V
    .registers 3

    .prologue
    .line 243
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public final onVideoReady(J)V
    .registers 6

    .prologue
    .line 230
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoReady, videoDuration = "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    .prologue
    .line 236
    invoke-static {}, Lcom/anythink/network/gdt/GDTATNativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$3;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdVideoStart()V

    .line 239
    return-void
.end method
