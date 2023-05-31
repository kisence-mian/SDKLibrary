.class Lcom/sigmob/sdk/videoAd/k$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->y()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$12;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$12;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->e(Lcom/sigmob/sdk/videoAd/k;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$12;->a:Lcom/sigmob/sdk/videoAd/k;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$12;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;IZ)V

    return-void
.end method
