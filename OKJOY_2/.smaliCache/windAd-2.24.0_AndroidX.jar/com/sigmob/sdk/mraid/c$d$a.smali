.class Lcom/sigmob/sdk/mraid/c$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/Runnable;


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$d$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c$d$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c$d$a;->b:Ljava/lang/Runnable;

    return-void
.end method
