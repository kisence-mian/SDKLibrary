.class Lcom/kwad/sdk/draw/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 7

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/draw/c/a;->a(Lcom/kwad/sdk/draw/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/b;

    move-result-object p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/draw/c/a;->b(Lcom/kwad/sdk/draw/c/a;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    invoke-static {p1, v0}, Lcom/kwad/sdk/draw/c/a;->a(Lcom/kwad/sdk/draw/c/a;Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/draw/c/a;->c(Lcom/kwad/sdk/draw/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/c/a;->a(Lcom/kwad/sdk/draw/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    :cond_2d
    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/draw/c/a;->c()V

    goto :goto_38

    :cond_33
    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a$2;->a:Lcom/kwad/sdk/draw/c/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/draw/c/a;->d()V

    :goto_38
    return-void
.end method
