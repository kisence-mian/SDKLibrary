.class public Lcom/ksad/lottie/f;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/f$i;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private b:Lcom/ksad/lottie/d;

.field private final c:Lcom/ksad/lottie/r/c;

.field private d:F

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ksad/lottie/f$i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ksad/lottie/o/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/ksad/lottie/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/ksad/lottie/o/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field j:Lcom/ksad/lottie/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field k:Lcom/ksad/lottie/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/ksad/lottie/model/layer/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksad/lottie/f;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/f;->a:Landroid/graphics/Matrix;

    new-instance v0, Lcom/ksad/lottie/r/c;

    invoke-direct {v0}, Lcom/ksad/lottie/r/c;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ksad/lottie/f;->d:F

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    const/16 v0, 0xff

    iput v0, p0, Lcom/ksad/lottie/f;->n:I

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    new-instance v1, Lcom/ksad/lottie/f$c;

    invoke-direct {v1, p0}, Lcom/ksad/lottie/f$c;-><init>(Lcom/ksad/lottie/f;)V

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/r/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)F
    .registers 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v2}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ksad/lottie/f;)Lcom/ksad/lottie/model/layer/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->m:Lcom/ksad/lottie/model/layer/b;

    return-object v0
.end method

.method static synthetic b(Lcom/ksad/lottie/f;)Lcom/ksad/lottie/r/c;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    return-object v0
.end method

.method private u()V
    .registers 5

    new-instance v0, Lcom/ksad/lottie/model/layer/b;

    iget-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-static {v1}, Lcom/ksad/lottie/q/s;->a(Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v2}, Lcom/ksad/lottie/d;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ksad/lottie/model/layer/b;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;Ljava/util/List;Lcom/ksad/lottie/d;)V

    iput-object v0, p0, Lcom/ksad/lottie/f;->m:Lcom/ksad/lottie/model/layer/b;

    return-void
.end method

.method private v()Landroid/content/Context;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8

    :cond_14
    move-object v0, v1

    goto :goto_8
.end method

.method private w()Lcom/ksad/lottie/o/a;
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/ksad/lottie/f;->i:Lcom/ksad/lottie/o/a;

    if-nez v0, :cond_19

    new-instance v0, Lcom/ksad/lottie/o/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/ksad/lottie/f;->j:Lcom/ksad/lottie/a;

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/o/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/ksad/lottie/a;)V

    iput-object v0, p0, Lcom/ksad/lottie/f;->i:Lcom/ksad/lottie/o/a;

    :cond_19
    iget-object v0, p0, Lcom/ksad/lottie/f;->i:Lcom/ksad/lottie/o/a;

    goto :goto_7
.end method

.method private x()Lcom/ksad/lottie/o/b;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lcom/ksad/lottie/f;->v()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksad/lottie/o/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    invoke-virtual {v1}, Lcom/ksad/lottie/o/b;->a()V

    iput-object v0, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    :cond_1d
    iget-object v0, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    if-nez v0, :cond_36

    new-instance v0, Lcom/ksad/lottie/o/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/ksad/lottie/f;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksad/lottie/f;->h:Lcom/ksad/lottie/b;

    iget-object v4, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v4}, Lcom/ksad/lottie/d;->h()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksad/lottie/o/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/ksad/lottie/b;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    :cond_36
    iget-object v0, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    goto :goto_7
.end method

.method private y()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/ksad/lottie/f;->n()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v2}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/ksad/lottie/f;->x()Lcom/ksad/lottie/o/b;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/o/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/ksad/lottie/f;->w()Lcom/ksad/lottie/o/a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Lcom/ksad/lottie/o/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->cancel()V

    return-void
.end method

