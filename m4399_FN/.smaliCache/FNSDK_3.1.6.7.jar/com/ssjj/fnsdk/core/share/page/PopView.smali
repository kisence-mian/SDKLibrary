.class public Lcom/ssjj/fnsdk/core/share/page/PopView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;

.field public mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2b02

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->j:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/c;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/share/page/c;-><init>(Lcom/ssjj/fnsdk/core/share/page/PopView;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x2b02

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->j:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/c;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/share/page/c;-><init>(Lcom/ssjj/fnsdk/core/share/page/PopView;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x2b02

    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->j:Z

    iput-boolean p3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->k:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    new-instance p3, Lcom/ssjj/fnsdk/core/share/page/c;

    invoke-direct {p3, p0}, Lcom/ssjj/fnsdk/core/share/page/c;-><init>(Lcom/ssjj/fnsdk/core/share/page/PopView;)V

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .registers 5

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    if-eqz v0, :cond_34

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, v0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/ssjj/fnsdk/core/share/page/d;

    invoke-direct {v2, p0, v0}, Lcom/ssjj/fnsdk/core/share/page/d;-><init>(Lcom/ssjj/fnsdk/core/share/page/PopView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 11

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->downBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->h:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->upBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    const-string v3, "#EDEDED"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    const-string v6, "\u53d6\u6d88\u6587\u5b57\u6548\u679c"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v5

    invoke-virtual {v3, v5, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    const-string v5, "#969696"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->f:Landroid/widget/TextView;

    const-string v8, "\u5206\u4eab\u6587\u6848"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->f:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->f:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->spToPx(F)I

    move-result v3

    invoke-virtual {v1, v7, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->a:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setType(I)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/PopView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private b()V
    .registers 4

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v0, v0

    aput v0, v2, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/e;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/share/page/e;-><init>(Lcom/ssjj/fnsdk/core/share/page/PopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_39
    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/share/page/PopView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->k:Z

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/share/page/PopView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/share/page/PopView;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a()V

    return-void
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/share/page/PopView;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->b()V

    return-void
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/share/page/PopView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->k:Z

    return p0
.end method

.method static synthetic i(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic j(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public getContentViewHeight()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public getTitleHeight()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setPopListener(Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    return-void
.end method

.method public setType(I)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    :cond_18
    iput-boolean v2, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->l:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/PopView;->k:Z

    :goto_2b
    return-void
.end method
