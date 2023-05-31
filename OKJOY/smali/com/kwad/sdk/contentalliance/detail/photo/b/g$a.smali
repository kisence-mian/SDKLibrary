.class Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V
    .registers 6
    .param p1    # Lcom/kwad/sdk/core/response/model/PhotoShareInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoad() shareUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoShareButtonPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->d(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ksadsdk_share_url"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->e(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u94fe\u63a5\u5df2\u7ecf\u590d\u5236\n\u5feb\u5206\u4eab\u7ed9\u597d\u53cb\u5427"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->c(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->c(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/b;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/c;)V

    :cond_49
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->a()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    iget-object v1, v1, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->d()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JZ)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->a(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;Z)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoShareButtonPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x186a7

    if-ne p1, v0, :cond_5d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->a(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kwad/sdk/e/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_31
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->c(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->c(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/b;->a(Lcom/kwad/sdk/contentalliance/detail/photo/d/c;)V

    :cond_44
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->a()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    iget-object v1, v1, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->g:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v4}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JZ)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0, v4}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->a(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;Z)Z

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/g$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;->b(Lcom/kwad/sdk/contentalliance/detail/photo/b/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u590d\u5236\u94fe\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31
.end method
