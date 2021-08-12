.class final Lcom/anythink/network/ks/KSATFeedAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATFeedAd;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATFeedAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATFeedAd;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATFeedAd;->notifyAdClicked()V

    .line 60
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATFeedAd;->notifyAdImpression()V

    .line 65
    return-void
.end method

.method public final onDislikeClicked()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATFeedAd;->notifyAdDislikeClick()V

    .line 70
    return-void
.end method
