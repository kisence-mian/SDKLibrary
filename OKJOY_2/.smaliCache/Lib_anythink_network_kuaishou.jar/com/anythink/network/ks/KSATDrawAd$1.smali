.class final Lcom/anythink/network/ks/KSATDrawAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATDrawAd;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATDrawAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATDrawAd;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATDrawAd;->notifyAdClicked()V

    .line 54
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATDrawAd;->notifyAdImpression()V

    .line 59
    return-void
.end method

.method public final onVideoPlayEnd()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATDrawAd;->notifyAdVideoEnd()V

    .line 79
    return-void
.end method

.method public final onVideoPlayError()V
    .registers 1

    .line 84
    return-void
.end method

.method public final onVideoPlayPause()V
    .registers 1

    .line 69
    return-void
.end method

.method public final onVideoPlayResume()V
    .registers 1

    .line 74
    return-void
.end method

.method public final onVideoPlayStart()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATDrawAd;->notifyAdVideoStart()V

    .line 64
    return-void
.end method
