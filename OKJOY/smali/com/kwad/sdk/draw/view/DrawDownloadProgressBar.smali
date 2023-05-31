.class public Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a:Landroid/content/Context;

    const-string v1, "ksad_draw_download_bar"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a:Landroid/content/Context;

    const-string v1, "ksad_download_progress"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->b:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->a:Landroid/content/Context;

    const-string v1, "ksad_download_progress_cover"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->c:Landroid/view/View;

    new-instance v1, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar$a;-><init>(Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .registers 5

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->getMax()I

    move-result v0

    if-ne p2, v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->b:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method public getMax()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->b:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public setTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->b:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawDownloadProgressBar;->b:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setTextDimen(F)V

    return-void
.end method
