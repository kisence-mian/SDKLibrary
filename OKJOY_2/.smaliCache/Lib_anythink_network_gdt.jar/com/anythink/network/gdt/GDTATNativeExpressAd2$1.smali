.class final Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/express2/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeExpressAd2;-><init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATNativeExpressAd2;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->notifyAdDislikeClick()V

    .line 39
    return-void
.end method

.method public final onClick()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->notifyAdClicked()V

    .line 44
    return-void
.end method

.method public final onExposed()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->notifyAdImpression()V

    .line 49
    return-void
.end method

.method public final onRenderFail()V
    .registers 1

    .line 53
    return-void
.end method

.method public final onRenderSuccess()V
    .registers 1

    .line 57
    return-void
.end method
