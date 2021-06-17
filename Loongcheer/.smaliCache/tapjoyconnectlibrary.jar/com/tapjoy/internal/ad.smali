.class public Lcom/tapjoy/internal/ad;
.super Lcom/tapjoy/internal/ae;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Matrix;

.field private final c:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ae;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/ad;->a:I

    .line 18
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ad;->b:Landroid/graphics/Matrix;

    .line 19
    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/tapjoy/internal/ad;->c:[F

    .line 23
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 49
    iget v0, p0, Lcom/tapjoy/internal/ad;->a:I

    if-nez v0, :cond_8

    .line 50
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ae;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 52
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getWidth()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getHeight()I

    move-result v1

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 58
    :try_start_17
    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_53

    .line 59
    nop

    .line 61
    :try_start_1e
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 62
    instance-of v4, v3, Landroid/widget/ScrollView;

    if-nez v4, :cond_2c

    instance-of v4, v3, Landroid/widget/HorizontalScrollView;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2e

    if-eqz v4, :cond_2d

    .line 63
    :cond_2c
    move-object v2, v3

    .line 66
    :cond_2d
    goto :goto_2f

    .line 64
    :catch_2e
    move-exception v3

    .line 68
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    .line 69
    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 70
    rsub-int/lit8 v5, v3, 0x0

    rsub-int/lit8 v6, v4, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_52} :catch_53

    .line 73
    goto :goto_54

    .line 71
    :catch_53
    move-exception v2

    .line 75
    :goto_54
    iget v2, p0, Lcom/tapjoy/internal/ad;->a:I

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 76
    iget v2, p0, Lcom/tapjoy/internal/ad;->a:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_b6

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 84
    :pswitch_68
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    goto :goto_7c

    .line 81
    :pswitch_6e
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    goto :goto_7c

    .line 78
    :pswitch_76
    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    nop

    .line 90
    :goto_7c
    iget-object v2, p0, Lcom/tapjoy/internal/ad;->b:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/tapjoy/internal/ad;->a:I

    mul-int/lit8 v4, v4, -0x5a

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 91
    iget v2, p0, Lcom/tapjoy/internal/ad;->a:I

    packed-switch v2, :pswitch_data_c0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99
    :pswitch_91
    iget-object v0, p0, Lcom/tapjoy/internal/ad;->b:Landroid/graphics/Matrix;

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    goto :goto_af

    .line 96
    :pswitch_9a
    iget-object v2, p0, Lcom/tapjoy/internal/ad;->b:Landroid/graphics/Matrix;

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 97
    goto :goto_af

    .line 93
    :pswitch_a6
    iget-object v1, p0, Lcom/tapjoy/internal/ad;->b:Landroid/graphics/Matrix;

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 94
    nop

    .line 105
    :goto_af
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ae;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    return-void

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_76
        :pswitch_6e
        :pswitch_68
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_9a
        :pswitch_91
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 112
    iget v0, p0, Lcom/tapjoy/internal/ad;->a:I

    if-nez v0, :cond_9

    .line 113
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ae;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/ad;->c:[F

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 118
    iget-object v1, p0, Lcom/tapjoy/internal/ad;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 119
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 120
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ae;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getRotationCount()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/tapjoy/internal/ad;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 39
    iget v0, p0, Lcom/tapjoy/internal/ad;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 40
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/ae;->onMeasure(II)V

    return-void

    .line 42
    :cond_a
    invoke-super {p0, p2, p1}, Lcom/tapjoy/internal/ae;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ad;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ad;->setMeasuredDimension(II)V

    .line 45
    return-void
.end method

.method public setRotationCount(I)V
    .registers 3
    .param p1, "rotationCount"    # I

    .line 34
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/tapjoy/internal/ad;->a:I

    .line 35
    return-void
.end method
