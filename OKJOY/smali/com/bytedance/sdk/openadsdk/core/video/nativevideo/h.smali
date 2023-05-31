.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/e$b;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# instance fields
.field A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

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

.field private final M:Ljava/lang/String;

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
            "Ljava/util/EnumSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    .line 116
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    .line 128
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    .line 339
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Ljava/lang/String;

    .line 132
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    if-eqz v0, :cond_13

    .line 144
    :goto_12
    return-void

    .line 133
    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    .line 134
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 135
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    .line 136
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    .line 137
    if-nez p4, :cond_2c

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_2c
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    .line 138
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 139
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 140
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a()V

    .line 143
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n()V

    goto :goto_12
.end method

.method private A()Z
    .registers 3

    .prologue
    .line 343
    const-string v0, "C8817D"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "M5"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "R7t"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 343
    :goto_1f
    return v0

    .line 345
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private b(Landroid/view/View;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 398
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    .line 399
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 406
    :cond_14
    :goto_14
    return-void

    .line 401
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 403
    const-string v0, "tt_video_ad_cover_center_layout_draw"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    .line 404
    const-string v0, "tt_video_ad_button_draw"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    .line 405
    const-string v0, "tt_video_ad_replay"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    goto :goto_14
.end method

.method private e(I)I
    .registers 6

    .prologue
    .line 564
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    if-gtz v0, :cond_a

    .line 565
    :cond_8
    const/4 v0, 0x0

    .line 579
    :cond_9
    :goto_9
    return v0

    .line 567
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v2, "tt_video_container_maxheight"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v3, "tt_video_container_minheight"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 570
    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 571
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 572
    if-gt v2, v0, :cond_9

    .line 574
    if-ge v2, v1, :cond_41

    move v0, v1

    .line 575
    goto :goto_9

    :cond_41
    move v0, v2

    .line 577
    goto :goto_9
.end method

.method private f(I)V
    .registers 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 696
    return-void
.end method

.method private y()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()I

    move-result v1

    if-ne v1, v0, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 253
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 254
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_21

    .line 252
    :cond_20
    :goto_20
    return v0

    .line 254
    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private z()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    if-nez v0, :cond_a

    .line 332
    :cond_9
    :goto_9
    return-void

    .line 262
    :cond_a
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;)V

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V

    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    return-void
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 590
    const-string v0, "Progress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeekProgress-percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 592
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 593
    return-void
.end method

.method public a(II)V
    .registers 5

    .prologue
    .line 514
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result p1

    .line 518
    :cond_9
    if-gtz p1, :cond_c

    .line 528
    :goto_b
    return-void

    .line 521
    :cond_c
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q:I

    .line 522
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 523
    :cond_24
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    .line 527
    :goto_26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(II)V

    goto :goto_b

    .line 525
    :cond_2e
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    goto :goto_26
.end method

.method public a(J)V
    .registers 3

    .prologue
    .line 656
    return-void
.end method

.method public a(JJ)V
    .registers 5

    .prologue
    .line 604
    return-void
.end method

