.class Lcom/kwad/sdk/c/h/e/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$h;


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

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;II)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->g(Lcom/kwad/sdk/c/h/e/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-le p3, p2, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->h(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/kwad/sdk/c/h/c;->a(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged \u2014\u2014> width\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c height\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSVideoPlayerViewView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
