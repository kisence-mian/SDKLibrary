.class public Lcom/qq/e/ads/nativ/widget/NativeAdContainer;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

.field private b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->INIT:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iput-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->INIT:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iput-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->INIT:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iput-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onDispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "NativeAdContainer onAttachedToWindow"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->ATTACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iput-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onAttachToWindow()V

    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "NativeAdContainer onDetachedFromWindow"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->DETACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iput-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onDetachFromWindow()V

    :cond_15
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged: hasWindowFocus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onWindowFocusChanged(Z)V

    :cond_1e
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowVisibilityChanged: visibility: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onWindowVisibilityChanged(I)V

    :cond_1e
    return-void
.end method

.method public setViewStatusListener(Lcom/qq/e/ads/nativ/widget/ViewStatusListener;)V
    .registers 4
    .param p1, "viewStatusListener"    # Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$1;->a:[I

    iget-object v1, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->b:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    invoke-virtual {v1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onAttachToWindow()V

    goto :goto_13

    :pswitch_1a
    iget-object v0, p0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;->a:Lcom/qq/e/ads/nativ/widget/ViewStatusListener;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/widget/ViewStatusListener;->onDetachFromWindow()V

    goto :goto_13

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
