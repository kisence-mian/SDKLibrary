.class Lcom/sigmob/sdk/videoAd/k$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->r(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->s(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->v(Lcom/sigmob/sdk/videoAd/k;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->t(Lcom/sigmob/sdk/videoAd/k;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$14;->a:Lcom/sigmob/sdk/videoAd/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Z)V

    goto :goto_21
.end method