.method public a(F)V
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$h;

    invoke-direct {v1, p0, p1}, Lcom/ksad/lottie/f$h;-><init>(Lcom/ksad/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->e()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/f;->b(I)V

    goto :goto_e
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$a;

    invoke-direct {v1, p0, p1}, Lcom/ksad/lottie/f$a;-><init>(Lcom/ksad/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/c;->a(I)V

    goto :goto_e
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Lcom/ksad/lottie/a;)V
    .registers 3

    iput-object p1, p0, Lcom/ksad/lottie/f;->j:Lcom/ksad/lottie/a;

    iget-object v0, p0, Lcom/ksad/lottie/f;->i:Lcom/ksad/lottie/o/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/o/a;->a(Lcom/ksad/lottie/a;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/ksad/lottie/b;)V
    .registers 3

    iput-object p1, p0, Lcom/ksad/lottie/f;->h:Lcom/ksad/lottie/b;

    iget-object v0, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/o/b;->a(Lcom/ksad/lottie/b;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/ksad/lottie/m;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/f;->k:Lcom/ksad/lottie/m;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/ksad/lottie/f;->l:Z

    if-ne v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_13

    sget-object v0, Lcom/ksad/lottie/f;->p:Ljava/lang/String;

    const-string v1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_13
    iput-boolean p1, p0, Lcom/ksad/lottie/f;->l:Z

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ksad/lottie/f;->u()V

    goto :goto_4
.end method

.method public a(Lcom/ksad/lottie/d;)Z
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/ksad/lottie/f;->b()V

    iput-object p1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-direct {p0}, Lcom/ksad/lottie/f;->u()V

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/c;->a(Lcom/ksad/lottie/d;)V

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/f;->c(F)V

    iget v0, p0, Lcom/ksad/lottie/f;->d:F

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/f;->d(F)V

    invoke-direct {p0}, Lcom/ksad/lottie/f;->y()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/f$i;

    invoke-interface {v0, p1}, Lcom/ksad/lottie/f$i;->a(Lcom/ksad/lottie/d;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :cond_42
    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/ksad/lottie/f;->o:Z

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/d;->a(Z)V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->s()V

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->cancel()V

    :cond_11
    iput-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    iput-object v1, p0, Lcom/ksad/lottie/f;->m:Lcom/ksad/lottie/model/layer/b;

    iput-object v1, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->d()V

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public b(F)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$f;

    invoke-direct {v1, p0, p1}, Lcom/ksad/lottie/f$f;-><init>(Lcom/ksad/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->e()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/f;->c(I)V

    goto :goto_e
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$g;

    invoke-direct {v1, p0, p1}, Lcom/ksad/lottie/f$g;-><init>(Lcom/ksad/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/c;->b(I)V

    goto :goto_e
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/a;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ksad/lottie/f;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/ksad/lottie/f;->o:Z

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/d;->a(Z)V

    :cond_9
    return-void
.end method

.method public c(F)V
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$b;

    invoke-direct {v1, p0, p1}, Lcom/ksad/lottie/f$b;-><init>(Lcom/ksad/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->e()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/f;->a(I)V

    goto :goto_e
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$e;

    invoke-direct {v1, p0, p1}, Lcom/ksad/lottie/f$e;-><init>(Lcom/ksad/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/c;->c(I)V

    goto :goto_e
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/lottie/f;->l:Z

    return v0
.end method

.method public d()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->e()V

    return-void
.end method

.method public d(F)V
    .registers 2

    iput p1, p0, Lcom/ksad/lottie/f;->d:F

    invoke-direct {p0}, Lcom/ksad/lottie/f;->y()V

    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/f;->m:Lcom/ksad/lottie/model/layer/b;

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v1, p0, Lcom/ksad/lottie/f;->d:F

    invoke-direct {p0, p1}, Lcom/ksad/lottie/f;->a(Landroid/graphics/Canvas;)F

    move-result v0

    cmpl-float v3, v1, v0

    if-lez v3, :cond_6e

    iget v1, p0, Lcom/ksad/lottie/f;->d:F

    div-float/2addr v1, v0

    :goto_1b
    cmpl-float v2, v1, v2

    if-lez v2, :cond_50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v3}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v4}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    mul-float v5, v3, v0

    mul-float v6, v4, v0

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->n()F

    move-result v7

    mul-float/2addr v3, v7

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->n()F

    move-result v7

    mul-float/2addr v4, v7

    sub-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_50
    iget-object v1, p0, Lcom/ksad/lottie/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/ksad/lottie/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/ksad/lottie/f;->m:Lcom/ksad/lottie/model/layer/b;

    iget-object v1, p0, Lcom/ksad/lottie/f;->a:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/ksad/lottie/f;->n:I

    invoke-virtual {v0, p1, v1, v3}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    if-lez v2, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_6e
    move v0, v1

    move v1, v2

    goto :goto_1b
.end method

.method public e()Lcom/ksad/lottie/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    return-object v0
.end method

.method public e(F)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/c;->a(F)V

    return-void
.end method

.method public e(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/r/c;->setRepeatMode(I)V

    return-void
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->g()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/f;->n:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->n()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->n()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public h()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v0

    return v0
.end method

.method public i()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public invalidateSelf()V
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public isRunning()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->q()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/ksad/lottie/l;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->j()Lcom/ksad/lottie/l;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public k()F
    .registers 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->f()F

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public n()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/f;->d:F

    return v0
.end method

.method public o()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->j()F

    move-result v0

    return v0
.end method

.method public p()Lcom/ksad/lottie/m;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/f;->k:Lcom/ksad/lottie/m;

    return-object v0
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->isRunning()Z

    move-result v0

    return v0
.end method

.method public r()V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/f;->m:Lcom/ksad/lottie/model/layer/b;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ksad/lottie/f$d;

    invoke-direct {v1, p0}, Lcom/ksad/lottie/f$d;-><init>(Lcom/ksad/lottie/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/ksad/lottie/f;->c:Lcom/ksad/lottie/r/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/r/c;->k()V

    goto :goto_e
.end method

.method public s()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->f:Lcom/ksad/lottie/o/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ksad/lottie/o/b;->a()V

    :cond_7
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_6
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/ksad/lottie/f;->n:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "LOTTIE"

    const-string v1, "Use addColorFilter instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->r()V

    return-void
.end method

.method public stop()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/ksad/lottie/f;->d()V

    return-void
.end method

.method public t()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/f;->k:Lcom/ksad/lottie/m;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ksad/lottie/f;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->b()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_6
.end method
