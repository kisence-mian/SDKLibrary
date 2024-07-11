.class Lcom/sigmob/sdk/common/e/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/l$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/common/e/l$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
