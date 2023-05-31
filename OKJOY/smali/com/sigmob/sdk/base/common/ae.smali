.class public Lcom/sigmob/sdk/base/common/ae;
.super Landroid/view/GestureDetector;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Lcom/sigmob/sdk/base/common/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/common/b;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/ae;->b:Lcom/sigmob/sdk/base/common/b;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/ae;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/ae;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/common/b;

    invoke-direct {v0, p2, p3}, Lcom/sigmob/sdk/base/common/b;-><init>(Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/ae;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/common/b;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v3, v1, v4

    if-ltz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_6

    cmpl-float v1, v2, v4

    if-ltz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ae;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b;->b()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ae;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b;->c()V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ae;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b;->d()Z

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

    :cond_b
    :goto_b
    return v0

    :pswitch_c
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ae;->b:Lcom/sigmob/sdk/base/common/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b;->a()V

    goto :goto_b

    :pswitch_12
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ae;->a:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/sigmob/sdk/base/common/ae;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/ae;->a()V

    goto :goto_b

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
