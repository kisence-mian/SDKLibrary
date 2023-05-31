.class Lcom/kwad/sdk/c/h/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/h/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a$e;->a:Lcom/kwad/sdk/c/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8

    const/16 v3, -0x26

    const/high16 v2, -0x80000000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError,what:--extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultAdVideoPlayer"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v3, :cond_37

    if-eq p2, v2, :cond_37

    if-eq p3, v3, :cond_37

    if-eq p3, v2, :cond_37

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$e;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$e;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a$e;->a:Lcom/kwad/sdk/c/h/a;

    invoke-interface {v0, v1, p2, p3}, Lcom/kwad/sdk/c/h/b$a;->a(Lcom/kwad/sdk/c/h/b;II)V

    :cond_37
    const/4 v0, 0x1

    return v0
.end method
