.class public Lcom/kwad/sdk/contentalliance/detail/photo/b/g;
.super Lcom/kwad/sdk/contentalliance/detail/photo/b/a;
.source ""


# instance fields
.field public g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

.field private h:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Lcom/kwad/sdk/contentalliance/detail/photo/d/b;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->h:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/LinearLayout;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/f;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/f;-><init>(Landroid/content/Context;)V

    const-string v1, "ksad_func_button_photo_share"

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/f;->setButtonImageResource(Ljava/lang/String;)V

    const-string v1, "\u590d\u5236\u94fe\u63a5"

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/f;->setButtonText(Ljava/lang/String;)V

    return-object v0
.end method

.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->e:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    iget-object v1, v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->h:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->a()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/c/f/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    return-void
.end method

.method protected j()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->h:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->i:Z

    if-eqz v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRequesting= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoShareButtonPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->i:Z

    new-instance v1, Lcom/kwad/sdk/protocol/model/AdScene;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->c()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/protocol/model/AdScene;-><init>(J)V

    new-instance v0, Lcom/kwad/sdk/core/request/i;

    invoke-direct {v0}, Lcom/kwad/sdk/core/request/i;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v2}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->b()J

    move-result-wide v2

    new-instance v4, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;

    invoke-direct {v4, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/request/i;->a(Lcom/kwad/sdk/protocol/model/AdScene;JLcom/kwad/sdk/core/request/i$c;)V

    goto :goto_4
.end method
