.class public Lcom/kwad/sdk/reward/b/c/b/c;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/kwad/sdk/widget/AnimatedImageView;

.field private e:Lcom/kwad/sdk/widget/AnimatedImageView;

.field private f:Lcom/kwad/sdk/reward/a/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/c/b/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/c/b/c$1;-><init>(Lcom/kwad/sdk/reward/b/c/b/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->f:Lcom/kwad/sdk/reward/a/f;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/c/b/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/c;->e()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/widget/AnimatedImageView;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->isEnable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->IMGOPTION_ENTRY:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    new-instance v2, Lcom/kwad/sdk/reward/b/c/b/c$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/kwad/sdk/reward/b/c/b/c$2;-><init>(Lcom/kwad/sdk/reward/b/c/b/c;Ljava/lang/String;Lcom/kwad/sdk/widget/AnimatedImageView;)V

    invoke-static {p2, v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    return-void

    :cond_1c
    :goto_1c
    sget p2, Lcom/kwad/sdk/R$drawable;->ksad_reward_icon_end:I

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/widget/AnimatedImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/c/b/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/c;->m()V

    return-void
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-boolean v0, v0, Lcom/kwad/sdk/reward/a;->r:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget v3, v3, Lcom/kwad/sdk/reward/a;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    if-eqz v1, :cond_30

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/reward/b/c/b/c;->a(Lcom/kwad/sdk/widget/AnimatedImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/widget/AnimatedImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/widget/AnimatedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_30
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6f

    goto :goto_6c

    :cond_35
    iget-object v3, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    if-eqz v3, :cond_46

    invoke-direct {p0, v3, v0}, Lcom/kwad/sdk/reward/b/c/b/c;->a(Lcom/kwad/sdk/widget/AnimatedImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/widget/AnimatedImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/widget/AnimatedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_46
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6f

    :cond_4e
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    if-eqz v0, :cond_55

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/AnimatedImageView;->setVisibility(I)V

    :cond_55
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/AnimatedImageView;->setVisibility(I)V

    :cond_5c
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_68

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_68
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6f

    :goto_6c
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private m()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v3, 0x29

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/c;->f:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_reward_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->b:Landroid/view/ViewGroup;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_reward_icon:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->c:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_reward_icon_new_left:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/AnimatedImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_reward_icon_new_right:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/AnimatedImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/c;->f:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0}, Lcom/kwad/sdk/widget/AnimatedImageView;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-virtual {v0}, Lcom/kwad/sdk/widget/AnimatedImageView;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->c:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->d:Lcom/kwad/sdk/widget/AnimatedImageView;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->e:Lcom/kwad/sdk/widget/AnimatedImageView;

    if-ne p1, v0, :cond_20

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/b/c/b/c$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/c/b/c$3;-><init>(Lcom/kwad/sdk/reward/b/c/b/c;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/c/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_20
    return-void
.end method
