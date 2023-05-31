.class final Lcom/anythink/network/gdt/GDTATNativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
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

    .prologue
    .line 203
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-boolean v0, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->h:Z

    if-nez v0, :cond_25

    .line 208
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->h:Z

    .line 209
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 210
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->setVolumeOn(Z)V

    .line 211
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$2;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->play()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    .line 218
    :cond_25
    :goto_25
    return-void

    .line 215
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 222
    return-void
.end method
