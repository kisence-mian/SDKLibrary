.class final Lcom/anythink/network/ks/KSATNativeAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATNativeAd;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
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

    .prologue
    .line 125
    iput-object p1, p0, Lcom/anythink/network/ks/KSATNativeAd$3;->a:Lcom/anythink/network/ks/KSATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;Lcom/kwad/sdk/export/i/KsNativeAd;)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anythink/network/ks/KSATNativeAd$3;->a:Lcom/anythink/network/ks/KSATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATNativeAd;->notifyAdClicked()V

    .line 129
    return-void
.end method

.method public final onAdShow(Lcom/kwad/sdk/export/i/KsNativeAd;)V
    .registers 2

    .prologue
    .line 134
    return-void
.end method
