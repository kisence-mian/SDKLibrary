.class final Lcom/anythink/network/mintegral/MintegralATNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Z)V
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
    .line 43
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd$1;->a:Lcom/anythink/network/mintegral/MintegralATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd$1;->a:Lcom/anythink/network/mintegral/MintegralATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->notifyAdClicked()V

    .line 56
    return-void
.end method

.method public final onAdFramesLoaded(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 51
    return-void
.end method

.method public final onAdLoaded(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public final onLoggingImpression(I)V
    .registers 2

    .prologue
    .line 66
    return-void
.end method
