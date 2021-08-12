.class final Lcom/anythink/network/ks/KSATNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATNativeAd;->a(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATNativeAd;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd$1;->a:Lcom/anythink/network/ks/KSATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .registers 3

    .line 111
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd$1;->a:Lcom/anythink/network/ks/KSATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/ks/KSATNativeAd;->notifyAdClicked()V

    .line 112
    return-void
.end method

.method public final onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .registers 2

    .line 116
    iget-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd$1;->a:Lcom/anythink/network/ks/KSATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/ks/KSATNativeAd;->notifyAdImpression()V

    .line 117
    return-void
.end method
