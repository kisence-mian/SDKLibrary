.class Lcom/kwad/sdk/c/h/e/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/h/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;II)Z
    .registers 9

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x6

    const/4 v1, 0x3

    if-ne p2, v1, :cond_23

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_VIDEO_RENDERING_START\uff1aSTATE_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0

    :cond_23
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_60

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v0

    if-eq v0, v3, :cond_37

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v0

    if-ne v0, v2, :cond_53

    :cond_37
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0, v2}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    goto :goto_21

    :cond_53
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0, v4}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_60
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_ac

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v0

    if-ne v0, v4, :cond_87

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v0

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0, v3}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_ac
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_dc

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->h(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/c;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$e;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->h(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/c;

    move-result-object v0

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/c;->setRotation(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u65cb\u8f6c\u89d2\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSVideoPlayerViewView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_dc
    const/16 v0, 0x321

    if-ne p2, v0, :cond_e9

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "\u89c6\u9891\u4e0d\u80fdseekTo\uff0c\u4e3a\u76f4\u64ad\u89c6\u9891"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo \u2014\u2014> what\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSVideoPlayerViewView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21
.end method
