.class public Lcom/sigmob/sdk/base/common/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z

.field private g:I

.field private h:F

.field private i:Lcom/sigmob/sdk/base/common/b$a;

.field private j:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->c:F

    sget-object v1, Lcom/sigmob/sdk/base/common/b$a;->a:Lcom/sigmob/sdk/base/common/b$a;

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->c:F

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/b;->j:Landroid/view/View;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/b;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method private a(F)V
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->h:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    sget-object p1, Lcom/sigmob/sdk/base/common/b$a;->b:Lcom/sigmob/sdk/base/common/b$a;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    :cond_a
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p2, :cond_6

    goto :goto_1a

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    return v0
.end method

.method private b(F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/b;->d(F)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/b;->g(F)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sigmob/sdk/base/common/b$a;->c:Lcom/sigmob/sdk/base/common/b$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    iput p1, p0, Lcom/sigmob/sdk/base/common/b;->h:F

    :cond_12
    return-void
.end method

.method private c(F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/b;->e(F)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/b;->f(F)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sigmob/sdk/base/common/b$a;->b:Lcom/sigmob/sdk/base/common/b$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    iput p1, p0, Lcom/sigmob/sdk/base/common/b;->h:F

    :cond_12
    return-void
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->g:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_d

    sget-object v0, Lcom/sigmob/sdk/base/common/b$a;->d:Lcom/sigmob/sdk/base/common/b$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    :cond_d
    return-void
.end method

.method private d(F)Z
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->h:F

    iget v2, p0, Lcom/sigmob/sdk/base/common/b;->c:F

    add-float/2addr v0, v2

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_15

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->e:Z

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/b;->f:Z

    return v1

    :cond_15
    return v0
.end method

.method private e(F)Z
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->h:F

    iget v2, p0, Lcom/sigmob/sdk/base/common/b;->c:F

    sub-float/2addr v0, v2

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_18

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->f:Z

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/b;->e:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/b;->d()V

    return v1

    :cond_18
    return v0
.end method

.method private f(F)Z
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->d:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private g(F)Z
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->d:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method


# virtual methods
.method a()V
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/b$a;->d:Lcom/sigmob/sdk/base/common/b$a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/b;->b()V

    return-void
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->g:I

    sget-object v0, Lcom/sigmob/sdk/base/common/b$a;->a:Lcom/sigmob/sdk/base/common/b$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    return-void
.end method

.method c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    sget-object v1, Lcom/sigmob/sdk/base/common/b$a;->d:Lcom/sigmob/sdk/base/common/b$a;

    if-ne v0, v1, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/b;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/sigmob/sdk/base/common/b$a;->e:Lcom/sigmob/sdk/base/common/b$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    :goto_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_1a
    sget-object v0, Lcom/sigmob/sdk/base/common/b$1;->a:[I

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b;->i:Lcom/sigmob/sdk/base/common/b$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    goto :goto_45

    :pswitch_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b;->c(F)V

    goto :goto_45

    :pswitch_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b;->b(F)V

    goto :goto_45

    :pswitch_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->h:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b;->a(F)V

    :goto_45
    :pswitch_45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->d:F

    goto :goto_15

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_45
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
