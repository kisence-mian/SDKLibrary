.class public Lcom/kwad/sdk/reward/b/b/b/b;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private e:Lcom/kwad/sdk/core/download/b/b;

.field private f:J

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/b$1;-><init>(Lcom/kwad/sdk/reward/b/b/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->g:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/b;->e()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/b;->n()V

    return-void
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/b;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/b;->l()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v2, v4}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_38

    :cond_36
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_38
    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/b;->m()V

    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v2, 0x12

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method private n()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v3, 0x28

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->e:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->f:J

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/b;->g:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_call_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_close_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->c:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/b;->g:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/b$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/b$2;-><init>(Lcom/kwad/sdk/reward/b/b/b/b;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/b;->e:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_14
    return-void
.end method
