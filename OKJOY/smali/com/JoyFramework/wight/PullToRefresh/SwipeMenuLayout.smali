.class public Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SwipeMenuLayout"

.field private static m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

.field private static n:Z


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/graphics/PointF;

.field private j:Z

.field private k:Landroid/graphics/PointF;

.field private l:Z

.field private o:Landroid/view/VelocityTracker;

.field private p:Landroid/util/Log;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/animation/ValueAnimator;

.field private v:Landroid/animation/ValueAnimator;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->i:Landroid/graphics/PointF;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->j:Z

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->k:Landroid/graphics/PointF;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method private a(II)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    .line 164
    :goto_c
    if-ge v7, p1, :cond_3a

    .line 165
    invoke-virtual {p0, v7}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_36

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 168
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_36

    .line 169
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 172
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 164
    :cond_36
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c

    .line 177
    :cond_3a
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    .line 97
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->c:I

    .line 98
    iput-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->q:Z

    .line 99
    iput-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->r:Z

    .line 100
    iput-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    .line 116
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 395
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    .line 398
    :cond_a
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 399
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;Z)Z
    .registers 2

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->w:Z

    return p1
.end method

.method private g()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 362
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 366
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 369
    :cond_22
    return-void
.end method

.method public static getViewCache()Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    return-object v0
.end method

.method private h()V
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 403
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 404
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    .line 408
    :cond_11
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;
    .registers 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->r:Z

    .line 79
    return-object p0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->q:Z

    return v0
.end method

.method public b(Z)Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;
    .registers 2

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    .line 88
    return-object p0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->r:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    return v0
.end method

