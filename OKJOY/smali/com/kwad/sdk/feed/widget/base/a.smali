.class public abstract Lcom/kwad/sdk/feed/widget/base/a;
.super Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/feed/widget/base/a$b;
    }
.end annotation


# instance fields
.field protected b:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field protected d:Lcom/kwad/sdk/feed/widget/base/a$b;

.field protected e:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected f:Lcom/kwad/sdk/e/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/e/g$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/e/g$a;

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/base/a;->f()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/core/page/widget/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    new-instance v1, Lcom/kwad/sdk/feed/widget/base/a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/base/a$a;-><init>(Lcom/kwad/sdk/feed/widget/base/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/a;->setViewCallback(Lcom/kwad/sdk/core/page/widget/a$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/a;->setNeedCheckingShow(Z)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/kwad/sdk/core/page/widget/a;

    if-eqz v2, :cond_13

    check-cast v0, Lcom/kwad/sdk/core/page/widget/a;

    :goto_12
    return-object v0

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getLayoutId()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getHWRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->b()V

    invoke-direct {p0, p0}, Lcom/kwad/sdk/feed/widget/base/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getTouchCoords()Lcom/kwad/sdk/e/g$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/e/g$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->d:Lcom/kwad/sdk/feed/widget/base/a$b;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$b;->onAdClicked()V

    :cond_10
    return-void
.end method

.method protected d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->d:Lcom/kwad/sdk/feed/widget/base/a$b;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$b;->onAdShow()V

    :cond_c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    :goto_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->b(FF)V

    goto :goto_9

    :cond_1c
    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;-><init>(II)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/e/g$a;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->a(FF)V

    goto :goto_9
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->d:Lcom/kwad/sdk/feed/widget/base/a$b;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$b;->onDislikeClicked()V

    :cond_c
    return-void
.end method

.method protected getHWRatio()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getTouchCoords()Lcom/kwad/sdk/e/g$a;
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/e/g$a;

    return-object v0
.end method

.method public setAdClickListener(Lcom/kwad/sdk/feed/widget/base/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->d:Lcom/kwad/sdk/feed/widget/base/a$b;

    return-void
.end method
