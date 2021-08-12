.class public Lcom/sigmob/sdk/base/common/w;
.super Landroid/view/GestureDetector;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Lcom/sigmob/sdk/base/common/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/common/b;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/w;->b:Lcom/sigmob/sdk/base/common/b;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/w;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/w;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/common/b;

    invoke-direct {v0, p2, p3}, Lcom/sigmob/sdk/base/common/b;-><init>(Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/w;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/common/b;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    if-nez p2, :cond_6

    goto :goto_2a

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2a

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2a

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_2a

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    :goto_2a
    return v0
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/w;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b;->b()V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/w;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b;->c()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    :pswitch_c
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/w;->a:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/sigmob/sdk/base/common/w;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/w;->a()V

    goto :goto_1d

    :pswitch_18
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/b;->a()V

    :cond_1d
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method