.method public d()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 339
    sput-object p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    .line 340
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 344
    :cond_c
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->g()V

    .line 345
    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v0

    aput v0, v1, v2

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    :goto_1f
    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    .line 346
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/JoyFramework/wight/PullToRefresh/b;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/PullToRefresh/b;-><init>(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 351
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/JoyFramework/wight/PullToRefresh/c;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/PullToRefresh/c;-><init>(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->u:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 358
    return-void

    .line 345
    :cond_51
    iget v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    neg-int v0, v0

    goto :goto_1f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 203
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->q:Z

    if-eqz v1, :cond_12

    .line 204
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->a(Landroid/view/MotionEvent;)V

    .line 205
    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->o:Landroid/view/VelocityTracker;

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_144

    .line 295
    :cond_12
    :goto_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_16
    return v0

    .line 208
    :pswitch_17
    iput-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->l:Z

    .line 209
    iput-boolean v4, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->j:Z

    .line 210
    iput-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->s:Z

    .line 211
    sget-boolean v1, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->n:Z

    if-nez v1, :cond_16

    .line 215
    sput-boolean v4, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->n:Z

    .line 216
    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->i:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 217
    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->k:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 218
    sget-object v1, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    if-eqz v1, :cond_55

    .line 219
    sget-object v1, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    if-eq v1, p0, :cond_4e

    .line 220
    sget-object v1, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    .line 221
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->r:Z

    iput-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->s:Z

    .line 224
    :cond_4e
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 227
    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->d:I

    goto :goto_12

    .line 231
    :pswitch_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_72

    .line 232
    iput-boolean v4, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->l:Z

    .line 235
    :cond_72
    iget-boolean v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->s:Z

    if-nez v2, :cond_9b

    .line 236
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->c:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 237
    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->d:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 238
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b2

    .line 239
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a6

    .line 240
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    if-eqz v1, :cond_a2

    .line 241
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->d()V

    .line 257
    :cond_9b
    :goto_9b
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->h()V

    .line 258
    sput-boolean v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->n:Z

    goto/16 :goto_12

    .line 243
    :cond_a2
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    goto :goto_9b

    .line 245
    :cond_a6
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    if-eqz v1, :cond_ae

    .line 246
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    goto :goto_9b

    .line 248
    :cond_ae
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->d()V

    goto :goto_9b

    .line 250
    :cond_b2
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->g:I

    if-le v1, v2, :cond_c2

    .line 251
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->d()V

    goto :goto_9b

    .line 253
    :cond_c2
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    goto :goto_9b

    .line 261
    :pswitch_c6
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->s:Z

    if-nez v1, :cond_12

    .line 262
    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 263
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_e9

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_f0

    .line 264
    :cond_e9
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 267
    :cond_f0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_fd

    .line 268
    iput-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->j:Z

    .line 271
    :cond_fd
    float-to-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollBy(II)V

    .line 272
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    if-eqz v1, :cond_12a

    .line 273
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    if-gez v1, :cond_10e

    .line 274
    invoke-virtual {p0, v0, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollTo(II)V

    .line 277
    :cond_10e
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    if-le v1, v2, :cond_11b

    .line 278
    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollTo(II)V

    .line 290
    :cond_11b
    :goto_11b
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->i:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_12

    .line 281
    :cond_12a
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    neg-int v2, v2

    if-ge v1, v2, :cond_139

    .line 282
    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollTo(II)V

    .line 285
    :cond_139
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    if-lez v1, :cond_11b

    .line 286
    invoke-virtual {p0, v0, v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollTo(II)V

    goto :goto_11b

    .line 206
    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_17
        :pswitch_5c
        :pswitch_c6
        :pswitch_5c
    .end packed-switch
.end method

.method public e()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    .line 373
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 374
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 377
    :cond_e
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->g()V

    .line 378
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    aput v1, v0, v2

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/JoyFramework/wight/PullToRefresh/d;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/PullToRefresh/d;-><init>(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/JoyFramework/wight/PullToRefresh/e;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/PullToRefresh/e;-><init>(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 391
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 424
    sget-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    if-ne p0, v0, :cond_10

    .line 425
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->g()V

    .line 426
    sget-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {v0, v1, v1}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollTo(II)V

    .line 427
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    .line 430
    :cond_10
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 158
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 411
    sget-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    if-ne p0, v0, :cond_c

    .line 412
    sget-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    .line 413
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->m:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    .line 416
    :cond_c
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 417
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 299
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->q:Z

    if-eqz v1, :cond_70

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_76

    .line 330
    :cond_c
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->s:Z

    if-eqz v1, :cond_70

    .line 335
    :cond_10
    :goto_10
    return v0

    .line 303
    :pswitch_11
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    if-eqz v1, :cond_37

    .line 304
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    if-le v1, v2, :cond_56

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_56

    .line 305
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->j:Z

    if-eqz v1, :cond_10

    .line 306
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    goto :goto_10

    .line 311
    :cond_37
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    if-le v1, v2, :cond_56

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_56

    .line 312
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->j:Z

    if-eqz v1, :cond_10

    .line 313
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e()V

    goto :goto_10

    .line 319
    :cond_56
    iget-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->l:Z

    if-eqz v1, :cond_c

    goto :goto_10

    .line 325
    :pswitch_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    goto :goto_10

    .line 335
    :cond_70
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10

    .line 300
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5b
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getChildCount()I

    move-result v3

    .line 181
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    .line 184
    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v9

    :goto_15
    if-ge v2, v3, :cond_7d

    .line 185
    invoke-virtual {p0, v2}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3f

    .line 187
    if-nez v2, :cond_42

    .line 188
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 189
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 184
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 190
    :cond_42
    iget-boolean v5, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->t:Z

    if-eqz v5, :cond_61

    .line 191
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 192
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_3f

    .line 194
    :cond_61
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_3f

    .line 200
    :cond_7d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 119
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->setClickable(Z)V

    .line 121
    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    .line 122
    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e:I

    .line 124
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getChildCount()I

    move-result v6

    .line 126
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_5c

    move v1, v2

    :goto_19
    move v5, v0

    move v3, v0

    move v4, v0

    .line 129
    :goto_1c
    if-ge v5, v6, :cond_65

    .line 130
    invoke-virtual {p0, v5}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 131
    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    .line 132
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_8e

    .line 133
    invoke-virtual {p0, v7, p1, p2}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->measureChild(Landroid/view/View;II)V

    .line 134
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    iget v8, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e:I

    .line 136
    if-eqz v1, :cond_8c

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_8c

    move v0, v2

    .line 140
    :goto_4a
    if-lez v5, :cond_5e

    .line 141
    iget v3, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    iput v3, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    move v3, v4

    .line 129
    :goto_56
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1c

    :cond_5c
    move v1, v0

    .line 126
    goto :goto_19

    .line 143
    :cond_5e
    iput-object v7, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->h:Landroid/view/View;

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_56

    .line 149
    :cond_65
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->e:I

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->setMeasuredDimension(II)V

    .line 150
    iget v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->f:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->g:I

    .line 151
    if-eqz v3, :cond_8b

    .line 152
    invoke-direct {p0, v6, p1}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->a(II)V

    .line 155
    :cond_8b
    return-void

    :cond_8c
    move v0, v3

    goto :goto_4a

    :cond_8e
    move v0, v3

    move v3, v4

    goto :goto_56
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->b:I

    if-le v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    goto :goto_d
.end method

.method public setSwipeEnable(Z)V
    .registers 2

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->q:Z

    .line 71
    return-void
.end method
