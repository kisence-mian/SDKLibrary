.class Lcom/kwad/sdk/c/h/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a$d;->a:Lcom/kwad/sdk/c/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const-string v0, "DefaultAdVideoPlayer"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$d;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$d;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a$d;->a:Lcom/kwad/sdk/c/h/a;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/b$a;->c(Lcom/kwad/sdk/c/h/b;)V

    :cond_1a
    return-void
.end method
