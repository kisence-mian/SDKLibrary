.class final Lcom/anythink/network/gdt/GDTATNativeExpressAd2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/express2/MediaEventListener;


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

    .line 60
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$2;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoCache()V
    .registers 1

    .line 64
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$2;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->notifyAdVideoEnd()V

    .line 69
    return-void
.end method

.method public final onVideoError()V
    .registers 1

    .line 74
    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    .line 79
    return-void
.end method

.method public final onVideoResume()V
    .registers 1

    .line 84
    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$2;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->notifyAdVideoStart()V

    .line 89
    return-void
.end method
