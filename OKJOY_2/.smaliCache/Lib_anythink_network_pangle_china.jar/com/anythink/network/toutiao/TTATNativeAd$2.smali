.class final Lcom/anythink/network/toutiao/TTATNativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeAd;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
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

    .line 118
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 3

    .line 121
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdClicked()V

    .line 122
    return-void
.end method

.method public final onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 3

    .line 126
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdClicked()V

    .line 127
    return-void
.end method

.method public final onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 2

    .line 131
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdImpression()V

    .line 132
    return-void
.end method
