.class final Lcom/anythink/network/ks/KSATFeedAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATFeedAd;->a(Z)V
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

    .prologue
    .line 28
    iput-object p1, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATFeedAd;->notifyAdClicked()V

    .line 32
    return-void
.end method

.method public final onAdShow()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public final onDislikeClicked()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anythink/network/ks/KSATFeedAd$1;->a:Lcom/anythink/network/ks/KSATFeedAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATFeedAd;->notifyAdDislikeClick()V

    .line 42
    return-void
.end method
