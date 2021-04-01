.class Lcom/kwad/sdk/contentalliance/detail/video/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$d;


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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;II)Z
    .registers 9

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v0, 0x3

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_VIDEO_RENDERING_START\uff1aSTATE_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_5b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    if-eq v0, v3, :cond_34

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    if-ne v0, v2, :cond_4c

    :cond_34
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    goto :goto_1e

    :cond_4c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, v4}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_5b
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_9e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    if-ne v0, v4, :cond_7e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$e;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_9e
    const/16 v0, 0x2711

    if-eq p2, v0, :cond_1e

    const/16 v0, 0x321

    if-ne p2, v0, :cond_b1

    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u89c6\u9891\u4e0d\u80fdseekTo\uff0c\u4e3a\u76f4\u64ad\u89c6\u9891"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_b1
    invoke-static {}, Lcom/kwad/sdk/contentalliance/detail/video/a;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo \u2014\u2014> what\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method
