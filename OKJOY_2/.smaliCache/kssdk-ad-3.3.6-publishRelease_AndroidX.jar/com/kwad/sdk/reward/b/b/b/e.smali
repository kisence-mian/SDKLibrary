.class public Lcom/kwad/sdk/reward/b/b/b/e;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/kwad/sdk/widget/AnimatedImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private j:Lcom/kwad/sdk/core/download/b/b;

.field private k:Ljava/lang/String;

.field private l:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/e$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/e$1;-><init>(Lcom/kwad/sdk/reward/b/b/b/e;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->l:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/e;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private a(JJ)V
    .registers 5

    sub-long/2addr p1, p3

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    if-gez p1, :cond_25

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->g:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/e;->l()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/kwad/sdk/R$string;->ksad_reward_success_tip:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/e;->n()V

    goto :goto_4d

    :cond_25
    if-nez p1, :cond_28

    return-void

    :cond_28
    iget-object p2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->g:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "s"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->g:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4d
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/e;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/reward/b/b/b/e;->a(JJ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->isEnable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->IMGOPTION_ENTRY:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    new-instance v2, Lcom/kwad/sdk/reward/b/b/b/e$2;

    invoke-direct {v2, p0, p1}, Lcom/kwad/sdk/reward/b/b/b/e$2;-><init>(Lcom/kwad/sdk/reward/b/b/b/e;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    return-void

    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->f:Lcom/kwad/sdk/widget/AnimatedImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_reward_icon_detail:I

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/widget/AnimatedImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/e;)Lcom/kwad/sdk/widget/AnimatedImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->f:Lcom/kwad/sdk/widget/AnimatedImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b/b/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/e;->m()V

    return-void
.end method

.method private e()V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->d:Landroid/widget/ImageView;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/e;->l()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_38

    :cond_36
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_38
    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->k(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    const-wide/16 v6, 0x0

    if-nez v0, :cond_62

    cmp-long v0, v4, v6

    if-lez v0, :cond_62

    cmp-long v0, v2, v6

    if-eqz v0, :cond_62

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_62
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/e;->l()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/kwad/sdk/R$string;->ksad_reward_default_tip:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->k:Ljava/lang/String;

    :cond_7c
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/e;->a(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/kwad/sdk/reward/b/b/b/e;->a(JJ)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v3, 0x29

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->e()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->j:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/e;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->l:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_count_down:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->c:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_sound_switch:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->b:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_close_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->d:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_container_new:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_detail_reward_icon_new:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/AnimatedImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->f:Lcom/kwad/sdk/widget/AnimatedImageView;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_count_down_new:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_detail_reward_tip_new:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->h:Landroid/widget/TextView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/e;->l:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->f:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0}, Lcom/kwad/sdk/widget/AnimatedImageView;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->e:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/e$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/e$3;-><init>(Lcom/kwad/sdk/reward/b/b/b/e;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/e;->j:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_14
    return-void
.end method
