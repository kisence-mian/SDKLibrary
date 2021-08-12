.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/g$a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/h$b;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# instance fields
.field A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

.field B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

.field C:Z

.field D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field F:Lcom/bytedance/sdk/openadsdk/core/a/a;

.field G:Lcom/bytedance/sdk/openadsdk/core/a/a;

.field H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

.field I:Z

.field private J:Landroid/view/View;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

.field private final N:Ljava/lang/String;

.field a:Landroid/view/View;

.field b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/ImageView;

.field g:Landroid/view/ViewStub;

.field h:Landroid/view/View;

.field i:Landroid/widget/ImageView;

.field j:Landroid/view/View;

.field k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/view/ViewStub;

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:I

.field x:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            ")V"
        }
    .end annotation

    .line 151
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            "Z)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    .line 118
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    .line 130
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    .line 357
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    .line 136
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    if-eqz v0, :cond_13

    return-void

    .line 137
    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    .line 138
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 139
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    .line 140
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    .line 141
    if-nez p4, :cond_2c

    const-class p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_2c
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    .line 142
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 143
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 144
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 145
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a()V

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n()V

    .line 148
    return-void
.end method

.method private A()Z
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    const-string v1, "C8817D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    .line 362
    const-string v1, "M5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    .line 363
    const-string v1, "R7t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 361
    :goto_22
    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    return-object p0
.end method

.method private b(Landroid/view/View;Landroid/content/Context;)V
    .registers 4

    .line 417
    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_41

    .line 418
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    if-eqz v0, :cond_13

    goto :goto_41

    .line 420
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 422
    const-string v0, "tt_video_ad_cover_center_layout_draw"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    .line 423
    const-string v0, "tt_video_ad_button_draw"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    .line 424
    const-string v0, "tt_video_ad_replay"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    .line 425
    return-void

    .line 419
    :cond_41
    :goto_41
    return-void
.end method

.method private e(I)I
    .registers 6

    .line 588
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    if-lez v0, :cond_43

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    if-gtz v0, :cond_9

    goto :goto_43

    .line 591
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v2, "tt_video_container_maxheight"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 592
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v3, "tt_video_container_minheight"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 594
    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 595
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    .line 596
    if-le p1, v0, :cond_3d

    .line 597
    goto :goto_42

    .line 598
    :cond_3d
    if-ge p1, v1, :cond_41

    .line 599
    move v0, v1

    goto :goto_42

    .line 601
    :cond_41
    move v0, p1

    .line 603
    :goto_42
    return v0

    .line 589
    :cond_43
    :goto_43
    const/4 p1, 0x0

    return p1
.end method

.method private f(I)V
    .registers 3

    .line 722
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 723
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 724
    return-void
.end method

.method private y()Z
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k()I

    move-result v0

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 269
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 268
    :goto_1d
    return v1
.end method

.method private z()V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_22

    .line 280
    :cond_9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;)V

    .line 346
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    .line 347
    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 350
    :cond_21
    return-void

    .line 278
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V

    .line 477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 478
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    :cond_11
    return-void
.end method

.method public a(I)V
    .registers 4

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSeekProgress-percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Progress"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 616
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 617
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 619
    :cond_25
    return-void
.end method

.method public a(II)V
    .registers 5

    .line 538
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 539
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result p1

    .line 542
    :cond_9
    if-gtz p1, :cond_c

    .line 543
    return-void

    .line 545
    :cond_c
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q:I

    .line 546
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2c

    .line 549
    :cond_25
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    goto :goto_2e

    .line 547
    :cond_2c
    :goto_2c
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    .line 551
    :goto_2e
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(II)V

    .line 552
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 684
    return-void
.end method

.method public a(JJ)V
    .registers 5

    .line 632
    return-void
.end method

