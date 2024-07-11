.class final Lcom/anythink/network/gdt/GDTATNativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeAd;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoClicked()V
    .registers 1

    .line 223
    return-void
.end method

.method public final onVideoCompleted()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdVideoEnd()V

    .line 209
    return-void
.end method

.method public final onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .registers 2

    .line 213
    return-void
.end method

.method public final onVideoInit()V
    .registers 1

    .line 179
    return-void
.end method

.method public final onVideoLoaded(I)V
    .registers 2

    .line 191
    return-void
.end method

.method public final onVideoLoading()V
    .registers 1

    .line 183
    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    .line 200
    return-void
.end method

.method public final onVideoReady()V
    .registers 1

    .line 187
    return-void
.end method

.method public final onVideoResume()V
    .registers 1

    .line 204
    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdVideoStart()V

    .line 196
    return-void
.end method

.method public final onVideoStop()V
    .registers 1

    .line 218
    return-void
.end method
