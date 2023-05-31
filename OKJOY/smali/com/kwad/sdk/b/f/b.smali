.class public Lcom/kwad/sdk/b/f/b;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/b/f/b$h;,
        Lcom/kwad/sdk/b/f/b$k;,
        Lcom/kwad/sdk/b/f/b$e;,
        Lcom/kwad/sdk/b/f/b$i;,
        Lcom/kwad/sdk/b/f/b$f;,
        Lcom/kwad/sdk/b/f/b$j;,
        Lcom/kwad/sdk/b/f/b$g;,
        Lcom/kwad/sdk/b/f/b$d;
    }
.end annotation


# static fields
.field private static final f0:[I

.field private static final g0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/kwad/sdk/b/f/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final h0:Landroid/view/animation/Interpolator;

.field private static final i0:Lcom/kwad/sdk/b/f/b$k;


# instance fields
.field private A:I

.field protected B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:Landroid/view/VelocityTracker;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Landroid/support/v4/widget/EdgeEffectCompat;

.field private O:Landroid/support/v4/widget/EdgeEffectCompat;

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private T:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private U:Lcom/kwad/sdk/b/f/b$g;

.field private V:Lcom/kwad/sdk/b/f/b$h;

.field private W:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private a:I

.field private a0:Ljava/lang/reflect/Method;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kwad/sdk/b/f/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private b0:I

.field private final c:Lcom/kwad/sdk/b/f/b$d;

.field private c0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/Rect;

.field private final d0:Ljava/lang/Runnable;

.field private e:Landroid/support/v4/view/PagerAdapter;

.field private e0:I

.field private f:I

.field private g:I

.field private h:Landroid/os/Parcelable;

.field private i:Ljava/lang/ClassLoader;

.field private j:Landroid/widget/Scroller;

.field private k:Lcom/kwad/sdk/b/f/b$i;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/kwad/sdk/b/f/b;->f0:[I

    new-instance v0, Lcom/kwad/sdk/b/f/b$a;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/b/f/b;->g0:Ljava/util/Comparator;

    new-instance v0, Lcom/kwad/sdk/b/f/b$b;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$b;-><init>()V

    sput-object v0, Lcom/kwad/sdk/b/f/b;->h0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/kwad/sdk/b/f/b$k;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$k;-><init>()V

    sput-object v0, Lcom/kwad/sdk/b/f/b;->i0:Lcom/kwad/sdk/b/f/b$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/kwad/sdk/b/f/b$d;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->c:Lcom/kwad/sdk/b/f/b$d;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->d:Landroid/graphics/Rect;

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->g:I

    iput-object v3, p0, Lcom/kwad/sdk/b/f/b;->h:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/kwad/sdk/b/f/b;->i:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->q:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->r:F

    iput v2, p0, Lcom/kwad/sdk/b/f/b;->w:I

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->G:I

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    new-instance v0, Lcom/kwad/sdk/b/f/b$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/f/b$c;-><init>(Lcom/kwad/sdk/b/f/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->d0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/kwad/sdk/b/f/b$d;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->c:Lcom/kwad/sdk/b/f/b$d;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->d:Landroid/graphics/Rect;

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->g:I

    iput-object v3, p0, Lcom/kwad/sdk/b/f/b;->h:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/kwad/sdk/b/f/b;->i:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->q:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->r:F

    iput v2, p0, Lcom/kwad/sdk/b/f/b;->w:I

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->G:I

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    new-instance v0, Lcom/kwad/sdk/b/f/b$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/f/b$c;-><init>(Lcom/kwad/sdk/b/f/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->d0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->d()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, p2, :cond_e

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_d
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_5e

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_8
    if-nez p2, :cond_f

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5c

    if-eq v0, p0, :cond_5c

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2b

    :cond_5c
    move-object v0, v1

    goto :goto_e

    :cond_5e
    move-object v1, p1

    goto :goto_8
.end method

.method static synthetic a(Lcom/kwad/sdk/b/f/b;)Landroid/support/v4/view/PagerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method private a(IIII)V
    .registers 11

    const/4 v1, 0x0

    if-lez p2, :cond_5d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->b(I)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v3

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    iget v3, v3, Lcom/kwad/sdk/b/f/b$d;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v4, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->b(I)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget v0, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v2, p0, Lcom/kwad/sdk/b/f/b;->r:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_6d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_5c

    invoke-direct {p0, v1}, Lcom/kwad/sdk/b/f/b;->a(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_5c

    :cond_8c
    const/4 v0, 0x0

    goto :goto_6d
.end method

.method private a(IZIZZ)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/b/f/b;->b(I)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->q:F

    iget v0, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->r:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1c
    if-eqz p2, :cond_27

    invoke-virtual {p0, v1, v0, p3, p5}, Lcom/kwad/sdk/b/f/b;->a(IIIZ)V

    if-eqz p4, :cond_26

    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b;->f(I)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    if-eqz p4, :cond_2c

    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b;->f(I)V

    :cond_2c
    invoke-direct {p0, v1}, Lcom/kwad/sdk/b/f/b;->a(Z)V

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/b/f/b;->h(I)Z

    if-eqz p4, :cond_26

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->e()V

    goto :goto_26

    :cond_40
    move v0, v1

    goto :goto_1c
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/kwad/sdk/b/f/b;->G:I

    if-ne v1, v2, :cond_22

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->D:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_22
    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Lcom/kwad/sdk/b/f/b$d;ILcom/kwad/sdk/b/f/b$d;)V
    .registers 15

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v0

    if-lez v0, :cond_5d

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->m:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    :goto_15
    if-eqz p3, :cond_ca

    iget v3, p3, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ge v3, v0, :cond_7d

    const/4 v0, 0x0

    iget v1, p3, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v2, p3, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v1, v2

    add-float v2, v1, v5

    add-int/lit8 v1, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2a
    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-gt v2, v0, :cond_ca

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_ca

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_41
    iget v4, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-le v2, v4, :cond_16a

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_16a

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_41

    :cond_5d
    const/4 v0, 0x0

    move v5, v0

    goto :goto_15

    :goto_60
    iget v4, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ge v3, v4, :cond_71

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_60

    :cond_71
    iput v2, v1, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v1, v1, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v1, v5

    add-float/2addr v2, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2a

    :cond_7d
    if-le v3, v0, :cond_ca

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget v1, p3, Lcom/kwad/sdk/b/f/b$d;->e:F

    add-int/lit8 v0, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_8e
    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-lt v1, v0, :cond_ca

    if-ltz v3, :cond_ca

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    :goto_9c
    iget v4, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ge v1, v4, :cond_165

    if-lez v3, :cond_165

    add-int/lit8 v3, v3, -0x1

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    goto :goto_9c

    :goto_ad
    iget v4, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-le v2, v4, :cond_bf

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v5

    sub-float v4, v1, v4

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v4

    goto :goto_ad

    :cond_bf
    iget v4, v0, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v4, v5

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    add-int/lit8 v0, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_8e

    :cond_ca
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v1, p1, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_10c

    move v0, v1

    :goto_d9
    iput v0, p0, Lcom/kwad/sdk/b/f/b;->q:F

    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_110

    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v3, p1, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v9

    :goto_e7
    iput v0, p0, Lcom/kwad/sdk/b/f/b;->r:F

    add-int/lit8 v0, p2, -0x1

    move v4, v0

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_ef
    if-ltz v4, :cond_125

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    move v3, v2

    :goto_fa
    iget v8, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-le v1, v8, :cond_114

    iget-object v8, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v8, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v5

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_fa

    :cond_10c
    const v0, -0x800001

    goto :goto_d9

    :cond_110
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_e7

    :cond_114
    iget v2, v0, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v2, v5

    sub-float v2, v3, v2

    iput v2, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    if-nez v8, :cond_11f

    iput v2, p0, Lcom/kwad/sdk/b/f/b;->q:F

    :cond_11f
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v0

    goto :goto_ef

    :cond_125
    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v1, p1, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v5

    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_133
    if-ge v4, v7, :cond_164

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    move v3, v2

    :goto_13e
    iget v2, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ge v1, v2, :cond_14f

    iget-object v8, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_13e

    :cond_14f
    if-ne v2, v6, :cond_157

    iget v2, v0, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    iput v2, p0, Lcom/kwad/sdk/b/f/b;->r:F

    :cond_157
    iput v3, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v0, v0, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v0, v5

    add-float v2, v3, v0

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_133

    :cond_164
    return-void

    :cond_165
    move v10, v1

    move v1, v2

    move v2, v10

    goto/16 :goto_ad

    :cond_16a
    move v10, v2

    move v2, v3

    move v3, v10

    goto/16 :goto_60
.end method

.method static synthetic a(Lcom/kwad/sdk/b/f/b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b;->setScrollState(I)V

    return-void
.end method

.method private a(Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    move v0, v4

    :goto_8
    if-eqz v0, :cond_2d

    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    iget-object v5, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_2a

    if-eq v3, v6, :cond_2d

    :cond_2a
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2d
    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    move v1, v2

    move v3, v0

    :goto_31
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget-boolean v5, v0, Lcom/kwad/sdk/b/f/b$d;->c:Z

    if-eqz v5, :cond_48

    iput-boolean v2, v0, Lcom/kwad/sdk/b/f/b$d;->c:Z

    move v3, v4

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_4c
    move v0, v2

    goto :goto_8

    :cond_4e
    if-eqz v3, :cond_57

    if-eqz p1, :cond_58

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->d0:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->d0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_57
.end method

.method private a(FF)Z
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->A:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->A:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private b(Landroid/view/MotionEvent;I)F
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, p2, :cond_e

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_d
.end method

.method static synthetic b(Lcom/kwad/sdk/b/f/b;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    return v0
.end method

.method private b(IFI)V
    .registers 7

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->T:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_24
    return-void
.end method

.method private b(Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_19

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    :goto_b
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_b

    :cond_19
    return-void
.end method

.method private c(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private f(I)V
    .registers 5

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->T:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_24
    return-void
.end method

.method private g(I)V
    .registers 5

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->T:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_24
    return-void
.end method

.method private getClientHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h(I)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1c

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->Q:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/kwad/sdk/b/f/b;->a(IFI)V

    iget-boolean v1, p0, Lcom/kwad/sdk/b/f/b;->Q:Z

    if-eqz v1, :cond_14

    :goto_13
    return v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->k()Lcom/kwad/sdk/b/f/b$d;

    move-result-object v1

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v2

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->m:I

    add-int v4, v2, v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v5, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    int-to-float v6, p1

    div-float v2, v6, v2

    iget v6, v1, Lcom/kwad/sdk/b/f/b$d;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v1, v3

    div-float v1, v2, v1

    int-to-float v2, v4

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->Q:Z

    invoke-virtual {p0, v5, v1, v2}, Lcom/kwad/sdk/b/f/b;->a(IFI)V

    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->Q:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_13

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic i()[I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/b/f/b;->f0:[I

    return-object v0
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->y:Z

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private k()Lcom/kwad/sdk/b/f/b$d;
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v1

    if-lez v1, :cond_6c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    :goto_10
    if-lez v1, :cond_6e

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->m:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_18
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    :goto_21
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6b

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    if-nez v5, :cond_7d

    iget v10, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    add-int/lit8 v8, v8, 0x1

    if-eq v10, v8, :cond_7d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->c:Lcom/kwad/sdk/b/f/b$d;

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    iput v8, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget-object v6, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    iput v6, v0, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-int/lit8 v2, v2, -0x1

    move-object v11, v0

    move v0, v2

    move-object v2, v11

    :goto_50
    iget v6, v2, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v7, v2, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    if-nez v5, :cond_5c

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_6b

    :cond_5c
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_6a

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_70

    :cond_6a
    move-object v4, v2

    :cond_6b
    return-object v4

    :cond_6c
    move v9, v2

    goto :goto_10

    :cond_6e
    move v1, v2

    goto :goto_18

    :cond_70
    iget v5, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v4, v2, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_21

    :cond_7d
    move-object v11, v0

    move v0, v2

    move-object v2, v11

    goto :goto_50
.end method

.method private l()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v0, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private m()V
    .registers 5

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->b0:I

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->c0:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->c0:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_26

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->c0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    :cond_26
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->c0:Ljava/util/ArrayList;

    sget-object v1, Lcom/kwad/sdk/b/f/b;->i0:Lcom/kwad/sdk/b/f/b$k;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
    return-void
.end method

.method private setScrollState(I)V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->W:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, Lcom/kwad/sdk/b/f/b;->b(Z)V

    :cond_11
    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b;->g(I)V

    goto :goto_4

    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->u:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/kwad/sdk/b/f/b;->u:Z

    :cond_6
    return-void
.end method


# virtual methods
.method a(F)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected a(IFII)I
    .registers 8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->K:I

    if-le v0, v1, :cond_41

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->I:I

    if-le v0, v1, :cond_41

    if-lez p3, :cond_3e

    :goto_12
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$d;

    iget v0, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v1, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3d
    return p1

    :cond_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_41
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-lt p1, v0, :cond_4d

    const v0, 0x3ecccccd    # 0.4f

    :goto_48
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_12

    :cond_4d
    const v0, 0x3f19999a    # 0.6f

    goto :goto_48
.end method

.method a(II)Lcom/kwad/sdk/b/f/b$d;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/b/f/b$d;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$d;-><init>()V

    iput p1, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/b/f/b$d;->d:F

    if-ltz p2, :cond_21

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_27

    :cond_21
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    return-object v0

    :cond_27
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26
.end method

.method a(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;
    .registers 4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_12

    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_12
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v0

    goto :goto_d
.end method

.method a()V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    iput v8, p0, Lcom/kwad/sdk/b/f/b;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->w:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_4b

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_4b

    move v0, v1

    :goto_21
    iget v3, p0, Lcom/kwad/sdk/b/f/b;->f:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    :goto_27
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget-object v7, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_4d

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    :goto_44
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_27

    :cond_4b
    move v0, v2

    goto :goto_21

    :cond_4d
    const/4 v9, -0x2

    if-ne v7, v9, :cond_7d

    iget-object v6, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    :cond_5f
    iget-object v6, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget-object v9, v0, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v6, p0, Lcom/kwad/sdk/b/f/b;->f:I

    iget v0, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v6, v0, :cond_c5

    add-int/lit8 v0, v8, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_44

    :cond_7d
    iget v9, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-eq v9, v7, :cond_c0

    iget v6, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v9, v6, :cond_86

    move v5, v7

    :cond_86
    iput v7, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_44

    :cond_8d
    if-eqz v4, :cond_94

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_94
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    sget-object v3, Lcom/kwad/sdk/b/f/b;->g0:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v6, :cond_bf

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_a2
    if-ge v3, v4, :cond_b9

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v6, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v6, :cond_b5

    const/4 v6, 0x0

    iput v6, v0, Lcom/kwad/sdk/b/f/b$e;->c:F

    :cond_b5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a2

    :cond_b9
    invoke-virtual {p0, v5, v2, v1}, Lcom/kwad/sdk/b/f/b;->a(IZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_bf
    return-void

    :cond_c0
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_44

    :cond_c5
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_44
.end method

.method protected a(IFI)V
    .registers 15

    const/4 v3, 0x0

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->R:I

    if-lez v0, :cond_7e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v3

    :goto_1a
    if-ge v4, v7, :cond_7e

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v9, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v9, :cond_34

    move v10, v2

    move v2, v1

    move v1, v10

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_1a

    :cond_34
    iget v0, v0, Lcom/kwad/sdk/b/f/b$e;->b:I

    and-int/lit8 v0, v0, 0x70

    const/16 v9, 0x10

    if-eq v0, v9, :cond_6e

    const/16 v9, 0x30

    if-eq v0, v9, :cond_64

    const/16 v9, 0x50

    if-eq v0, v9, :cond_54

    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_48
    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v0, v9

    if-eqz v0, :cond_2d

    invoke-virtual {v8, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2d

    :cond_54
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_48

    :cond_64
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    goto :goto_48

    :cond_6e
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_48

    :cond_7e
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/b/f/b;->b(IFI)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->W:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v1, v3

    :goto_8e
    if-ge v1, v4, :cond_b4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v0, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-eqz v0, :cond_a2

    :goto_9e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8e

    :cond_a2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcom/kwad/sdk/b/f/b;->W:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v5, v3, v0}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_9e

    :cond_b4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->Q:Z

    return-void
.end method

.method a(IIIZ)V
    .registers 13

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, v5}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_2c

    if-nez v4, :cond_2c

    invoke-direct {p0, v5}, Lcom/kwad/sdk/b/f/b;->a(Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->h()V

    if-eqz p4, :cond_28

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->e()V

    :cond_28
    invoke-direct {p0, v5}, Lcom/kwad/sdk/b/f/b;->setScrollState(I)V

    goto :goto_c

    :cond_2c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kwad/sdk/b/f/b;->setScrollState(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Lcom/kwad/sdk/b/f/b;->a(F)F

    move-result v6

    mul-float/2addr v6, v5

    add-float/2addr v5, v6

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_72

    int-to-float v0, v6

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_63
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_c

    :cond_72
    iget-object v5, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget v6, p0, Lcom/kwad/sdk/b/f/b;->f:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/kwad/sdk/b/f/b;->m:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    add-float/2addr v0, v7

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_63
.end method

.method public a(IZ)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentItem item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " smoothScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerticalViewPager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    invoke-virtual {p0, p1, p2, v2}, Lcom/kwad/sdk/b/f/b;->a(IZZ)V

    return-void
.end method

.method protected a(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kwad/sdk/b/f/b;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/b/f/b;->a(IZZIZ)V

    return-void
.end method

.method a(IZZIZ)V
    .registers 12

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_c
    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    :goto_f
    return-void

    :cond_10
    if-nez p3, :cond_22

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v0, p1, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    goto :goto_f

    :cond_22
    if-gez p1, :cond_48

    move v1, v2

    :goto_25
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->w:I

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->f:I

    add-int v5, v3, v0

    if-gt v1, v5, :cond_31

    sub-int v0, v3, v0

    if-ge v1, v0, :cond_59

    :cond_31
    move v3, v2

    :goto_32
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_59

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iput-boolean v4, v0, Lcom/kwad/sdk/b/f/b$d;->c:Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_32

    :cond_48
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_79

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_25

    :cond_59
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-eq v0, v1, :cond_6c

    :goto_5d
    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    if-eqz v0, :cond_6e

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-eqz v4, :cond_68

    invoke-direct {p0, v1}, Lcom/kwad/sdk/b/f/b;->f(I)V

    :cond_68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_f

    :cond_6c
    move v4, v2

    goto :goto_5d

    :cond_6e
    invoke-virtual {p0, v1}, Lcom/kwad/sdk/b/f/b;->d(I)V

    move-object v0, p0

    move v2, p2

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/b/f/b;->a(IZIZZ)V

    goto :goto_f

    :cond_79
    move v1, p1

    goto :goto_25
.end method

.method public a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)Z
    .registers 11

    const/4 v1, 0x0

    const/16 v8, 0x82

    const/16 v7, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_3e

    move-object v0, v1

    :goto_e
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c0

    if-eq v1, v0, :cond_c0

    if-ne p1, v7, :cond_a4

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/kwad/sdk/b/f/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_9f

    if-lt v2, v3, :cond_9f

    :cond_30
    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->g()Z

    move-result v0

    :goto_34
    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_3d
    return v0

    :cond_3e
    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_44
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_cf

    if-ne v0, p0, :cond_7b

    move v0, v4

    :goto_4b
    if-nez v0, :cond_cc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_61
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_80

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_61

    :cond_7b
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_44

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VerticalViewPager"

    invoke-static {v2, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_e

    :cond_9f
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_34

    :cond_a4
    if-ne p1, v8, :cond_c9

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/kwad/sdk/b/f/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_9f

    if-gt v2, v3, :cond_9f

    :cond_ba
    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->f()Z

    move-result v0

    goto/16 :goto_34

    :cond_c0
    if-eq p1, v7, :cond_30

    if-eq p1, v4, :cond_30

    if-eq p1, v8, :cond_ba

    const/4 v0, 0x2

    if-eq p1, v0, :cond_ba

    :cond_c9
    move v0, v3

    goto/16 :goto_34

    :cond_cc
    move-object v0, v2

    goto/16 :goto_e

    :cond_cf
    move v0, v3

    goto/16 :goto_4b
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x16

    if-eq v1, v2, :cond_36

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->a(I)Z

    move-result v0

    goto :goto_18

    :cond_2b
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/b/f/b;->a(I)Z

    move-result v0

    goto :goto_18

    :cond_36
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->a(I)Z

    move-result v0

    goto :goto_18

    :cond_3d
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->a(I)Z

    move-result v0

    goto :goto_18
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .registers 16

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_58

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_58

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_54

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_54

    add-int v3, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_54

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v3, v4, :cond_54

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_53
    :goto_53
    return v2

    :cond_54
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    :cond_58
    if-eqz p2, :cond_61

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_61
    const/4 v2, 0x0

    goto :goto_53
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_2f

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v5, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v4, v5, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_51
    if-eqz p1, :cond_3f

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v2, v3, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/b/f/b;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/b/f/b;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v2, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    or-int/lit8 v2, v2, 0x0

    iput-boolean v2, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    iget-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->t:Z

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_1d

    iget-boolean v2, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v2, :cond_24

    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kwad/sdk/b/f/b$e;->d:Z

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3d
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_41
    move-object v1, p3

    goto :goto_a
.end method

.method b(I)Lcom/kwad/sdk/b/f/b$d;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget v2, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v2, p1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->l:Ljava/util/List;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1d
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->S:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method protected b(F)Z
    .registers 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/kwad/sdk/b/f/b;->D:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v0

    int-to-float v7, v0

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->q:F

    mul-float v4, v7, v0

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->r:F

    mul-float v6, v7, v0

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a3

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$d;

    iget v8, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-eqz v8, :cond_a1

    iget v0, v0, Lcom/kwad/sdk/b/f/b$d;->e:F

    mul-float/2addr v0, v7

    move v4, v0

    move v0, v2

    :goto_42
    iget v8, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget-object v9, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_9c

    iget v1, v1, Lcom/kwad/sdk/b/f/b$d;->e:F

    mul-float/2addr v1, v7

    move v3, v2

    move v10, v0

    move v0, v4

    move v4, v10

    :goto_55
    cmpg-float v6, v5, v0

    if-gez v6, :cond_83

    if-eqz v4, :cond_68

    sub-float v1, v0, v5

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v7

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_68
    :goto_68
    iget v1, p0, Lcom/kwad/sdk/b/f/b;->C:F

    float-to-int v3, v0

    int-to-float v4, v3

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->C:F

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/b/f/b;->e(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->e(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/b/f/b;->h(I)Z

    return v2

    :cond_83
    cmpl-float v0, v5, v1

    if-lez v0, :cond_98

    if-eqz v3, :cond_9a

    sub-float v0, v5, v1

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    move v0, v1

    goto :goto_68

    :cond_98
    move v0, v5

    goto :goto_68

    :cond_9a
    move v0, v1

    goto :goto_68

    :cond_9c
    move v1, v6

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_55

    :cond_a1
    move v0, v3

    goto :goto_42

    :cond_a3
    move v1, v6

    move v0, v4

    move v4, v3

    goto :goto_55
.end method

.method public c()V
    .registers 4

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->l:Ljava/util/List;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1d
    return-void
.end method

.method public c(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    if-gez p1, :cond_1c

    int-to-float v2, v2

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->q:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_1a

    :goto_18
    move v1, v0

    goto :goto_6

    :cond_1a
    move v0, v1

    goto :goto_18

    :cond_1c
    if-lez p1, :cond_6

    int-to-float v2, v2

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->r:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_27

    :goto_25
    move v1, v0

    goto :goto_6

    :cond_27
    move v0, v1

    goto :goto_25
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/b/f/b$e;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    :cond_28
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v3}, Lcom/kwad/sdk/b/f/b;->h(I)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_3d
    return-void

    :cond_3e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/b/f/b;->a(Z)V

    goto :goto_3d
.end method

.method d()V
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/kwad/sdk/b/f/b;->h0:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/kwad/sdk/b/f/b;->B:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/kwad/sdk/b/f/b;->I:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->J:I

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->K:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->L:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->z:I

    new-instance v0, Lcom/kwad/sdk/b/f/b$f;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/f/b$f;-><init>(Lcom/kwad/sdk/b/f/b;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_6b
    return-void
.end method

.method d(I)V
    .registers 19

    const/4 v3, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kwad/sdk/b/f/b;->f:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_2f

    move/from16 v0, p1

    if-ge v4, v0, :cond_2c

    const/16 v2, 0x82

    :goto_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kwad/sdk/b/f/b;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kwad/sdk/b/f/b;->b(I)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kwad/sdk/b/f/b;->f:I

    move-object v4, v3

    move v3, v2

    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/kwad/sdk/b/f/b;->m()V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const/16 v2, 0x21

    goto :goto_10

    :cond_2f
    move-object v4, v3

    move v3, v2

    goto :goto_22

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kwad/sdk/b/f/b;->v:Z

    if-eqz v2, :cond_3c

    invoke-direct/range {p0 .. p0}, Lcom/kwad/sdk/b/f/b;->m()V

    goto :goto_2b

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kwad/sdk/b/f/b;->w:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kwad/sdk/b/f/b;->f:I

    sub-int/2addr v2, v7

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kwad/sdk/b/f/b;->f:I

    add-int/2addr v5, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kwad/sdk/b/f/b;->a:I

    if-ne v12, v2, :cond_29e

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v5, v2

    :goto_75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_164

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$d;

    iget v8, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/kwad/sdk/b/f/b;->f:I

    if-lt v8, v9, :cond_15f

    if-ne v8, v9, :cond_164

    :goto_93
    if-nez v2, :cond_30d

    if-lez v12, :cond_30d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kwad/sdk/b/f/b;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/kwad/sdk/b/f/b;->a(II)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v2

    move-object v10, v2

    :goto_a2
    if-eqz v10, :cond_110

    if-lez v7, :cond_110

    const/4 v9, 0x0

    add-int/lit8 v8, v5, -0x1

    if-ltz v8, :cond_167

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$d;

    :goto_b5
    invoke-direct/range {p0 .. p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v14

    if-gtz v14, :cond_16a

    const/4 v6, 0x0

    :goto_bc
    move-object/from16 v0, p0

    iget v7, v0, Lcom/kwad/sdk/b/f/b;->f:I

    add-int/lit8 v7, v7, -0x1

    move/from16 v16, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v16

    :goto_c8
    if-ltz v9, :cond_d2

    cmpl-float v15, v8, v6

    if-ltz v15, :cond_1b2

    if-ge v9, v11, :cond_1b2

    if-nez v2, :cond_17a

    :cond_d2
    iget v9, v10, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-int/lit8 v7, v5, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_10b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_1d2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$d;

    move-object v8, v2

    :goto_f1
    if-gtz v14, :cond_1d5

    const/4 v2, 0x0

    move v6, v2

    :goto_f5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kwad/sdk/b/f/b;->f:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v2

    move v2, v7

    move v7, v9

    move/from16 v9, v16

    :goto_101
    if-ge v9, v12, :cond_10b

    cmpl-float v11, v7, v6

    if-ltz v11, :cond_224

    if-le v9, v13, :cond_224

    if-nez v8, :cond_1e2

    :cond_10b
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v4}, Lcom/kwad/sdk/b/f/b;->a(Lcom/kwad/sdk/b/f/b$d;ILcom/kwad/sdk/b/f/b$d;)V

    :cond_110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kwad/sdk/b/f/b;->f:I

    if-eqz v10, :cond_254

    iget-object v2, v10, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    :goto_11c
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v2}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_130
    if-ge v4, v5, :cond_257

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$e;

    iput v4, v2, Lcom/kwad/sdk/b/f/b$e;->f:I

    iget-boolean v7, v2, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v7, :cond_15b

    iget v7, v2, Lcom/kwad/sdk/b/f/b$e;->c:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_15b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v6

    if-eqz v6, :cond_15b

    iget v7, v6, Lcom/kwad/sdk/b/f/b$d;->d:F

    iput v7, v2, Lcom/kwad/sdk/b/f/b$e;->c:F

    iget v6, v6, Lcom/kwad/sdk/b/f/b$d;->b:I

    iput v6, v2, Lcom/kwad/sdk/b/f/b$e;->e:I

    :cond_15b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_130

    :cond_15f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_75

    :cond_164
    move-object v2, v6

    goto/16 :goto_93

    :cond_167
    const/4 v2, 0x0

    goto/16 :goto_b5

    :cond_16a
    iget v6, v10, Lcom/kwad/sdk/b/f/b$d;->d:F

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v6, v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v15, v14

    div-float/2addr v7, v15

    add-float/2addr v6, v7

    goto/16 :goto_bc

    :cond_17a
    iget v15, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v9, v15, :cond_1a5

    iget-boolean v15, v2, Lcom/kwad/sdk/b/f/b$d;->c:Z

    if-nez v15, :cond_1a5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v2, v5, -0x1

    if-ltz v7, :cond_1ab

    move v5, v2

    :goto_19b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$d;

    :cond_1a5
    :goto_1a5
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_c8

    :cond_1a9
    move v7, v2

    move v2, v5

    :cond_1ab
    const/4 v5, 0x0

    move-object/from16 v16, v5

    move v5, v2

    move-object/from16 v2, v16

    goto :goto_1a5

    :cond_1b2
    if-eqz v2, :cond_1c1

    iget v15, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v9, v15, :cond_1c1

    iget v2, v2, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v8, v2

    add-int/lit8 v2, v7, -0x1

    if-ltz v2, :cond_1a9

    move v7, v2

    goto :goto_19b

    :cond_1c1
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/kwad/sdk/b/f/b;->a(II)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v2

    iget v2, v2, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v8, v2

    add-int/lit8 v2, v5, 0x1

    if-ltz v7, :cond_1ab

    move v5, v2

    goto :goto_19b

    :cond_1d2
    const/4 v8, 0x0

    goto/16 :goto_f1

    :cond_1d5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v6, v14

    div-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v2, v6

    move v6, v2

    goto/16 :goto_f5

    :cond_1e2
    iget v11, v8, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v9, v11, :cond_305

    iget-boolean v11, v8, Lcom/kwad/sdk/b/f/b$d;->c:Z

    if-nez v11, :cond_305

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v8, v8, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v9, v8}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_21c

    move v8, v7

    move v7, v2

    :goto_208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$d;

    :goto_212
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v2

    move v2, v7

    move v7, v8

    move-object/from16 v8, v16

    goto/16 :goto_101

    :cond_21c
    const/4 v8, 0x0

    move-object/from16 v16, v8

    move v8, v7

    move v7, v2

    move-object/from16 v2, v16

    goto :goto_212

    :cond_224
    if-eqz v8, :cond_23c

    iget v11, v8, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v9, v11, :cond_23c

    iget v8, v8, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_21c

    move v8, v7

    move v7, v2

    goto :goto_208

    :cond_23c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/kwad/sdk/b/f/b;->a(II)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    iget v8, v8, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_21c

    move v8, v7

    move v7, v2

    goto :goto_208

    :cond_254
    const/4 v2, 0x0

    goto/16 :goto_11c

    :cond_257
    invoke-direct/range {p0 .. p0}, Lcom/kwad/sdk/b/f/b;->m()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_29c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v2

    :goto_26c
    if-eqz v2, :cond_276

    iget v2, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kwad/sdk/b/f/b;->f:I

    if-eq v2, v4, :cond_2b

    :cond_276
    const/4 v2, 0x0

    :goto_277
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v5

    if-eqz v5, :cond_299

    iget v5, v5, Lcom/kwad/sdk/b/f/b$d;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v5, v6, :cond_299

    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_2b

    :cond_299
    add-int/lit8 v2, v2, 0x1

    goto :goto_277

    :cond_29c
    const/4 v2, 0x0

    goto :goto_26c

    :cond_29e
    :try_start_29e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_2a9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29e .. :try_end_2a9} :catch_2fb

    move-result-object v2

    :goto_2aa
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kwad/sdk/b/f/b;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2fb
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2aa

    :cond_305
    move-object/from16 v16, v8

    move v8, v7

    move v7, v2

    move-object/from16 v2, v16

    goto/16 :goto_212

    :cond_30d
    move-object v10, v2

    goto/16 :goto_a2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_e

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v4

    if-eqz v4, :cond_33

    iget v4, v4, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v5, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v4, v5, :cond_33

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    goto :goto_d

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_9a

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_9a

    :cond_17
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/kwad/sdk/b/f/b;->q:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_50
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_94

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/kwad/sdk/b/f/b;->r:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v2, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_94
    :goto_94
    if-eqz v0, :cond_99

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_99
    return-void

    :cond_9a
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_94
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method protected e(I)I
    .registers 2

    return p1
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->V:Lcom/kwad/sdk/b/f/b$h;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kwad/sdk/b/f/b$h;->a()V

    :cond_7
    return-void
.end method

.method f()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/kwad/sdk/b/f/b;->f:I

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_17

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->f:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/b/f/b;->a(IZ)V

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method g()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/b/f/b;->a(IZ)V

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/b/f/b$e;

    invoke-direct {v0}, Lcom/kwad/sdk/b/f/b$e;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/b/f/b$e;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/b/f/b$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->b0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    iget v0, v0, Lcom/kwad/sdk/b/f/b$e;->f:I

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->w:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->m:I

    return v0
.end method

.method h()V
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->d(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const-string v0, "VerticalViewPager"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->d0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kwad/sdk/b/f/b;->m:I

    if-lez v1, :cond_b0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwad/sdk/b/f/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_b0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kwad/sdk/b/f/b;->m:I

    int-to-float v1, v1

    int-to-float v8, v7

    div-float v9, v1, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$d;

    iget v4, v1, Lcom/kwad/sdk/b/f/b$d;->e:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v3, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/b/f/b$d;

    iget v11, v2, Lcom/kwad/sdk/b/f/b$d;->b:I

    move v2, v5

    move v5, v3

    move v3, v4

    :goto_58
    if-ge v5, v11, :cond_b0

    :goto_5a
    iget v4, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-le v5, v4, :cond_6d

    if-ge v2, v10, :cond_6d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$d;

    goto :goto_5a

    :cond_6d
    iget v4, v1, Lcom/kwad/sdk/b/f/b$d;->b:I

    if-ne v5, v4, :cond_b1

    iget v3, v1, Lcom/kwad/sdk/b/f/b$d;->e:F

    iget v12, v1, Lcom/kwad/sdk/b/f/b$d;->d:F

    add-float v4, v3, v12

    mul-float/2addr v4, v8

    add-float/2addr v3, v12

    add-float/2addr v3, v9

    :goto_7a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/kwad/sdk/b/f/b;->m:I

    int-to-float v13, v12

    add-float/2addr v13, v4

    int-to-float v14, v6

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kwad/sdk/b/f/b;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/kwad/sdk/b/f/b;->o:I

    float-to-int v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kwad/sdk/b/f/b;->p:I

    move/from16 v16, v0

    int-to-float v12, v12

    add-float/2addr v12, v4

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v12, v12, v17

    float-to-int v12, v12

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kwad/sdk/b/f/b;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a9
    add-int v12, v6, v7

    int-to-float v12, v12

    cmpl-float v4, v4, v12

    if-lez v4, :cond_bf

    :cond_b0
    return-void

    :cond_b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float v4, v3, v12

    mul-float/2addr v4, v8

    add-float/2addr v12, v9

    add-float/2addr v3, v12

    goto :goto_7a

    :cond_bf
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_58
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    if-ne v0, v6, :cond_20

    :cond_f
    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->y:Z

    iput v3, p0, Lcom/kwad/sdk/b/f/b;->G:I

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    :cond_1f
    :goto_1f
    return v2

    :cond_20
    if-eqz v0, :cond_2c

    iget-boolean v1, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    if-eqz v1, :cond_28

    move v2, v6

    goto :goto_1f

    :cond_28
    iget-boolean v1, p0, Lcom/kwad/sdk/b/f/b;->y:Z

    if-nez v1, :cond_1f

    :cond_2c
    if-eqz v0, :cond_ca

    if-eq v0, v4, :cond_49

    const/4 v1, 0x6

    if-eq v0, v1, :cond_45

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    :cond_3d
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    goto :goto_1f

    :cond_45
    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/MotionEvent;)V

    goto :goto_33

    :cond_49
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    if-eq v0, v3, :cond_33

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->D:F

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/MotionEvent;I)F

    move-result v9

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->E:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v0, 0x0

    cmpl-float v11, v1, v0

    if-eqz v11, :cond_88

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/b/f/b;->a(FF)Z

    move-result v0

    if-nez v0, :cond_88

    float-to-int v3, v1

    float-to-int v4, v9

    float-to-int v5, v7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_88

    iput v9, p0, Lcom/kwad/sdk/b/f/b;->C:F

    iput v7, p0, Lcom/kwad/sdk/b/f/b;->D:F

    iput-boolean v6, p0, Lcom/kwad/sdk/b/f/b;->y:Z

    goto :goto_1f

    :cond_88
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_c0

    cmpl-float v0, v8, v10

    if-lez v0, :cond_c0

    iput-boolean v6, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    invoke-direct {p0, v6}, Lcom/kwad/sdk/b/f/b;->c(Z)V

    invoke-direct {p0, v6}, Lcom/kwad/sdk/b/f/b;->setScrollState(I)V

    if-lez v11, :cond_b9

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->F:F

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_a3
    iput v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    iput v9, p0, Lcom/kwad/sdk/b/f/b;->C:F

    invoke-direct {p0, v6}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    :cond_aa
    :goto_aa
    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    if-eqz v0, :cond_33

    invoke-virtual {p0, v7}, Lcom/kwad/sdk/b/f/b;->b(F)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_33

    :cond_b9
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->F:F

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_a3

    :cond_c0
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_aa

    iput-boolean v6, p0, Lcom/kwad/sdk/b/f/b;->y:Z

    goto :goto_aa

    :cond_ca
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->E:F

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->C:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->F:F

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->y:Z

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->e0:I

    if-ne v0, v4, :cond_114

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->L:I

    if-le v0, v1, :cond_114

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->h()V

    iput-boolean v6, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    invoke-direct {p0, v6}, Lcom/kwad/sdk/b/f/b;->c(Z)V

    invoke-direct {p0, v6}, Lcom/kwad/sdk/b/f/b;->setScrollState(I)V

    goto/16 :goto_33

    :cond_114
    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->a(Z)V

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    goto/16 :goto_33
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int v10, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_1f
    if-ge v8, v9, :cond_cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_14e

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v7, v1, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-eqz v7, :cond_14e

    iget v1, v1, Lcom/kwad/sdk/b/f/b$e;->b:I

    and-int/lit8 v7, v1, 0x7

    and-int/lit8 v14, v1, 0x70

    const/4 v1, 0x1

    if-eq v7, v1, :cond_8d

    const/4 v1, 0x3

    if-eq v7, v1, :cond_85

    const/4 v1, 0x5

    if-eq v7, v1, :cond_77

    move v7, v6

    :goto_49
    const/16 v1, 0x10

    if-eq v14, v1, :cond_b9

    const/16 v1, 0x30

    if-eq v14, v1, :cond_ad

    const/16 v1, 0x50

    if-eq v14, v1, :cond_9b

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_5b
    add-int/2addr v1, v12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    :goto_6f
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_1f

    :cond_77
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_49

    :cond_85
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    goto :goto_49

    :cond_8d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    goto :goto_49

    :cond_9b
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5b

    :cond_ad
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_5b

    :cond_b9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5b

    :cond_cb
    sub-int v1, v11, v2

    sub-int v7, v1, v3

    const/4 v1, 0x0

    move v3, v1

    :goto_d1
    if-ge v3, v9, :cond_127

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v11, 0x8

    if-eq v1, v11, :cond_123

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v11, v1, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v11, :cond_123

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v11

    if-eqz v11, :cond_123

    int-to-float v12, v7

    iget v11, v11, Lcom/kwad/sdk/b/f/b$d;->e:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v11, v2

    iget-boolean v13, v1, Lcom/kwad/sdk/b/f/b$e;->d:Z

    if-eqz v13, :cond_116

    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/kwad/sdk/b/f/b$e;->d:Z

    sub-int v13, v10, v6

    sub-int/2addr v13, v5

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget v1, v1, Lcom/kwad/sdk/b/f/b$e;->c:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v13, v1}, Landroid/view/View;->measure(II)V

    :cond_116
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v8, v6, v11, v1, v12}, Landroid/view/View;->layout(IIII)V

    :cond_123
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d1

    :cond_127
    move-object/from16 v0, p0

    iput v6, v0, Lcom/kwad/sdk/b/f/b;->o:I

    sub-int v1, v10, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kwad/sdk/b/f/b;->p:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/kwad/sdk/b/f/b;->R:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/kwad/sdk/b/f/b;->P:Z

    if-eqz v1, :cond_148

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kwad/sdk/b/f/b;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/b/f/b;->a(IZIZZ)V

    :cond_148
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kwad/sdk/b/f/b;->P:Z

    return-void

    :cond_14e
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_6f
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    iget v2, p0, Lcom/kwad/sdk/b/f/b;->z:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->A:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v4, v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_3b
    if-ge v8, v9, :cond_ba

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9e

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    if-eqz v0, :cond_9e

    iget-boolean v1, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-eqz v1, :cond_9e

    iget v1, v0, Lcom/kwad/sdk/b/f/b$e;->b:I

    and-int/lit8 v6, v1, 0x7

    and-int/lit8 v3, v1, 0x70

    const/high16 v2, -0x80000000

    const/high16 v1, -0x80000000

    const/16 v7, 0x30

    if-eq v3, v7, :cond_67

    const/16 v7, 0x50

    if-ne v3, v7, :cond_a2

    :cond_67
    const/4 v3, 0x1

    move v7, v3

    :goto_69
    const/4 v3, 0x3

    if-eq v6, v3, :cond_6f

    const/4 v3, 0x5

    if-ne v6, v3, :cond_a5

    :cond_6f
    const/4 v3, 0x1

    move v6, v3

    :goto_71
    if-eqz v7, :cond_a8

    const/high16 v2, 0x40000000    # 2.0f

    :cond_75
    :goto_75
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v3, v11, :cond_ad

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v11, -0x1

    if-eq v3, v11, :cond_ad

    move v12, v3

    move v3, v2

    move v2, v12

    :goto_82
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x2

    if-eq v0, v11, :cond_b0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v11, -0x1

    if-eq v0, v11, :cond_b0

    :goto_8c
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_b2

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    :cond_9e
    :goto_9e
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3b

    :cond_a2
    const/4 v3, 0x0

    move v7, v3

    goto :goto_69

    :cond_a5
    const/4 v3, 0x0

    move v6, v3

    goto :goto_71

    :cond_a8
    if-eqz v6, :cond_75

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_75

    :cond_ad
    move v3, v2

    move v2, v4

    goto :goto_82

    :cond_b0
    move v0, v5

    goto :goto_8c

    :cond_b2
    if-eqz v6, :cond_9e

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_9e

    :cond_ba
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->s:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->t:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->t:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d6
    if-ge v1, v2, :cond_104

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_100

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    if-eqz v0, :cond_f0

    iget-boolean v4, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-nez v4, :cond_100

    :cond_f0
    int-to-float v4, v5

    iget v0, v0, Lcom/kwad/sdk/b/f/b$e;->c:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->s:I

    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    :cond_100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d6

    :cond_104
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2d

    move v2, v0

    move v4, v3

    move v3, v1

    :goto_e
    if-eq v3, v4, :cond_33

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {p0, v5}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/View;)Lcom/kwad/sdk/b/f/b$d;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v7, p0, Lcom/kwad/sdk/b/f/b;->f:I

    if-ne v6, v7, :cond_31

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    :goto_2c
    return v0

    :cond_2d
    add-int/lit8 v3, v3, -0x1

    move v4, v2

    goto :goto_e

    :cond_31
    add-int/2addr v3, v2

    goto :goto_e

    :cond_33
    move v0, v1

    goto :goto_2c
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Lcom/kwad/sdk/b/f/b$j;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Lcom/kwad/sdk/b/f/b$j;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_24

    iget-object v1, p1, Lcom/kwad/sdk/b/f/b$j;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/kwad/sdk/b/f/b$j;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Lcom/kwad/sdk/b/f/b$j;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kwad/sdk/b/f/b;->a(IZZ)V

    goto :goto_7

    :cond_24
    iget v0, p1, Lcom/kwad/sdk/b/f/b$j;->a:I

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->g:I

    iget-object v0, p1, Lcom/kwad/sdk/b/f/b$j;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->h:Landroid/os/Parcelable;

    iget-object v0, p1, Lcom/kwad/sdk/b/f/b$j;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->i:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/b/f/b$j;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/b/f/b$j;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->f:I

    iput v0, v1, Lcom/kwad/sdk/b/f/b$j;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/kwad/sdk/b/f/b$j;->b:Landroid/os/Parcelable;

    :cond_17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_a

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->m:I

    invoke-direct {p0, p2, p4, v0, v0}, Lcom/kwad/sdk/b/f/b;->a(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->M:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_16

    move v2, v3

    goto :goto_7

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    move v2, v3

    goto :goto_7

    :cond_22
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    :cond_2c
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_16e

    :cond_3a
    :goto_3a
    :pswitch_3a
    if-eqz v3, :cond_7

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_7

    :pswitch_40
    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    goto :goto_3a

    :pswitch_50
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->D:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    goto :goto_3a

    :pswitch_61
    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    if-eqz v0, :cond_3a

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->f:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/b/f/b;->a(IZIZZ)V

    iput v6, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int v3, v0, v1

    goto :goto_3a

    :pswitch_81
    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    if-nez v0, :cond_d2

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->D:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->C:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d2

    cmpl-float v0, v4, v0

    if-lez v0, :cond_d2

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->c(Z)V

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->F:F

    sub-float/2addr v1, v0

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e7

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_bf
    iput v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    iput v5, p0, Lcom/kwad/sdk/b/f/b;->C:F

    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->setScrollState(I)V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/b/f/b;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d2
    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->b(F)Z

    move-result v0

    or-int/2addr v3, v0

    goto/16 :goto_3a

    :cond_e7
    iget v1, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_bf

    :pswitch_ec
    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->x:Z

    if-eqz v0, :cond_146

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->H:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->J:I

    int-to-float v1, v1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v4, v0

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->getClientHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->k()Lcom/kwad/sdk/b/f/b$d;

    move-result-object v3

    iget v5, v3, Lcom/kwad/sdk/b/f/b$d;->b:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, v3, Lcom/kwad/sdk/b/f/b$d;->e:F

    sub-float/2addr v0, v1

    iget v1, v3, Lcom/kwad/sdk/b/f/b$d;->d:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/kwad/sdk/b/f/b;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->F:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v5, v0, v4, v1}, Lcom/kwad/sdk/b/f/b;->a(IFII)I

    move-result v1

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/b/f/b;->a(IZZIZ)V

    iput v6, p0, Lcom/kwad/sdk/b/f/b;->G:I

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->N:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int v3, v0, v1

    :cond_146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_3a

    :pswitch_14b
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v3, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->h()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->E:F

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->C:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->F:F

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->D:F

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/f/b;->G:I

    goto/16 :goto_3a

    nop

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_14b
        :pswitch_ec
        :pswitch_81
        :pswitch_61
        :pswitch_3a
        :pswitch_50
        :pswitch_40
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->t:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->k:Lcom/kwad/sdk/b/f/b$i;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_12
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$d;

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget-object v0, v0, Lcom/kwad/sdk/b/f/b$d;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_2f
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/kwad/sdk/b/f/b;->l()V

    iput v2, p0, Lcom/kwad/sdk/b/f/b;->f:I

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_41
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iput v2, p0, Lcom/kwad/sdk/b/f/b;->a:I

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->k:Lcom/kwad/sdk/b/f/b$i;

    if-nez v1, :cond_56

    new-instance v1, Lcom/kwad/sdk/b/f/b$i;

    invoke-direct {v1, p0, v5}, Lcom/kwad/sdk/b/f/b$i;-><init>(Lcom/kwad/sdk/b/f/b;Lcom/kwad/sdk/b/f/b$a;)V

    iput-object v1, p0, Lcom/kwad/sdk/b/f/b;->k:Lcom/kwad/sdk/b/f/b$i;

    :cond_56
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->k:Lcom/kwad/sdk/b/f/b$i;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    iget-boolean v1, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    iput-boolean v6, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/kwad/sdk/b/f/b;->a:I

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->g:I

    if-ltz v3, :cond_8e

    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Lcom/kwad/sdk/b/f/b;->h:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/kwad/sdk/b/f/b;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, p0, Lcom/kwad/sdk/b/f/b;->g:I

    invoke-virtual {p0, v1, v2, v6}, Lcom/kwad/sdk/b/f/b;->a(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/kwad/sdk/b/f/b;->g:I

    iput-object v5, p0, Lcom/kwad/sdk/b/f/b;->h:Landroid/os/Parcelable;

    iput-object v5, p0, Lcom/kwad/sdk/b/f/b;->i:Ljava/lang/ClassLoader;

    :cond_84
    :goto_84
    iget-object v1, p0, Lcom/kwad/sdk/b/f/b;->U:Lcom/kwad/sdk/b/f/b$g;

    if-eqz v1, :cond_8d

    if-eq v0, p1, :cond_8d

    invoke-interface {v1, v0, p1}, Lcom/kwad/sdk/b/f/b$g;->a(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    :cond_8d
    return-void

    :cond_8e
    if-nez v1, :cond_94

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->h()V

    goto :goto_84

    :cond_94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_84
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->a0:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1b

    :try_start_9
    const-class v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_13} :catch_2b

    const-string v2, "setChildrenDrawingOrderEnabled"

    :try_start_15
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/b;->a0:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_1b} :catch_2b

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->a0:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_34

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string v1, "VerticalViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :catch_34
    move-exception v0

    const-string v1, "VerticalViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method protected setCurrentItem(I)V
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentItem item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerticalViewPager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/kwad/sdk/b/f/b;->v:Z

    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/b;->P:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/kwad/sdk/b/f/b;->a(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerticalViewPager"

    invoke-static {v2, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_26
    iget v0, p0, Lcom/kwad/sdk/b/f/b;->w:I

    if-eq p1, v0, :cond_2f

    iput p1, p0, Lcom/kwad/sdk/b/f/b;->w:I

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->h()V

    :cond_2f
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/kwad/sdk/b/f/b$g;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b;->U:Lcom/kwad/sdk/b/f/b$g;

    return-void
.end method

.method public setOnPageScrollEndListener(Lcom/kwad/sdk/b/f/b$h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b;->V:Lcom/kwad/sdk/b/f/b$h;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/b/f/b;->m:I

    iput p1, p0, Lcom/kwad/sdk/b/f/b;->m:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/kwad/sdk/b/f/b;->a(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/b/f/b;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b;->n:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