.method a(Landroid/content/Context;Landroid/view/View;)V
    .registers 9

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 369
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    const-string v2, "0"

    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 373
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    const/4 v5, 0x0

    if-ne v3, v4, :cond_23

    const/high16 v3, 0x180000

    if-lt v2, v3, :cond_21

    goto :goto_23

    :cond_21
    move v2, v5

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 375
    :goto_24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A()Z

    move-result v3

    const-string v4, "NewLiveViewLayout"

    if-nez v3, :cond_4b

    if-eqz v2, :cond_4b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->s()Z

    move-result v2

    if-eqz v2, :cond_4b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4b

    .line 376
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    .line 377
    const-string v3, "use TextureView......"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 379
    :cond_4b
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;-><init>(Landroid/content/Context;)V

    .line 380
    const-string v3, "use SurfaceView......"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_57
    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_71

    .line 383
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 384
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 385
    move-object v4, p2

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 386
    const/high16 v3, -0x1000000

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 388
    :cond_71
    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 389
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    .line 391
    const-string v2, "tt_video_play"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    .line 392
    const-string v2, "tt_video_progress"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    .line 393
    const-string v2, "tt_video_loading_retry_layout"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    .line 394
    const-string v2, "tt_video_loading_progress"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    .line 395
    const-string v2, "tt_video_loading_cover_image"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    .line 397
    const-string v2, "tt_video_ad_cover"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    .line 398
    const-string v2, "tt_video_draw_layout_viewStub"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NativeVideoLayout**findViews use time :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "useTime"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 932
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 933
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 934
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V

    .line 936
    :cond_e
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 2

    .line 1004
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 901
    return-void

    .line 903
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 904
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 905
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V

    .line 907
    :cond_17
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .registers 12

    .line 911
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 912
    return-void

    .line 914
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 915
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V

    .line 917
    :cond_19
    return-void
.end method

