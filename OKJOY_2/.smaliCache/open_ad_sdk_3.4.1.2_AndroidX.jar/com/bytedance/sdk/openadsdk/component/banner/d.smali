.class Lcom/bytedance/sdk/openadsdk/component/banner/d;
.super Landroid/widget/FrameLayout;
.source "BannerView.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/component/banner/c;

.field private c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->i:Z

    .line 44
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j:Z

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->g()V

    .line 50
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/banner/c;)Landroid/animation/ObjectAnimator;
    .registers 6

    .line 196
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->getWidth()I

    move-result v0

    .line 197
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "translationX"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/d;)Lcom/bytedance/sdk/openadsdk/dislike/b;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/d;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 256
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 258
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/d;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->h:Z

    return p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/component/banner/c;)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 206
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->getWidth()I

    move-result v0

    .line 207
    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v0, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "translationX"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/d;Lcom/bytedance/sdk/openadsdk/component/banner/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/banner/d;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->k()V

    return-void
.end method

.method private g()V
    .registers 4

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/banner/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    .line 66
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->i()V

    .line 68
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->h()V

    .line 69
    return-void
.end method

.method private h()V
    .registers 5

    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j:Z

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 84
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j:Z

    .line 85
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_icon"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 99
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    const v3, 0x800035

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 102
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 107
    return-void
.end method

.method private i()V
    .registers 4

    .line 110
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->i:Z

    if-eqz v0, :cond_5

    .line 111
    return-void

    .line 113
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->i:Z

    .line 114
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->e:Landroid/widget/ImageView;

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ad_logo_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    const/16 v0, 0x14

    .line 120
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    const v0, 0x800055

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method private j()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->bringChildToFront(Landroid/view/View;)V

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 136
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->bringChildToFront(Landroid/view/View;)V

    .line 138
    :cond_e
    return-void
.end method

.method private k()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    .line 274
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    .line 275
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    .line 276
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->b()V

    .line 277
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 126
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/banner/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    .line 127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 187
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->g:I

    .line 188
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/dislike/b;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 172
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j()V

    .line 150
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 155
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j()V

    .line 156
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 4

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 161
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j()V

    .line 162
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j()V

    .line 168
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j()V

    .line 144
    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/component/banner/c;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/component/banner/c;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()V
    .registers 4

    .line 242
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->h:Z

    if-nez v0, :cond_2f

    .line 243
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b(Lcom/bytedance/sdk/openadsdk/component/banner/c;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 245
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->g:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->setVisibility(I)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->h:Z

    .line 249
    :cond_2f
    return-void
.end method

.method public f()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->c:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->i:Z

    .line 76
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d;->j:Z

    .line 77
    return-void
.end method
