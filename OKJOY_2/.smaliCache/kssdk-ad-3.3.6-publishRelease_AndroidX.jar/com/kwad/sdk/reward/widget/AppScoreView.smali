.class public Lcom/kwad/sdk/reward/widget/AppScoreView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/reward/widget/AppScoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/reward/widget/AppScoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/widget/AppScoreView;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/widget/AppScoreView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$layout;->ksad_app_score:I

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/reward/widget/AppScoreView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_score_fourth:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/AppScoreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_score_fifth:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/widget/AppScoreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setScore(F)V
    .registers 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_16

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_yellow:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->b:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_yellow:I

    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4c

    :cond_16
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_28

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_yellow:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->b:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_half:I

    goto :goto_12

    :cond_28
    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_3a

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_yellow:I

    :goto_32
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->b:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_gray:I

    goto :goto_12

    :cond_3a
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_45

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_half:I

    goto :goto_32

    :cond_45
    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/kwad/sdk/reward/widget/AppScoreView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_app_score_gray:I

    goto :goto_32

    :cond_4c
    :goto_4c
    return-void
.end method