.method a(Landroid/view/View;Landroid/content/Context;)V
    .registers 4

    .line 405
    if-eqz p1, :cond_6e

    if-eqz p2, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz v0, :cond_13

    goto :goto_6e

    .line 407
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    .line 408
    const-string v0, "tt_video_ad_finish_cover_image"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    .line 409
    const-string v0, "tt_video_ad_cover_center_layout"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    .line 410
    const-string v0, "tt_video_ad_logo_image"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    .line 411
    const-string v0, "tt_video_btn_ad_image_tv"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    .line 412
    const-string v0, "tt_video_ad_name"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    .line 413
    const-string v0, "tt_video_ad_button"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    .line 414
    return-void

    .line 406
    :cond_6e
    :goto_6e
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 3

    .line 1058
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2

    .line 995
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 3

    .line 1079
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 1080
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_9

    .line 1081
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    .line 1083
    :cond_9
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    .line 733
    if-nez p1, :cond_3

    .line 734
    return-void

    .line 736
    :cond_3
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 737
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 738
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz p2, :cond_19

    .line 739
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 741
    :cond_19
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_20

    .line 742
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 746
    :cond_20
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 747
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/View;Landroid/content/Context;)V

    .line 748
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 749
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 750
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 751
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 752
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 753
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    if-eqz p2, :cond_5f

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_5f

    .line 754
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 757
    :cond_5f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz p2, :cond_6b

    .line 758
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    :cond_6b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_d7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p2, :cond_d7

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    if-eqz p2, :cond_d7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d7

    .line 772
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->e()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-static {v0, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/e/b;->a(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;)V

    goto :goto_d7

    .line 795
    :cond_a3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 796
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_d7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p2, :cond_d7

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    if-eqz p2, :cond_d7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d7

    .line 797
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 801
    :cond_d7
    :goto_d7
    nop

    .line 802
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e7

    .line 803
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object p2

    goto :goto_107

    .line 804
    :cond_e7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f6

    .line 805
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object p2

    goto :goto_107

    .line 806
    :cond_f6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_105

    .line 807
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object p2

    goto :goto_107

    .line 806
    :cond_105
    const-string p2, ""

    .line 811
    :goto_107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_165

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_165

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 814
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 816
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 817
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1a4

    .line 820
    :cond_156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1a4

    .line 825
    :cond_165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 826
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 827
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1a4

    .line 829
    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 831
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1a4

    .line 834
    :cond_196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 840
    :cond_1a4
    :goto_1a4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1b3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    :cond_1b3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 844
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 846
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object p2

    .line 847
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1e8

    .line 848
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    packed-switch p1, :pswitch_data_21a

    .line 856
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string p2, "tt_video_mobile_go_detail"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1e8

    .line 853
    :pswitch_1d7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 854
    goto :goto_1e8

    .line 850
    :pswitch_1e0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 860
    :cond_1e8
    :goto_1e8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_1fd

    .line 861
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 866
    :cond_1fd
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    if-eqz p1, :cond_212

    .line 867
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 872
    :cond_212
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    if-nez p1, :cond_219

    .line 873
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f(I)V

    .line 876
    :cond_219
    return-void

    :pswitch_data_21a
    .packed-switch 0x4
        :pswitch_1e0
        :pswitch_1d7
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    .line 274
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V
    .registers 3

    .line 454
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_b

    .line 455
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 456
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p()V

    .line 458
    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 567
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 533
    return-void
.end method

.method public a(ZZ)V
    .registers 4

    .line 1022
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1023
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1024
    return-void
.end method

.method public a(ZZZ)V
    .registers 4

    .line 1008
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1009
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/16 p3, 0x8

    :goto_15
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1011
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/t;Z)Z
    .registers 5

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/t;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public a(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 946
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 947
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V

    .line 949
    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 1

    .line 525
    return-void
.end method

.method public b(II)V
    .registers 6

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 578
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_e

    if-lez p1, :cond_10

    .line 579
    :cond_e
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 581
    :cond_10
    if-eq p2, v2, :cond_16

    if-eq p2, v1, :cond_16

    if-lez p2, :cond_18

    .line 582
    :cond_16
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 584
    :cond_18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 955
    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 941
    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 921
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 922
    return-void

    .line 924
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 925
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 926
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V

    .line 928
    :cond_17
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1000
    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 1038
    return-void
.end method

.method public b(ZZ)V
    .registers 4

    .line 556
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_1d

    .line 557
    if-eqz p1, :cond_12

    .line 558
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v0, "tt_play_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 560
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v0, "tt_stop_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    :cond_1d
    :goto_1d
    return-void
.end method

.method public b(I)Z
    .registers 2

    .line 1033
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .registers 1

    .line 529
    return-void
.end method

.method public c(I)V
    .registers 3

    .line 1047
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w:I

    .line 1048
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1049
    return-void
.end method

.method public c(II)V
    .registers 3

    .line 608
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    .line 609
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    .line 610
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .registers 4

    .line 636
    if-nez p1, :cond_3

    .line 637
    return-void

    .line 639
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 640
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 641
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 643
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 644
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 645
    return-void
.end method

.method public c(Z)V
    .registers 4

    .line 503
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    .line 504
    const/4 v0, 0x1

    if-eqz p1, :cond_14

    .line 505
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz p1, :cond_c

    .line 506
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 508
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz p1, :cond_2d

    .line 509
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_2d

    .line 512
    :cond_14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 513
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 514
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 516
    :cond_21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz p1, :cond_2d

    .line 517
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 518
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 521
    :cond_2d
    :goto_2d
    return-void
.end method

.method public d()V
    .registers 4

    .line 653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->g(Landroid/view/View;)V

    .line 654
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->g(Landroid/view/View;)V

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_3e

    .line 657
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 658
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->g(Landroid/view/View;)V

    .line 659
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 663
    :cond_3e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 666
    :cond_4f
    return-void
.end method

.method public d(I)V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_d

    .line 498
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 500
    :cond_d
    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 727
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    .line 728
    return-void
.end method

.method public e()V
    .registers 3

    .line 678
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 679
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v()V

    .line 680
    return-void
.end method

.method public f()V
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/view/View;)V

    .line 896
    return-void
.end method

