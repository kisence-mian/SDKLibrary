.class final Lcom/anythink/network/gdt/GDTATNativeAd$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeAd;->a(Landroid/view/View;)V
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
    .line 487
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd$6;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$6;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->d:Lcom/qq/e/ads/nativ/NativeMediaADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeMediaADData;->onClicked(Landroid/view/View;)V

    .line 491
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$6;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdClicked()V

    .line 492
    return-void
.end method
