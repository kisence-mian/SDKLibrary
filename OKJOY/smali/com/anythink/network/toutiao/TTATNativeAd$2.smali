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

    .prologue
    .line 111
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdClicked()V

    .line 115
    return-void
.end method

.method public final onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->notifyAdClicked()V

    .line 120
    return-void
.end method

.method public final onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .registers 2

    .prologue
    .line 125
    return-void
.end method
