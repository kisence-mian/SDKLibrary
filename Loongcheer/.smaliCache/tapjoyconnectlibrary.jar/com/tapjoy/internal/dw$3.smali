.class final Lcom/tapjoy/internal/dw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lcom/tapjoy/internal/dw;->d()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/tapjoy/internal/dw;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/dw;->e()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/tapjoy/internal/dw;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/dw;->f()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method
