.class public Lcom/kwad/sdk/contentalliance/widget/a;
.super Landroid/view/GestureDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/widget/a$a;
    }
.end annotation


# static fields
.field private static final A:I

.field public static final B:I

.field private static final z:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/view/GestureDetector$OnGestureListener;

.field private h:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/MotionEvent;

.field private q:Landroid/view/MotionEvent;

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Z

.field private x:J

.field private y:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/kwad/sdk/contentalliance/widget/a;->z:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/kwad/sdk/contentalliance/widget/a;->A:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/kwad/sdk/contentalliance/widget/a;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/contentalliance/widget/a;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    sget v0, Lcom/kwad/sdk/contentalliance/widget/a;->B:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->x:J

    if-eqz p3, :cond_20

    new-instance v0, Lcom/kwad/sdk/contentalliance/widget/a$a;

    invoke-direct {v0, p0, p3}, Lcom/kwad/sdk/contentalliance/widget/a$a;-><init>(Lcom/kwad/sdk/contentalliance/widget/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    :goto_11
    iput-object p2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1c

    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/contentalliance/widget/a;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_1c
    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/widget/a;->a(Landroid/content/Context;)V

    return-void

    :cond_20
    new-instance v0, Lcom/kwad/sdk/contentalliance/widget/a$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/widget/a$a;-><init>(Lcom/kwad/sdk/contentalliance/widget/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    goto :goto_11
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->r:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->i:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->m:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->n:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->l:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->o:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->w:Z

    if-nez p1, :cond_26

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->d:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->e:I

    move v2, v1

    :goto_1c
    mul-int/2addr v2, v2

    iput v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->a:I

    mul-int/2addr v1, v1

    iput v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->b:I

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->c:I

    return-void

    :cond_26
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->d:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->e:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1c

    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->n:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->x:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_47

    move v2, v0

    :goto_3d
    if-eqz v2, :cond_49

    move v2, v1

    :goto_40
    mul-int/2addr v3, v3

    mul-int/2addr v4, v4

    add-int/2addr v3, v4

    if-ge v3, v2, :cond_4c

    :goto_45
    move v1, v0

    goto :goto_6

    :cond_47
    move v2, v1

    goto :goto_3d

    :cond_49
    iget v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->c:I

    goto :goto_40

    :cond_4c
    move v0, v1

    goto :goto_45
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/widget/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->r:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->m:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->n:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->l:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->o:Z

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/widget/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/widget/a;->c()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/widget/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->i:Z

    return v0
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->x:J

    return-void
.end method

.method public isLongpressEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->w:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    const/4 v8, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    if-nez v1, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    :cond_13
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v10, v0, 0xff

    const/4 v0, 0x6

    if-ne v10, v0, :cond_3b

    move v9, v2

    :goto_1e
    if-eqz v9, :cond_3d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    :goto_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3f

    move v1, v2

    :goto_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move v7, v3

    move v4, v8

    move v5, v8

    :goto_34
    if-ge v7, v6, :cond_4c

    if-ne v0, v7, :cond_41

    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_3b
    move v9, v3

    goto :goto_1e

    :cond_3d
    const/4 v0, -0x1

    goto :goto_24

    :cond_3f
    move v1, v3

    goto :goto_2d

    :cond_41
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v5, v11

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v4, v11

    goto :goto_38

    :cond_4c
    if-eqz v9, :cond_57

    add-int/lit8 v0, v6, -0x1

    :goto_50
    int-to-float v0, v0

    div-float/2addr v5, v0

    div-float/2addr v4, v0

    packed-switch v10, :pswitch_data_262

    :cond_56
    :goto_56
    :pswitch_56
    return v3

    :cond_57
    move v0, v6

    goto :goto_50

    :pswitch_59
    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->s:F

    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->u:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->t:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->v:F

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->e:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v3

    :goto_80
    if-ge v0, v6, :cond_56

    if-ne v0, v1, :cond_87

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v7, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    mul-float/2addr v7, v2

    iget-object v9, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v7

    cmpg-float v5, v5, v8

    if-gez v5, :cond_84

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_56

    :pswitch_a4
    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->s:F

    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->u:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->t:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->v:F

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/widget/a;->b()V

    goto :goto_56

    :pswitch_b0
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/widget/a;->a()V

    goto :goto_56

    :pswitch_b4
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->l:Z

    if-nez v0, :cond_56

    iget v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->s:F

    sub-float v6, v0, v5

    iget v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->t:F

    sub-float v7, v0, v4

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->r:Z

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v3, v0

    goto :goto_56

    :cond_d0
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->m:Z

    if-eqz v0, :cond_113

    iget v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->u:F

    sub-float v0, v5, v0

    float-to-int v0, v0

    iget v8, p0, Lcom/kwad/sdk/contentalliance/widget/a;->v:F

    sub-float v8, v4, v8

    float-to-int v8, v8

    mul-int/2addr v0, v0

    mul-int/2addr v8, v8

    add-int/2addr v8, v0

    if-eqz v1, :cond_10d

    move v0, v3

    :goto_e4
    if-le v8, v0, :cond_25f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v9, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-interface {v0, v9, p1, v6, v7}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->s:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->t:F

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->m:Z

    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->removeMessages(I)V

    :goto_103
    if-eqz v1, :cond_110

    move v1, v3

    :goto_106
    if-le v8, v1, :cond_25c

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->n:Z

    move v3, v0

    goto/16 :goto_56

    :cond_10d
    iget v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->a:I

    goto :goto_e4

    :cond_110
    iget v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->b:I

    goto :goto_106

    :cond_113
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_127

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_56

    :cond_127
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p1, v6, v7}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->s:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->t:F

    goto/16 :goto_56

    :pswitch_135
    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->i:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->r:Z

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v3

    :cond_146
    :goto_146
    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->q:Landroid/view/MotionEvent;

    if-eqz v4, :cond_14d

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_14d
    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->q:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_159

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    :cond_159
    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->r:Z

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->o:Z

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->removeMessages(I)V

    move v3, v0

    goto/16 :goto_56

    :cond_16c
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    if-eqz v0, :cond_179

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    move v0, v3

    goto :goto_146

    :cond_179
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->m:Z

    if-eqz v0, :cond_193

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->o:Z

    if-nez v0, :cond_193

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    if-eqz v4, :cond_146

    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v4, :cond_146

    invoke-interface {v4, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_146

    :cond_193
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->o:Z

    if-nez v0, :cond_259

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->y:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->e:I

    int-to-float v5, v5

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/kwad/sdk/contentalliance/widget/a;->d:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1c3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/kwad/sdk/contentalliance/widget/a;->d:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_259

    :cond_1c3
    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v6, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-interface {v4, v6, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto/16 :goto_146

    :pswitch_1cd
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_257

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1de

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1de
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    if-eqz v1, :cond_250

    iget-object v6, p0, Lcom/kwad/sdk/contentalliance/widget/a;->q:Landroid/view/MotionEvent;

    if-eqz v6, :cond_250

    if-eqz v0, :cond_250

    invoke-direct {p0, v1, v6, p1}, Lcom/kwad/sdk/contentalliance/widget/a;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_250

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->r:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v3

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_200
    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->s:F

    iput v5, p0, Lcom/kwad/sdk/contentalliance/widget/a;->u:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->t:F

    iput v4, p0, Lcom/kwad/sdk/contentalliance/widget/a;->v:F

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    if-eqz v1, :cond_20f

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_20f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->m:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->n:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/widget/a;->i:Z

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->k:Z

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->j:Z

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->w:Z

    if-eqz v1, :cond_237

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v3, Lcom/kwad/sdk/contentalliance/widget/a;->z:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v13, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_237
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/widget/a;->p:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v3, Lcom/kwad/sdk/contentalliance/widget/a;->A:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int v3, v0, v1

    goto/16 :goto_56

    :cond_250
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a;->f:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/kwad/sdk/contentalliance/widget/a;->x:J

    invoke-virtual {v0, v12, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_257
    move v0, v3

    goto :goto_200

    :cond_259
    move v0, v3

    goto/16 :goto_146

    :cond_25c
    move v3, v0

    goto/16 :goto_56

    :cond_25f
    move v0, v3

    goto/16 :goto_103

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_1cd
        :pswitch_135
        :pswitch_b4
        :pswitch_b0
        :pswitch_56
        :pswitch_a4
        :pswitch_59
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->w:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/widget/a;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
