.class public Lcom/ksad/lottie/LottieAnimationView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/LottieAnimationView$c;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private final a:Lcom/ksad/lottie/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/h",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ksad/lottie/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/h",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ksad/lottie/f;

.field private d:Ljava/lang/String;

.field private e:I
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ksad/lottie/i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ksad/lottie/k;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ksad/lottie/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksad/lottie/LottieAnimationView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$a;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/LottieAnimationView$a;-><init>(Lcom/ksad/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->a:Lcom/ksad/lottie/h;

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$b;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/LottieAnimationView$b;-><init>(Lcom/ksad/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->b:Lcom/ksad/lottie/h;

    new-instance v0, Lcom/ksad/lottie/f;

    invoke-direct {v0}, Lcom/ksad/lottie/f;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->f:Z

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->g:Z

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->h:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->i:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$a;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/LottieAnimationView$a;-><init>(Lcom/ksad/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->a:Lcom/ksad/lottie/h;

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$b;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/LottieAnimationView$b;-><init>(Lcom/ksad/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->b:Lcom/ksad/lottie/h;

    new-instance v0, Lcom/ksad/lottie/f;

    invoke-direct {v0}, Lcom/ksad/lottie/f;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->f:Z

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->g:Z

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->h:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->i:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$a;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/LottieAnimationView$a;-><init>(Lcom/ksad/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->a:Lcom/ksad/lottie/h;

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$b;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/LottieAnimationView$b;-><init>(Lcom/ksad/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->b:Lcom/ksad/lottie/h;

    new-instance v0, Lcom/ksad/lottie/f;

    invoke-direct {v0}, Lcom/ksad/lottie/f;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->f:Z

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->g:Z

    iput-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->h:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->i:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    if-eq p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->d()V

    :cond_9
    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->e()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->g()V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->j:Lcom/ksad/lottie/k;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/ksad/lottie/LottieAnimationView;->a:Lcom/ksad/lottie/h;

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/k;->d(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->j:Lcom/ksad/lottie/k;

    iget-object v1, p0, Lcom/ksad/lottie/LottieAnimationView;->b:Lcom/ksad/lottie/h;

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/k;->c(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;

    :cond_10
    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->k:Lcom/ksad/lottie/d;

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->b()V

    return-void
.end method

.method private g()V
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/ksad/lottie/LottieAnimationView;->h:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v1}, Lcom/ksad/lottie/f;->q()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v0

    :goto_e
    if-eqz v1, :cond_11

    const/4 v0, 0x2

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_16
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private setCompositionTask(Lcom/ksad/lottie/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->f()V

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->e()V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->a:Lcom/ksad/lottie/h;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/k;->b(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/LottieAnimationView;->b:Lcom/ksad/lottie/h;

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->j:Lcom/ksad/lottie/k;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->a()V

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->g()V

    return-void
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Landroid/util/JsonReader;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/ksad/lottie/e;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/ksad/lottie/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setCompositionTask(Lcom/ksad/lottie/k;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/util/JsonReader;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(Z)V

    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->q()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->r()V

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->g()V

    return-void
.end method

.method d()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->s()V

    return-void
.end method

.method public getComposition()Lcom/ksad/lottie/d;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->k:Lcom/ksad/lottie/d;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->k:Lcom/ksad/lottie/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->c()F

    move-result v0

    float-to-long v0, v0

    :goto_9
    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public getFrame()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->f()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrame()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->h()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->i()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/ksad/lottie/l;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->j()Lcom/ksad/lottie/l;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .registers 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->k()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->l()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->m()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->n()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->o()F

    move-result v0

    return v0
.end method

.method public getUseHardwareAcceleration()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/lottie/LottieAnimationView;->h:Z

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    if-ne v0, v1, :cond_c

    invoke-super {p0, v1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    return-void

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/ksad/lottie/LottieAnimationView;->g:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/ksad/lottie/LottieAnimationView;->f:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    :cond_e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/LottieAnimationView;->f:Z

    :cond_c
    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->d()V

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Lcom/ksad/lottie/LottieAnimationView$c;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_22
    iget v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;->b:I

    iput v0, p0, Lcom/ksad/lottie/LottieAnimationView;->e:I

    iget v0, p0, Lcom/ksad/lottie/LottieAnimationView;->e:I

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_2d
    iget v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;->c:F

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setProgress(F)V

    iget-boolean v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;->d:Z

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->c()V

    :cond_39
    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    iget-object v1, p1, Lcom/ksad/lottie/LottieAnimationView$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/f;->b(Ljava/lang/String;)V

    iget v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;->f:I

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget v0, p1, Lcom/ksad/lottie/LottieAnimationView$c;->g:I

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setRepeatCount(I)V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/ksad/lottie/LottieAnimationView$c;

    invoke-direct {v1, v0}, Lcom/ksad/lottie/LottieAnimationView$c;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->a:Ljava/lang/String;

    iget v0, p0, Lcom/ksad/lottie/LottieAnimationView;->e:I

    iput v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->b:I

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->k()F

    move-result v0

    iput v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->c:F

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->q()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->d:Z

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->m()I

    move-result v0

    iput v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->f:I

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->l()I

    move-result v0

    iput v0, v1, Lcom/ksad/lottie/LottieAnimationView$c;->g:I

    return-object v1
.end method

.method public setAnimation(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/ksad/lottie/LottieAnimationView;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ksad/lottie/e;->a(Landroid/content/Context;I)Lcom/ksad/lottie/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setCompositionTask(Lcom/ksad/lottie/k;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ksad/lottie/LottieAnimationView;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksad/lottie/LottieAnimationView;->e:I

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ksad/lottie/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setCompositionTask(Lcom/ksad/lottie/k;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ksad/lottie/LottieAnimationView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ksad/lottie/e;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setCompositionTask(Lcom/ksad/lottie/k;)V

    return-void
.end method

.method public setComposition(Lcom/ksad/lottie/d;)V
    .registers 5
    .param p1    # Lcom/ksad/lottie/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/ksad/lottie/c;->a:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/ksad/lottie/LottieAnimationView;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/ksad/lottie/LottieAnimationView;->k:Lcom/ksad/lottie/d;

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(Lcom/ksad/lottie/d;)Z

    move-result v0

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->g()V

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    if-ne v1, v2, :cond_37

    if-nez v0, :cond_37

    :cond_36
    return-void

    :cond_37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->requestLayout()V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/i;

    invoke-interface {v0, p1}, Lcom/ksad/lottie/i;->a(Lcom/ksad/lottie/d;)V

    goto :goto_49
.end method

.method public setFontAssetDelegate(Lcom/ksad/lottie/a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(Lcom/ksad/lottie/a;)V

    return-void
.end method

.method public setFrame(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/ksad/lottie/b;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(Lcom/ksad/lottie/b;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->d()V

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->e()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/LottieAnimationView;->d()V

    invoke-direct {p0}, Lcom/ksad/lottie/LottieAnimationView;->e()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->b(I)V

    return-void
.end method

.method public setMaxProgress(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(F)V

    return-void
.end method

.method public setMinFrame(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->c(I)V

    return-void
.end method

.method public setMinProgress(F)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->b(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->b(Z)V

    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->c(F)V

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->d(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->e(I)V

    return-void
.end method

.method public setScale(F)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->d(F)V

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-direct {p0, v0, v2}, Lcom/ksad/lottie/LottieAnimationView;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_17
    return-void
.end method

.method public setSpeed(F)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->e(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/ksad/lottie/m;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/f;->a(Lcom/ksad/lottie/m;)V

    return-void
.end method
