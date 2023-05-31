.class Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;
.super Lcom/kwad/sdk/contentalliance/detail/video/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 10

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Lcom/kwad/sdk/contentalliance/detail/video/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->e()J

    move-result-wide v2

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_18

    long-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    long-to-float v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    :cond_18
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onVideoPlayStart()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