.method public g()V
    .registers 4

    .line 959
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 960
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 961
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 964
    :cond_d
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 965
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 966
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 968
    :cond_1d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_25

    .line 969
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_25
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 972
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 973
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 974
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 975
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 976
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 977
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 978
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    if-eqz v0, :cond_4e

    .line 979
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Z)V

    .line 981
    :cond_4e
    return-void
.end method

.method public h()Z
    .registers 2

    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .line 990
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    return v0
.end method

.method public j()V
    .registers 3

    .line 1028
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1029
    return-void
.end method

.method public k()Z
    .registers 2

    .line 1042
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    return v0
.end method

.method public l()V
    .registers 1

    .line 1062
    return-void
.end method

.method public m()Z
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method n()V
    .registers 10

    .line 155
    nop

    .line 156
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_8

    const-string v0, "embeded_ad"

    goto :goto_a

    :cond_8
    const-string v0, "embeded_ad_landingpage"

    .line 157
    :goto_a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_1a

    const-string v0, "draw_ad"

    goto :goto_1c

    :cond_1a
    const-string v0, "draw_ad_landingpage"

    .line 159
    :goto_1c
    const/4 v1, 0x6

    move-object v7, v0

    move v8, v1

    goto :goto_40

    .line 160
    :cond_20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 161
    nop

    .line 162
    const/4 v1, 0x7

    const-string v0, "rewarded_video"

    move-object v7, v0

    move v8, v1

    goto :goto_40

    .line 163
    :cond_2f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->f(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 164
    nop

    .line 165
    const/4 v1, 0x5

    const-string v0, "fullscreen_interstitial_ad"

    move-object v7, v0

    move v8, v1

    goto :goto_40

    .line 163
    :cond_3e
    move-object v7, v0

    move v8, v2

    .line 167
    :goto_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5c

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 169
    const/4 v1, 0x2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 199
    :cond_5c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z()V

    .line 201
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    .line 202
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->d(Z)V

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Z)V

    .line 204
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_87

    .line 207
    :cond_7d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 210
    :goto_87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->e(Z)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9e

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v3, :cond_9e

    .line 213
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 217
    :cond_9e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 218
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    .line 237
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->d(Z)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Z)V

    .line 249
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_cd

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_d2

    .line 252
    :cond_cd
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 254
    :goto_d2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->e(Z)V

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_e7

    .line 257
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 260
    :cond_e7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    if-eqz v0, :cond_f7

    .line 261
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    :cond_f7
    return-void
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    return-object v0
.end method

.method p()V
    .registers 6

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_3e

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    if-nez v0, :cond_3e

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 433
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/h;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/h;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    .line 434
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 435
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Lcom/bytedance/sdk/openadsdk/core/widget/h$b;)V

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoTrafficTipLayout use time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useTime"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_3e
    return-void
.end method

.method public q()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    if-eqz v0, :cond_8

    .line 448
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Z)V

    .line 450
    :cond_8
    return-void
.end method

.method r()Z
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-nez v0, :cond_d

    .line 469
    const-string v0, "NewLiveViewLayout"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    return v0

    .line 472
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public s()Landroid/view/View;
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    return-object v0
.end method

.method public t()V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->g(Landroid/view/View;)V

    .line 671
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->g(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 673
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 675
    :cond_1b
    return-void
.end method

.method public u()V
    .registers 5

    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_2e

    .line 696
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getView()Landroid/view/View;

    move-result-object v0

    .line 697
    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_26

    .line 698
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 699
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    .line 700
    check-cast v2, Landroid/view/ViewGroup;

    .line 701
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 702
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 703
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 706
    :cond_26
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 707
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 709
    :cond_2e
    return-void
.end method

.method v()V
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 713
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 714
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 715
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 716
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 717
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 718
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 719
    return-void
.end method

.method public w()V
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/view/View;)V

    .line 881
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/view/View;)V

    .line 882
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 883
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/view/View;)V

    .line 885
    :cond_11
    return-void
.end method

.method x()Z
    .registers 3

    .line 1075
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