.method a(Landroid/content/Context;Landroid/view/View;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x2

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 351
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_df

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 355
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_1e

    const/high16 v1, 0x180000

    if-lt v0, v1, :cond_e3

    :cond_1e
    const/4 v0, 0x1

    .line 357
    :goto_1f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A()Z

    move-result v1

    if-nez v1, :cond_e6

    if-eqz v0, :cond_e6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->r()Z

    move-result v0

    if-eqz v0, :cond_e6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e6

    .line 358
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    .line 359
    const-string v0, "NewLiveViewLayout"

    const-string v3, "use TextureView......"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_45
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_59

    .line 365
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v0, p2

    .line 367
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 369
    :cond_59
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    move-object v0, v1

    .line 370
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    .line 372
    const-string v0, "tt_video_play"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    .line 373
    const-string v0, "tt_video_progress"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    .line 374
    const-string v0, "tt_video_loading_retry_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    .line 375
    const-string v0, "tt_video_loading_progress"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    .line 376
    const-string v0, "tt_video_loading_cover_image"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    .line 378
    const-string v0, "tt_video_ad_cover"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    .line 379
    const-string v0, "tt_video_draw_layout_viewStub"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    .line 380
    const-string v0, "useTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeVideoLayout**findViews use time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void

    .line 353
    :cond_df
    const-string v0, "0"

    goto/16 :goto_c

    :cond_e3
    move v0, v2

    .line 355
    goto/16 :goto_1f

    .line 361
    :cond_e6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;-><init>(Landroid/content/Context;)V

    .line 362
    const-string v0, "NewLiveViewLayout"

    const-string v3, "use SurfaceView......"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .prologue
    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 905
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 906
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V

    .line 908
    :cond_e
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 974
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 872
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 879
    :cond_8
    :goto_8
    return-void

    .line 875
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 876
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 877
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V

    goto :goto_8
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .registers 11

    .prologue
    .line 883
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 889
    :cond_8
    :goto_8
    return-void

    .line 886
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V

    goto :goto_8
.end method

.method a(Landroid/view/View;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 386
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 395
    :cond_14
    :goto_14
    return-void

    .line 388
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    .line 389
    const-string v0, "tt_video_ad_finish_cover_image"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    .line 390
    const-string v0, "tt_video_ad_cover_center_layout"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    .line 391
    const-string v0, "tt_video_ad_logo_image"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    .line 392
    const-string v0, "tt_video_btn_ad_image_tv"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    .line 393
    const-string v0, "tt_video_ad_name"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    .line 394
    const-string v0, "tt_video_ad_button"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    goto :goto_14
.end method

.method public a(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 1028
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 965
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 3

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 1050
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_b

    .line 1051
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    .line 1053
    :cond_b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 705
    if-nez p1, :cond_7

    .line 848
    :cond_6
    :goto_6
    return-void

    .line 708
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    invoke-virtual {p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 709
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 711
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 713
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    .line 714
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 718
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 719
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/View;Landroid/content/Context;)V

    .line 720
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 721
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 722
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 723
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 724
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 725
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_64

    .line 726
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 729
    :cond_64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz v0, :cond_72

    .line 730
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    :cond_72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 744
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$6;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;)V

    .line 773
    :cond_ab
    :goto_ab
    const-string v0, ""

    .line 774
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a1

    .line 775
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->A()Ljava/lang/String;

    move-result-object v0

    .line 783
    :cond_bb
    :goto_bb
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d1

    .line 784
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 785
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 786
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 788
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 789
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 812
    :cond_10a
    :goto_10a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_119

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_119

    .line 813
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 818
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    packed-switch v0, :pswitch_data_234

    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v1, "tt_video_mobile_go_detail"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    :goto_132
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_149

    .line 833
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 838
    :cond_149
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    if-eqz v1, :cond_160

    .line 839
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 844
    :cond_160
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    if-nez v0, :cond_6

    .line 845
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f(I)V

    goto/16 :goto_6

    .line 767
    :cond_169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 768
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 769
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_ab

    .line 776
    :cond_1a1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b1

    .line 777
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bb

    .line 778
    :cond_1b1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 779
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->K()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bb

    .line 792
    :cond_1c1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_10a

    .line 797
    :cond_1d1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10a

    .line 798
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 799
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 800
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_10a

    .line 801
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v1

    if-eqz v1, :cond_205

    .line 803
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_10a

    .line 806
    :cond_205
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_10a

    .line 820
    :pswitch_215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v1, "tt_video_download_apk"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_132

    .line 823
    :pswitch_21f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v1, "tt_video_dial_phone"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_132

    .line 827
    :pswitch_229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v1, "tt_video_mobile_go_detail"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_132

    .line 818
    nop

    :pswitch_data_234
    .packed-switch 0x2
        :pswitch_229
        :pswitch_229
        :pswitch_215
        :pswitch_21f
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V
    .registers 3

    .prologue
    .line 435
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_b

    .line 436
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 437
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p()V

    .line 439
    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 543
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 509
    return-void
.end method

.method public a(ZZ)V
    .registers 6

    .prologue
    const/16 v1, 0x8

    .line 992
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    :goto_7
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 993
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 994
    return-void

    :cond_10
    move v0, v1

    .line 992
    goto :goto_7
.end method

.method public a(ZZZ)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 978
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 979
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_16

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_16

    :goto_12
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 981
    return-void

    .line 979
    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/r;)Z
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(ILcom/bytedance/sdk/openadsdk/core/d/r;)Z

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

.method public a(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .prologue
    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 918
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 919
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V

    .line 921
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 501
    return-void
.end method

.method public b(II)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 554
    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_e

    if-lez p1, :cond_10

    .line 555
    :cond_e
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 557
    :cond_10
    if-eq p2, v2, :cond_16

    if-eq p2, v1, :cond_16

    if-lez p2, :cond_18

    .line 558
    :cond_16
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 560
    :cond_18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .prologue
    .line 927
    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .prologue
    .line 913
    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 893
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_9

    .line 900
    :cond_8
    :goto_8
    return-void

    .line 896
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 897
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 898
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V

    goto :goto_8
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 970
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 1008
    return-void
.end method

.method public b(ZZ)V
    .registers 6

    .prologue
    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 533
    if-eqz p1, :cond_14

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v2, "tt_play_movebar_textpage"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    :cond_13
    :goto_13
    return-void

    .line 536
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v2, "tt_stop_movebar_textpage"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13
.end method

.method public b(I)Z
    .registers 3

    .prologue
    .line 1003
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 505
    return-void
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 1017
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w:I

    .line 1018
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 1019
    return-void
.end method

.method public c(II)V
    .registers 3

    .prologue
    .line 584
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    .line 585
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    .line 586
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 608
    if-nez p1, :cond_3

    .line 617
    :goto_2
    return-void

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 613
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 615
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    goto :goto_2
.end method

.method public c(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 481
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    .line 482
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_1b

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_11

    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 486
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_1a

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 497
    :cond_1a
    :goto_1a
    return-void

    .line 490
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_24

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 493
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_1a

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_1a
.end method

.method public d()V
    .registers 4

    .prologue
    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 626
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_40

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 635
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 638
    :cond_4f
    return-void
.end method

.method public d(I)V
    .registers 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_f

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 478
    :cond_f
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    .line 700
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 650
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 651
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v()V

    .line 652
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 868
    return-void
.end method

.method public g()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 931
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 932
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 934
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 935
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 936
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 938
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 939
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 941
    :cond_25
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 942
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 943
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 944
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 945
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 946
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 947
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 948
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_50

    .line 949
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    .line 951
    :cond_50
    return-void
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 955
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    return v0
.end method

.method public j()V
    .registers 3

    .prologue
    .line 998
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 999
    return-void
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    return v0
.end method

.method public l()V
    .registers 1

    .prologue
    .line 1032
    return-void
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method n()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 151
    .line 152
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_b7

    const-string v0, "embeded_ad"

    .line 153
    :goto_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 154
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_bb

    const-string v0, "draw_ad"

    .line 155
    :goto_16
    const/4 v5, 0x6

    move-object v4, v0

    .line 163
    :goto_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v1, 0x2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 195
    :cond_36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z()V

    .line 197
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Z)V

    .line 199
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_db

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 204
    :goto_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_6d

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 211
    :cond_6d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 212
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Z)V

    .line 233
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_e2

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 238
    :goto_8d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Z)V

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_a4

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 244
    :cond_a4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    if-eqz v0, :cond_b6

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    :cond_b6
    return-void

    .line 152
    :cond_b7
    const-string v0, "embeded_ad_landingpage"

    goto/16 :goto_8

    .line 154
    :cond_bb
    const-string v0, "draw_ad_landingpage"

    goto/16 :goto_16

    .line 156
    :cond_bf
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 157
    const-string v0, "rewarded_video"

    .line 158
    const/4 v5, 0x7

    move-object v4, v0

    goto/16 :goto_18

    .line 159
    :cond_cd
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 160
    const-string v0, "fullscreen_interstitial_ad"

    .line 161
    const/4 v5, 0x5

    move-object v4, v0

    goto/16 :goto_18

    .line 202
    :cond_db
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto/16 :goto_52

    .line 236
    :cond_e2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_8d

    :cond_e8
    move-object v4, v0

    move v5, v6

    goto/16 :goto_18
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    return-object v0
.end method

.method p()V
    .registers 7

    .prologue
    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_41

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-nez v0, :cond_41

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 414
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/e;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    .line 415
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 416
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Lcom/bytedance/sdk/openadsdk/core/widget/e$b;)V

    .line 417
    const-string v2, "useTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoTrafficTipLayout use time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_41
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    .line 431
    :cond_a
    return-void
.end method

.method r()Z
    .registers 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-nez v0, :cond_d

    .line 450
    const-string v0, "NewLiveViewLayout"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public s()Landroid/view/View;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    return-object v0
.end method

.method public t()V
    .registers 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 647
    :cond_19
    return-void
.end method

.method public u()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xe
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_30

    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 669
    instance-of v0, v1, Landroid/view/TextureView;

    if-eqz v0, :cond_28

    .line 670
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 671
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_28

    .line 672
    check-cast v0, Landroid/view/ViewGroup;

    .line 673
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 674
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 675
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 678
    :cond_28
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 679
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 681
    :cond_30
    return-void
.end method

.method v()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 685
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 686
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 689
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 690
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 691
    return-void
.end method

.method public w()V
    .registers 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 853
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 854
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 855
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 857
    :cond_13
    return-void
.end method

.method x()Z
    .registers 3

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
