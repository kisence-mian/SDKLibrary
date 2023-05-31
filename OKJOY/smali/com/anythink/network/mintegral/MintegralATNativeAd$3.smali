.class final Lcom/anythink/network/mintegral/MintegralATNativeAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/out/OnMTGMediaViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/mintegral/MintegralATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATNativeAd;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd$3;->a:Lcom/anythink/network/mintegral/MintegralATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterFullscreen()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public final onExitFullscreen()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 189
    return-void
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 194
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 184
    return-void
.end method

.method public final onVideoAdClicked(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd$3;->a:Lcom/anythink/network/mintegral/MintegralATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->notifyAdClicked()V

    .line 199
    return-void
.end method

.method public final onVideoStart()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method
