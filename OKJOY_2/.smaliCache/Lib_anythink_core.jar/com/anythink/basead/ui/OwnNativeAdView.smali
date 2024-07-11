.class public Lcom/anythink/basead/ui/OwnNativeAdView;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    :pswitch_7
    goto :goto_42

    .line 55
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->c:I

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->d:I

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->g:I

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->h:I

    goto :goto_42

    .line 47
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->a:I

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->b:I

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->e:I

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->f:I

    .line 52
    nop

    .line 63
    :goto_42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_25
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getAdClickRecord()Lcom/anythink/basead/c/b;
    .registers 3

    .line 67
    new-instance v0, Lcom/anythink/basead/c/b;

    invoke-direct {v0}, Lcom/anythink/basead/c/b;-><init>()V

    .line 68
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->a:I

    iput v1, v0, Lcom/anythink/basead/c/b;->a:I

    .line 69
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->b:I

    iput v1, v0, Lcom/anythink/basead/c/b;->b:I

    .line 70
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->c:I

    iput v1, v0, Lcom/anythink/basead/c/b;->c:I

    .line 71
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->d:I

    iput v1, v0, Lcom/anythink/basead/c/b;->d:I

    .line 73
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->e:I

    iput v1, v0, Lcom/anythink/basead/c/b;->e:I

    .line 74
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->f:I

    iput v1, v0, Lcom/anythink/basead/c/b;->f:I

    .line 75
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->g:I

    iput v1, v0, Lcom/anythink/basead/c/b;->g:I

    .line 76
    iget v1, p0, Lcom/anythink/basead/ui/OwnNativeAdView;->h:I

    iput v1, v0, Lcom/anythink/basead/c/b;->h:I

    .line 78
    return-object v0
.end method
