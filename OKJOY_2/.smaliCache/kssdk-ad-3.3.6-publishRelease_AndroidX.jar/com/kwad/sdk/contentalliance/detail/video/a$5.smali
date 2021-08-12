.class Lcom/kwad/sdk/contentalliance/detail/video/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$d;


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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;II)Z
    .registers 9

    const/4 p1, 0x4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_VIDEO_RENDERING_START\uff1aSTATE_PLAYING, TIME ELAPSED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f(Lcom/kwad/sdk/contentalliance/detail/video/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ea

    :cond_3b
    const/16 v0, 0x2bd

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x7

    if-ne p2, v0, :cond_7b

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result p1

    if-eq p1, v2, :cond_61

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result p1

    if-ne p1, v3, :cond_53

    goto :goto_61

    :cond_53
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PLAYING"

    goto :goto_6e

    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1, v3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PAUSED"

    :goto_6e
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    goto :goto_ea

    :cond_7b
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_c0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PLAYING"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result p1

    if-ne p1, v3, :cond_ea

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;I)I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PAUSED"

    goto/16 :goto_36

    :cond_c0
    const/16 p1, 0x2711

    if-ne p2, p1, :cond_c5

    goto :goto_ea

    :cond_c5
    const/16 p1, 0x321

    if-ne p2, p1, :cond_d3

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u89c6\u9891\u4e0d\u80fdseekTo\uff0c\u4e3a\u76f4\u64ad\u89c6\u9891"

    goto/16 :goto_36

    :cond_d3
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo \u2014\u2014> what\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto/16 :goto_32

    :cond_ea
    :goto_ea
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$5;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d(Lcom/kwad/sdk/contentalliance/detail/video/a;)Lcom/kwad/sdk/core/video/a/c;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/core/video/a/c;II)V

    const/4 p1, 0x1

    return p1
.end method
