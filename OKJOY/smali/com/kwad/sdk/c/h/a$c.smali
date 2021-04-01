.class Lcom/kwad/sdk/c/h/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a$c;->a:Lcom/kwad/sdk/c/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$c;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$c;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;)Lcom/kwad/sdk/c/h/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a$c;->a:Lcom/kwad/sdk/c/h/a;

    invoke-interface {v0, v1, p2}, Lcom/kwad/sdk/c/h/b$a;->a(Lcom/kwad/sdk/c/h/b;I)V

    :cond_13
    return-void
.end method
