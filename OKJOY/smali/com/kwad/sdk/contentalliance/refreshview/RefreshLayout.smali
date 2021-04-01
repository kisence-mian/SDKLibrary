.class public abstract Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;,
        Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;,
        Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;,
        Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;,
        Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:Landroid/view/View;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

.field private J:Landroid/view/View;

.field private K:Landroid/animation/ValueAnimator;

.field private L:Lcom/kwad/sdk/contentalliance/refreshview/b;

.field private M:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

.field private final N:Landroid/view/animation/Animation$AnimationListener;

.field private O:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;

.field private P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;",
            ">;"
        }
    .end annotation
.end field

.field protected final R:Landroid/view/animation/Animation$AnimationListener;

.field private S:Landroid/view/animation/Interpolator;

.field private T:Landroid/view/animation/Interpolator;

.field private U:Z

.field private V:Z

.field private final W:Landroid/view/animation/Animation;

.field private final a:[I

.field private final a0:Landroid/view/animation/Animation;

.field private final b:[I

.field private b0:Z

.field private final c:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final d:Landroid/support/v4/view/NestedScrollingParentHelper;

.field protected e:I

.field protected f:F

.field protected g:F

.field protected h:Landroid/view/View;

.field protected i:Lcom/kwad/sdk/contentalliance/refreshview/d;

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/high16 v5, 0x428c0000    # 70.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->r:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->t:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->u:I

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->F:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->G:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->H:Z

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->NORMAL:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->K:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->R:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->S:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->T:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->V:Z

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$c;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b0:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->w:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e:I

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    iput v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->C:F

    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d:Landroid/support/v4/view/NestedScrollingParentHelper;

    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d()V

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setNestedScrollingEnabled(Z)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_9

    const/high16 v0, -0x40800000    # -1.0f

    :goto_8
    return v0

    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_8
.end method

.method private a(F)I
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from -- refreshing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_40
    return v0

    :cond_41
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_40
.end method

.method private a(I)I
    .registers 4

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    :cond_10
    :goto_10
    return p1

    :cond_11
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_10
.end method

.method private a(FFF)V
    .registers 6

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->v:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setTargetOrRefreshViewOffsetY(I)V

    return-void
.end method

.method private a(FZ)V
    .registers 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->A:F

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->O:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;

    if-eqz v1, :cond_10

    invoke-interface {v1, p1, v3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;->a(FZ)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-nez v1, :cond_71

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_61

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->L:Lcom/kwad/sdk/contentalliance/refreshview/b;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    invoke-interface {v0, p1, v1}, Lcom/kwad/sdk/contentalliance/refreshview/b;->a(FF)F

    move-result v1

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    move v2, v1

    move v1, v0

    :goto_2c
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-nez v0, :cond_b1

    cmpl-float v0, v2, v1

    if-lez v0, :cond_81

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->n:Z

    if-nez v0, :cond_81

    iput-boolean v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->n:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    if-eqz v0, :cond_46

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->d()V

    :cond_46
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    if-eqz v0, :cond_b1

    :goto_4a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->d()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4a

    :cond_61
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->L:Lcom/kwad/sdk/contentalliance/refreshview/b;

    iget v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    invoke-interface {v1, p1, v2}, Lcom/kwad/sdk/contentalliance/refreshview/b;->a(FF)F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    move v2, v1

    move v1, v0

    goto :goto_2c

    :cond_71
    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_7f

    :goto_77
    cmpg-float v2, v1, v0

    if-gez v2, :cond_f9

    :goto_7b
    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    move v2, v0

    goto :goto_2c

    :cond_7f
    move v1, p1

    goto :goto_77

    :cond_81
    cmpg-float v0, v2, v1

    if-gtz v0, :cond_b1

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->n:Z

    if-eqz v0, :cond_b1

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->n:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    if-eqz v0, :cond_97

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->c()V

    :cond_97
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    if-eqz v0, :cond_b1

    :goto_9b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    invoke-direct {p0, v0, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(IZ)V

    goto/16 :goto_f

    :cond_f9
    move v0, v1

    goto :goto_7b
.end method

.method private a(II)V
    .registers 9

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v3, :cond_53

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_2c
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v3, :cond_69

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v2, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_4d
    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_2c

    :cond_69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_4d
.end method

.method private a(IZ)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_cf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b8

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    if-eqz v0, :cond_a5

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_22
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_df

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float v3, v1, v3

    invoke-interface {v0, v1, v3}, Lcom/kwad/sdk/contentalliance/refreshview/d;->a(FF)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    if-eqz v0, :cond_83

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float v3, v1, v3

    invoke-interface {v0, v1, v3, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->a(FFZ)V

    :cond_83
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    if-eqz v0, :cond_122

    move v1, v2

    :goto_88
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_122

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float v4, v3, v4

    invoke-interface {v0, v3, v4, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->a(FFZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_88

    :cond_a5
    int-to-float v0, p1

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->C:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->D:F

    add-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v3, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->D:F

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_22

    :cond_b8
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    if-eqz v0, :cond_c4

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_c4
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    goto/16 :goto_45

    :cond_cf
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    goto/16 :goto_45

    :cond_df
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    sub-float v3, v1, v3

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v3, v4

    invoke-interface {v0, v1, v3}, Lcom/kwad/sdk/contentalliance/refreshview/d;->a(FF)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    if-eqz v0, :cond_fd

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    sub-float v3, v1, v3

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v3, v4

    invoke-interface {v0, v1, v3, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->a(FFZ)V

    :cond_fd
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    if-eqz v0, :cond_122

    move v1, v2

    :goto_102
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_122

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    sub-float v4, v3, v4

    iget v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v4, v5

    invoke-interface {v0, v3, v4, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->a(FFZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_102

    :cond_122
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->V:Z

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_6
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->A:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(FFF)V

    return-void
.end method

.method private a(ZZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-eq v0, p1, :cond_12

    iput-boolean p2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->p:Z

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->a()V

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$e;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$e;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/refreshview/d;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method

.method private a(Landroid/view/View;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :goto_4
    return v2

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_30

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_30

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2e

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_2b

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_2e

    :cond_2b
    move v0, v1

    :goto_2c
    move v2, v0

    goto :goto_4

    :cond_2e
    move v0, v2

    goto :goto_2c

    :cond_30
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_3b
    if-ge v2, v3, :cond_4c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_49

    move v2, v1

    goto :goto_4

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4c
    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l:Z

    return p1
.end method

.method private b(F)I
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from -- start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_23

    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->t:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_22

    :cond_45
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->t:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_22
.end method

.method private b(I)I
    .registers 4

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    :cond_14
    :goto_14
    return p1

    :cond_15
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_14
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->M:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    return-object v0
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(F)I

    move-result v1

    if-gtz v1, :cond_12

    invoke-interface {p2, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-interface {p2, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :goto_11
    return-void

    :cond_12
    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->v:I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(F)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->T:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_31

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_31
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    if-ne v1, v2, :cond_15

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    :cond_15
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->A:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private c(F)V
    .registers 6

    const/4 v3, 0x1

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->x:F

    sub-float v0, p1, v0

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->w:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_17

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22

    :cond_17
    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->x:F

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    if-nez v1, :cond_21

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->w:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_21

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->x:F

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    goto :goto_21
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    return-object v0
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b()Lcom/kwad/sdk/contentalliance/refreshview/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->L:Lcom/kwad/sdk/contentalliance/refreshview/b;

    return-void
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->Q:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    :cond_23
    return-void

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l:Z

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->O:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->A:F

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;->a(FZ)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_16
    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, v2, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(ZZ)V

    goto :goto_9

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->R:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_9
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    return-object v0
.end method

.method private g()Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_12

    const/4 v1, 0x1

    :cond_11
    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getTargetOrRefreshViewTop()I
    .registers 3

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_13
.end method

.method static synthetic h(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)F
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    return v0
.end method

.method private h()V
    .registers 6

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_2d
    return-void
.end method

.method private i()V
    .registers 6

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l()V

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->A:F

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->D:F

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l:Z

    const-string v0, "RefreshLayout"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    return-void
.end method

.method private l()V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    const/4 v1, 0x0

    sub-float v0, v1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setTargetOrRefreshViewOffsetY(I)V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setTargetOrRefreshViewOffsetY(I)V

    goto :goto_16
.end method


# virtual methods
.method protected a(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(F)I

    move-result v1

    if-gtz v1, :cond_12

    invoke-interface {p2, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-interface {p2, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :goto_11
    return-void

    :cond_12
    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->v:I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(F)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->S:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_31

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_31
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c(Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    instance-of v1, v0, Lcom/kwad/sdk/contentalliance/refreshview/d;

    if-eqz v1, :cond_2a

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/d;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(Landroid/util/AttributeSet;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    move-result-object v0

    if-nez v0, :cond_24

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e:I

    invoke-direct {v0, v1, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;-><init>(II)V

    :cond_24
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "the refreshView must implement the interface IRefreshStatus"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    return v0
.end method

.method protected b(Landroid/util/AttributeSet;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b()Lcom/kwad/sdk/contentalliance/refreshview/b;
.end method

.method protected abstract c(Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method protected c()Z
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->U:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->getTargetOrRefreshViewOffset()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b0:Z

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRefreshing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_39
    invoke-virtual {p0, p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_e
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->generateDefaultLayoutParams()Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    invoke-direct {v0, v1, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->r:I

    if-gez v0, :cond_12

    :cond_11
    :goto_11
    return p2

    :cond_12
    if-nez p2, :cond_16

    move p2, v0

    goto :goto_11

    :cond_16
    if-gt p2, v0, :cond_11

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_1b
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->r:I

    if-ltz v0, :cond_11

    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_25

    move p2, v0

    goto :goto_11

    :cond_25
    if-lt p2, v0, :cond_11

    add-int/lit8 p2, p2, 0x1

    goto :goto_11
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshTargetOffset()F
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    return v0
.end method

.method public getStateView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    return-object v0
.end method

.method public getTargetOrRefreshViewOffset()I
    .registers 3

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_12

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_12
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->M:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    instance-of v2, v0, Lcom/kwad/sdk/contentalliance/refreshview/c;

    if-eqz v2, :cond_1b

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/c;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/c;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_c

    :cond_1b
    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    if-nez v0, :cond_54

    :cond_3a
    move v0, v1

    goto :goto_c

    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k:Z

    if-eqz v0, :cond_54

    :cond_52
    move v0, v1

    goto :goto_c

    :cond_54
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_c8

    :cond_5b
    :goto_5b
    :pswitch_5b
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    goto :goto_c

    :pswitch_5e
    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(Landroid/view/MotionEvent;)V

    goto :goto_5b

    :pswitch_62
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    if-ne v0, v4, :cond_68

    move v0, v1

    goto :goto_c

    :cond_68
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    cmpl-float v2, v0, v3

    if-nez v2, :cond_72

    move v0, v1

    goto :goto_c

    :cond_72
    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c(F)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->K:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->a()V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->R:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_5b

    :pswitch_92
    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    iput v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    goto :goto_5b

    :pswitch_97
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    cmpl-float v2, v0, v3

    if-nez v2, :cond_ac

    move v0, v1

    goto/16 :goto_c

    :cond_ac
    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->W:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_be

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a0:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_be

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l:Z

    :cond_be
    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->x:F

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    goto :goto_5b

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_97
        :pswitch_92
        :pswitch_62
        :pswitch_92
        :pswitch_5b
        :pswitch_5b
        :pswitch_5e
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    const/16 v6, 0x8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_2a

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_69

    :cond_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int v4, v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_5a

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v5, v3, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_5a
    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    if-eqz v5, :cond_69

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_69

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->E:Landroid/view/View;

    invoke-virtual {v5, v3, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_69
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(I)I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8
.end method

.method public onMeasure(II)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h()V

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(II)V

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->H:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->G:Z

    if-nez v0, :cond_39

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_73

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6e

    iput v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    :cond_39
    :goto_39
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->H:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->F:Z

    if-nez v0, :cond_57

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_57

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    :cond_57
    iput-boolean v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->H:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->r:I

    const/4 v0, 0x0

    :goto_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    if-ne v1, v2, :cond_80

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->r:I

    goto :goto_c

    :cond_6e
    iput v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    iput v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    goto :goto_39

    :cond_73
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    goto :goto_39

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    invoke-virtual {p0, p2, p3, p4}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    invoke-virtual {p0, p2, p3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-lez p3, :cond_23

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    cmpl-float v1, v0, v3

    if-lez v1, :cond_23

    int-to-float v1, p3

    cmpl-float v2, v1, v0

    if-lez v2, :cond_43

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    iput v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    :goto_17
    const-string v0, "RefreshLayout"

    const-string v1, "pre scroll"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    invoke-direct {p0, v0, v5}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(FZ)V

    :cond_23
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a:[I

    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_42

    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    :cond_42
    return-void

    :cond_43
    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    aput p3, p4, v4

    goto :goto_17
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b:[I

    aget v0, v0, v6

    add-int/2addr v0, p5

    if-gez v0, :cond_28

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    const-string v0, "RefreshLayout"

    const-string v1, "nested scroll"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    invoke-direct {p0, v0, v6}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(FZ)V

    :cond_28
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->startNestedScroll(I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_21

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_21

    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-nez v2, :cond_39

    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_20

    :cond_39
    move v0, v1

    goto :goto_20
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k:Z

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f()V

    iput v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j:F

    :cond_14
    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-nez v0, :cond_f

    move v0, v1

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_2f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    if-nez v0, :cond_43

    :cond_2d
    move v0, v1

    goto :goto_e

    :cond_2f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k:Z

    if-eqz v0, :cond_43

    :cond_41
    move v0, v1

    goto :goto_e

    :cond_43
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    sget-object v3, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->FLOAT:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    if-ne v0, v3, :cond_57

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k:Z

    if-eqz v0, :cond_57

    :cond_55
    move v0, v1

    goto :goto_e

    :cond_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1d4

    :goto_5e
    :pswitch_5e
    move v0, v2

    goto :goto_e

    :pswitch_60
    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(Landroid/view/MotionEvent;)V

    goto :goto_5e

    :pswitch_64
    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_5e

    :pswitch_68
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    if-ne v0, v5, :cond_6e

    move v0, v1

    goto :goto_e

    :cond_6e
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v3

    cmpl-float v0, v3, v4

    if-nez v0, :cond_78

    move v0, v1

    goto :goto_e

    :cond_78
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l:Z

    if-eqz v0, :cond_e6

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->getTargetOrRefreshViewTop()I

    move-result v0

    int-to-float v0, v0

    iput v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animatetostart overscrolly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RefreshLayout"

    invoke-static {v5, v4}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a9
    iget-boolean v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-eqz v4, :cond_14c

    cmpg-float v4, v0, v6

    if-gtz v4, :cond_12d

    iget-boolean v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    if-eqz v4, :cond_11e

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_ba
    :goto_ba
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveSpinner refreshing -- "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -- "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RefreshLayout"

    invoke-static {v3, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(FZ)V

    goto/16 :goto_5e

    :cond_e6
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    sub-float v0, v3, v0

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    add-float/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overscrolly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RefreshLayout"

    invoke-static {v5, v4}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    :cond_11e
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_ba

    :cond_12d
    cmpl-float v4, v0, v6

    if-lez v4, :cond_ba

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_ba

    iget-boolean v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    if-eqz v4, :cond_ba

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_ba

    :cond_14c
    iget-boolean v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    if-eqz v4, :cond_18b

    cmpl-float v4, v0, v6

    if-lez v4, :cond_181

    invoke-direct {p0, v0, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(FZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveSpinner not refreshing -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->z:F

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    :cond_181
    const-string v0, "RefreshLayout"

    const-string v2, "is Being Dragged, but over scroll Y < 0"

    invoke-static {v0, v2}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_e

    :cond_18b
    const-string v0, "RefreshLayout"

    const-string v1, "is not Being Dragged, init drag status"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c(F)V

    goto/16 :goto_5e

    :pswitch_197
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    if-eq v0, v5, :cond_1a3

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1a9

    :cond_1a3
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k()V

    move v0, v1

    goto/16 :goto_e

    :cond_1a9
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-nez v0, :cond_1b1

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->l:Z

    if-eqz v0, :cond_1c0

    :cond_1b1
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->q:Z

    if-eqz v0, :cond_1ba

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1ba
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k()V

    move v0, v1

    goto/16 :goto_e

    :cond_1c0
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->k()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f()V

    move v0, v1

    goto/16 :goto_e

    :pswitch_1c9
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->s:I

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->o:Z

    goto/16 :goto_5e

    nop

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_1c9
        :pswitch_197
        :pswitch_68
        :pswitch_197
        :pswitch_5e
        :pswitch_64
        :pswitch_60
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->J:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_16
.end method

.method public setAnimateToRefreshDuration(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->u:I

    return-void
.end method

.method public setAnimateToRefreshInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->T:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setAnimateToStartDuration(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->t:I

    return-void
.end method

.method public setAnimateToStartInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->S:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setDragDistanceConverter(Lcom/kwad/sdk/contentalliance/refreshview/b;)V
    .registers 4
    .param p1    # Lcom/kwad/sdk/contentalliance/refreshview/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->L:Lcom/kwad/sdk/contentalliance/refreshview/b;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the dragDistanceConverter can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsStopNestScrollWhenUpOrCancel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b0:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->M:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    return-void
.end method

.method public setOnRefreshStatusListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->P:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    return-void
.end method

.method public setOnScrollInterceptor(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->O:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$j;

    return-void
.end method

.method public setOnlySupportPull(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->U:Z

    return-void
.end method

.method public setRefreshInitialOffset(F)V
    .registers 3

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->B:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->G:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setRefreshStyle(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;)V
    .registers 2
    .param p1    # Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->I:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    return-void
.end method

.method public setRefreshTargetOffset(F)V
    .registers 3

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->F:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    if-ne v0, p1, :cond_6

    :goto_5
    return-void

    :cond_6
    if-eqz p1, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->j()V

    :cond_26
    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->m:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->p:Z

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_5

    :cond_33
    invoke-direct {p0, p1, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(ZZ)V

    goto :goto_5
.end method

.method public setShowRefreshView(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setOnlySupportPull(Z)V

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->V:Z

    return-void
.end method

.method public setTargetOrRefreshViewOffsetY(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(IZ)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
