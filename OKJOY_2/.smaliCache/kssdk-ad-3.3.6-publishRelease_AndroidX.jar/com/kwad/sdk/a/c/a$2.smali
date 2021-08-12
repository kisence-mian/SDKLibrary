.class Lcom/kwad/sdk/a/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/view/b;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/c/a$2;->a:Lcom/kwad/sdk/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 6

    iget-object p1, p0, Lcom/kwad/sdk/a/c/a$2;->a:Lcom/kwad/sdk/a/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/c/a;->a(Lcom/kwad/sdk/a/c/a;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/kwad/sdk/a/c/a$2;->a:Lcom/kwad/sdk/a/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/c/a;->b(Lcom/kwad/sdk/a/c/a;)Lcom/kwad/sdk/core/view/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/view/b;->d()Z

    move-result p1

    if-eqz p1, :cond_35

    new-instance p1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a$2;->a:Lcom/kwad/sdk/a/c/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/c/a;->c(Lcom/kwad/sdk/a/c/a;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a$2;->a:Lcom/kwad/sdk/a/c/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/c/a;->d(Lcom/kwad/sdk/a/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    iget-object p1, p0, Lcom/kwad/sdk/a/c/a$2;->a:Lcom/kwad/sdk/a/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/a/c/a;->d(Lcom/kwad/sdk/a/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    :cond_35
    return-void
.end method
