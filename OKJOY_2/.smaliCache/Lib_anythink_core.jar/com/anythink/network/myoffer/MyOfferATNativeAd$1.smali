.class final Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/g/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATNativeAd;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;->a:Lcom/anythink/network/myoffer/MyOfferATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;->a:Lcom/anythink/network/myoffer/MyOfferATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->notifyAdClicked()V

    .line 42
    return-void
.end method

.method public final onAdClosed()V
    .registers 1

    .line 37
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;->a:Lcom/anythink/network/myoffer/MyOfferATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->notifyAdImpression()V

    .line 32
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 2

    .line 47
    return-void
.end method
