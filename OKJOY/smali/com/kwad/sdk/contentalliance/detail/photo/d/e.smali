.class public Lcom/kwad/sdk/contentalliance/detail/photo/d/e;
.super Lcom/kwad/sdk/contentalliance/detail/photo/d/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/photo/d/e$a;
    }
.end annotation


# instance fields
.field private h:J

.field private i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

.field private j:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    return-void
.end method

.method private m()J
    .registers 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v2, v2, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/c;->l(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1e

    :goto_12
    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->h:J

    invoke-static {v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e$a;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1d
    return-wide v0

    :cond_1e
    move-wide v0, v2

    goto :goto_12
.end method


# virtual methods
.method public bridge synthetic a()Landroid/widget/LinearLayout;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->a()Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/kwad/sdk/contentalliance/detail/photo/d/f;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->k(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->h:J

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->h:J

    invoke-static {v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e$a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    :goto_22
    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a(IJ)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2d
    const/4 v0, 0x1

    goto :goto_22
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->h()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->f:Landroid/widget/LinearLayout;

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->a()V

    return-void
.end method

.method public l()V
    .registers 8

    const/4 v4, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeState(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeCount(J)V

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->h:J

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e$a;->b(J)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3, v6, v6}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JII)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JII)V

    goto :goto_2a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const-wide/16 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeState(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeCount(J)V

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->h:J

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e$a;->c(J)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    invoke-virtual {v0, v5}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeState(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->i:Lcom/kwad/sdk/contentalliance/detail/photo/d/f;

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/d/f;->setLikeCount(J)V

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/e;->h:J

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/e$a;->b(J)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JII)V

    goto :goto_2a
.end method
