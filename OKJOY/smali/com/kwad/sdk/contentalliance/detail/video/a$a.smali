.class Lcom/kwad/sdk/contentalliance/detail/video/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/video/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPrepared \u2014\u2014> STATE_PREPARED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/c$e;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c(Lcom/kwad/sdk/contentalliance/detail/video/a;)Lcom/kwad/sdk/c/h/d/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kwad/sdk/c/h/d/c$e;->a(Lcom/kwad/sdk/c/h/d/c;)V

    goto :goto_22

    :cond_38
    return-void
.end method
