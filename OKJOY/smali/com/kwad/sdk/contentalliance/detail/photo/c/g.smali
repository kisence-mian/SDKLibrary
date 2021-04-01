.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/g;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# instance fields
.field private f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

.field private g:J

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->g:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->i:I

    return-void
.end method

.method private b(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const/high16 v2, 0x420c0000    # 35.0f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_20

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1a
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_20
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1a
.end method

.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->r(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->h:Z

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->h:Z

    if-eqz v1, :cond_3f

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->q(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->i:I

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->b(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->g:J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;->setAuthorId(J)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->i:I

    invoke-direct {p0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;->setAlignment(I)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->i:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->a(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3e
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_video_water_mark"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/g;->f:Lcom/kwad/sdk/contentalliance/watermark/WaterMarkView;

    return-void
.end method
