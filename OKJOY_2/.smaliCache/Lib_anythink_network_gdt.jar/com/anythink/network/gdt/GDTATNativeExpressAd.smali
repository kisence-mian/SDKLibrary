.class public Lcom/anythink/network/gdt/GDTATNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/qq/e/ads/nativ/NativeExpressAD;

.field b:Lcom/qq/e/ads/nativ/NativeExpressADView;

.field c:Lcom/anythink/network/gdt/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIII)V
    .registers 12

    .line 29
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 31
    new-instance v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;-><init>(Lcom/anythink/network/gdt/GDTATNativeExpressAd;)V

    .line 100
    nop

    .line 101
    nop

    .line 102
    const/4 v1, -0x1

    if-lez p3, :cond_16

    .line 103
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    int-to-float p3, p3

    invoke-static {p1, p3}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result p3

    goto :goto_17

    .line 102
    :cond_16
    move p3, v1

    .line 105
    :goto_17
    if-lez p4, :cond_22

    .line 106
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    int-to-float p4, p4

    invoke-static {p1, p4}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;F)I

    move-result p4

    goto :goto_23

    .line 105
    :cond_22
    const/4 p4, -0x2

    .line 109
    :goto_23
    new-instance v2, Lcom/qq/e/ads/nativ/NativeExpressAD;

    new-instance v3, Lcom/qq/e/ads/nativ/ADSize;

    invoke-direct {v3, p3, p4}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    invoke-direct {v2, p1, v3, p2, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    iput-object v2, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 111
    new-instance p2, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p5, p4, :cond_3a

    move v0, p4

    goto :goto_3b

    :cond_3a
    move v0, p3

    .line 112
    :goto_3b
    invoke-virtual {p2, v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p2

    if-ne p5, p4, :cond_42

    move p3, p4

    .line 113
    :cond_42
    invoke-virtual {p2, p3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p2

    .line 114
    invoke-virtual {p2, p6}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p2

    .line 117
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {p3, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 118
    if-eq p7, v1, :cond_5a

    .line 119
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {p3, p7}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMaxVideoDuration(I)V

    .line 122
    :cond_5a
    iget-object p3, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-virtual {p2}, Lcom/qq/e/ads/cfg/VideoOption;->getAutoPlayPolicy()I

    move-result p2

    invoke-static {p1, p2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoPlayPolicy(I)V

    .line 124
    return-void
.end method

.method private a(Lcom/anythink/network/gdt/a;)V
    .registers 3

    .line 127
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 128
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    .line 129
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    .line 162
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 163
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 164
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->a:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 165
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 138
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    return-object p1
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 143
    invoke-super {p0, p1, p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 147
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 155
    return-void
.end method
