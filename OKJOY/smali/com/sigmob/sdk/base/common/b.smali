.class public Lcom/sigmob/sdk/base/common/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# static fields
.field private static final b:I = 0x4

.field private static final c:F = 100.0f

.field private static final d:F = 100.0f


# instance fields
.field a:Z

.field private final e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:I

.field private k:F

.field private l:Lcom/sigmob/sdk/base/common/c;

.field private m:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput v2, p0, Lcom/sigmob/sdk/base/common/b;->f:F

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->a:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->f:F

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/b;->m:Landroid/view/View;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/b;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method private a(F)V
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->b:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    :cond_a
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private b(F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/b;->d(F)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/b;->g(F)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->c:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    iput p1, p0, Lcom/sigmob/sdk/base/common/b;->k:F

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

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->b:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    iput p1, p0, Lcom/sigmob/sdk/base/common/b;->k:F

    :cond_12
    return-void
.end method

.method private d(F)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/sigmob/sdk/base/common/b;->i:Z

    if-eqz v2, :cond_7

    :goto_6
    return v0

    :cond_7
    iget v2, p0, Lcom/sigmob/sdk/base/common/b;->k:F

    iget v3, p0, Lcom/sigmob/sdk/base/common/b;->f:F

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_15

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/b;->h:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->i:Z

    goto :goto_6

    :cond_15
    move v0, v1

    goto :goto_6
.end method

.method private e()V
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->j:I

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->j:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->d:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    :cond_f
    return-void
.end method

.method private e(F)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/sigmob/sdk/base/common/b;->h:Z

    if-eqz v2, :cond_7

    :goto_6
    return v0

    :cond_7
    iget v2, p0, Lcom/sigmob/sdk/base/common/b;->k:F

    iget v3, p0, Lcom/sigmob/sdk/base/common/b;->f:F

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_18

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/b;->i:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->h:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/b;->e()V

    goto :goto_6

    :cond_18
    move v0, v1

    goto :goto_6
.end method

.method private f(F)Z
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->g:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private g(F)Z
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/b;->g:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    sget-object v1, Lcom/sigmob/sdk/base/common/c;->d:Lcom/sigmob/sdk/base/common/c;

    if-ne v0, v1, :cond_8

    :cond_8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/b;->b()V

    return-void
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->j:I

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->a:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    return-void
.end method

.method c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    return-void
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    sget-object v1, Lcom/sigmob/sdk/base/common/c;->d:Lcom/sigmob/sdk/base/common/c;

    if-ne v0, v1, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/b;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/sigmob/sdk/base/common/c;->e:Lcom/sigmob/sdk/base/common/c;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_a

    :cond_1a
    sget-object v0, Lcom/sigmob/sdk/base/common/b$1;->a:[I

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b;->l:Lcom/sigmob/sdk/base/common/c;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    :goto_27
    :pswitch_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->g:F

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_a

    :pswitch_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/b;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b;->a(F)V

    goto :goto_27

    :pswitch_40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b;->b(F)V

    goto :goto_27

    :pswitch_48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/b;->c(F)V

    goto :goto_27

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_32
        :pswitch_40
        :pswitch_48
        :pswitch_27
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/b;->a:Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
