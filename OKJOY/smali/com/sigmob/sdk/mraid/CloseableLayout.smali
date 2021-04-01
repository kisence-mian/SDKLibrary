.class public Lcom/sigmob/sdk/mraid/CloseableLayout;
.super Landroid/widget/FrameLayout;


# static fields
.field static final a:F = 30.0f

.field static final b:F = 50.0f

.field static final c:F = 8.0f


# instance fields
.field private final d:I

.field private e:Lcom/sigmob/sdk/mraid/b;

.field private final f:Landroid/graphics/drawable/StateListDrawable;

.field private g:Lcom/sigmob/sdk/mraid/a;

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Z

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Rect;

.field private p:Z

.field private q:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->o:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    sget-object v0, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/mraid/a;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->g:Lcom/sigmob/sdk/mraid/a;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/sigmob/sdk/mraid/CloseableLayout;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->d:I

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->i:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/CloseableLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b(Z)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid/a;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/a;->a()I

    move-result v0

    invoke-static {v0, p2, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/mraid/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->i:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/a;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b()Z

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_16

    sget-object v0, Lcom/sigmob/sdk/mraid/CloseableLayout;->SELECTED_STATE_SET:[I

    :goto_d
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_16
    sget-object v0, Lcom/sigmob/sdk/mraid/CloseableLayout;->EMPTY_STATE_SET:[I

    goto :goto_d
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->e:Lcom/sigmob/sdk/mraid/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->e:Lcom/sigmob/sdk/mraid/b;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/b;->a()V

    :cond_d
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/a;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Z

    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->p:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

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

.method a(III)Z
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-lt p2, v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p3

    if-ge p2, v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/mraid/CloseableLayout;->SELECTED_STATE_SET:[I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Z

    if-eqz v0, :cond_40

    iput-boolean v3, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->g:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->o:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:I

    iget v2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->g:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->n:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b(Lcom/sigmob/sdk/mraid/a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_40
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4d
    return-void
.end method

.method getCloseBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(III)Z

    move-result v0

    goto :goto_7
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->d:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(III)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1a
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    :cond_21
    :goto_21
    return v0

    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    :pswitch_29
    goto :goto_21

    :pswitch_2a
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b(Z)V

    goto :goto_21

    :pswitch_2e
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b(Z)V

    goto :goto_21

    :pswitch_32
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->q:Lcom/sigmob/sdk/mraid/c;

    if-nez v1, :cond_44

    new-instance v1, Lcom/sigmob/sdk/mraid/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sigmob/sdk/mraid/c;-><init>(Lcom/sigmob/sdk/mraid/CloseableLayout;Lcom/sigmob/sdk/mraid/CloseableLayout$1;)V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->q:Lcom/sigmob/sdk/mraid/c;

    :cond_44
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->q:Lcom/sigmob/sdk/mraid/c;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->c()V

    goto :goto_21

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_32
        :pswitch_29
        :pswitch_2e
    .end packed-switch
.end method

.method public setCloseAlwaysInteractable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->p:Z

    return-void
.end method

.method public setClosePosition(Lcom/sigmob/sdk/mraid/a;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->g:Lcom/sigmob/sdk/mraid/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->invalidate()V

    return-void
.end method

.method public setCloseVisible(Z)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public setOnCloseListener(Lcom/sigmob/sdk/mraid/b;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->e:Lcom/sigmob/sdk/mraid/b;

    return-void
.end method
