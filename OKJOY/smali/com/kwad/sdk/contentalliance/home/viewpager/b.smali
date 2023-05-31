.class public Lcom/kwad/sdk/contentalliance/home/viewpager/b;
.super Lcom/kwad/sdk/b/f/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;
    }
.end annotation


# instance fields
.field protected j0:Z

.field protected k0:Z

.field protected l0:Z

.field protected m0:Lcom/kwad/sdk/contentalliance/refreshview/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n0:F

.field private o0:F

.field private p0:Z

.field private q0:Z

.field private r0:Z

.field private s0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/b/f/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->r0:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->s0:Ljava/util/List;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->n0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->o0:F

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->q0:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    goto :goto_7
.end method

.method private m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->r0:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    return-void
.end method


# virtual methods
.method protected a(IFII)I
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/b/f/b;->a(IFII)I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getLastValidItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getFirstValidItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected a(IZZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/b/f/b;->a(IZZ)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .registers 6

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->k0:Z

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->n0:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->o0:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j0:Z

    if-nez v0, :cond_5b

    iget v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->o0:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5b

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getFirstValidItemPosition()I

    move-result v2

    if-ne v0, v2, :cond_5b

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->l0:Z

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j()V

    :cond_45
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->s0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;->a()V

    goto :goto_4b

    :cond_5b
    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getLastValidItemPosition()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->k()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->o0:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->l()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->s0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;->b()V

    goto :goto_7a
.end method

.method public a(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->s0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->s0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->s0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected e()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/b/f/b;->e()V

    return-void
.end method

.method protected getFirstValidItemPosition()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getLastValidItemPosition()I
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected j()V
    .registers 1

    return-void
.end method

.method protected k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->b(Landroid/view/MotionEvent;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->n0:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->o0:F

    sub-float v4, v2, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v3

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getFirstValidItemPosition()I

    move-result v5

    if-ne v3, v5, :cond_54

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_54

    mul-float v3, v2, v6

    cmpl-float v3, v3, v1

    if-lez v3, :cond_54

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m0:Lcom/kwad/sdk/contentalliance/refreshview/e;

    if-eqz v1, :cond_a

    iget-boolean v2, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j0:Z

    if-eqz v2, :cond_a

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/contentalliance/refreshview/e;->a(Landroid/view/MotionEvent;)V

    goto :goto_a

    :cond_54
    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v3

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getLastValidItemPosition()I

    move-result v5

    if-ne v3, v5, :cond_6e

    iget v3, p0, Lcom/kwad/sdk/b/f/b;->B:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_6e

    mul-float/2addr v2, v6

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6e

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->q0:Z

    goto :goto_a

    :cond_6e
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m0:Lcom/kwad/sdk/contentalliance/refreshview/e;

    if-eqz v0, :cond_79

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j0:Z

    if-eqz v1, :cond_79

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/e;->a(Landroid/view/MotionEvent;)V

    :cond_79
    invoke-super {p0, p1}, Lcom/kwad/sdk/b/f/b;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m()Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->b(Landroid/view/MotionEvent;)V

    if-eqz v2, :cond_38

    if-eq v2, v1, :cond_34

    const/4 v0, 0x2

    if-eq v2, v0, :cond_3c

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    if-eqz v0, :cond_9b

    if-eq v2, v1, :cond_24

    const/4 v0, 0x3

    if-ne v2, v0, :cond_27

    :cond_24
    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->n()V

    :cond_27
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m0:Lcom/kwad/sdk/contentalliance/refreshview/e;

    if-eqz v0, :cond_32

    iget-boolean v2, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j0:Z

    if-eqz v2, :cond_32

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/e;->b(Landroid/view/MotionEvent;)V

    :cond_32
    move v0, v1

    goto :goto_a

    :cond_34
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->a(Landroid/view/MotionEvent;)V

    goto :goto_1b

    :cond_38
    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->q0:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->n0:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->o0:F

    sub-float v5, v3, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v4

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getFirstValidItemPosition()I

    move-result v6

    if-ne v4, v6, :cond_81

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->B:I

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_6d

    mul-float v4, v3, v7

    cmpl-float v4, v4, v0

    if-lez v4, :cond_6d

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    :cond_6d
    iget-boolean v4, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->p0:Z

    if-nez v4, :cond_81

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_81

    iget-object v4, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m0:Lcom/kwad/sdk/contentalliance/refreshview/e;

    if-eqz v4, :cond_81

    iget-boolean v6, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j0:Z

    if-eqz v6, :cond_81

    invoke-virtual {v4, p1}, Lcom/kwad/sdk/contentalliance/refreshview/e;->b(Landroid/view/MotionEvent;)V

    :cond_81
    invoke-virtual {p0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v4

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->getLastValidItemPosition()I

    move-result v6

    if-ne v4, v6, :cond_1b

    iget v4, p0, Lcom/kwad/sdk/b/f/b;->B:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_1b

    mul-float/2addr v3, v7

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1b

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->q0:Z

    goto :goto_1b

    :cond_9b
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->q0:Z

    if-eqz v0, :cond_a7

    if-ne v2, v1, :cond_a4

    invoke-super {p0, p1}, Lcom/kwad/sdk/b/f/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a4
    move v0, v1

    goto/16 :goto_a

    :cond_a7
    invoke-super {p0, p1}, Lcom/kwad/sdk/b/f/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_a
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/b/f/b;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->r0:Z

    return-void
.end method
