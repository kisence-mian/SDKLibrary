.class final Lcom/mintegral/msdk/f/f$1;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/f/f;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/f/f;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 66
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 67
    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 68
    :cond_12
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;I)I

    .line 75
    :goto_19
    const-wide/32 v0, 0x186a0

    :try_start_1c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_38
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    invoke-static {v0}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;)Z

    .line 80
    :goto_24
    return-void

    .line 69
    :cond_25
    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 70
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;I)I

    goto :goto_19

    .line 72
    :cond_30
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;I)I

    goto :goto_19

    .line 77
    :catch_38
    move-exception v0

    :try_start_39
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    invoke-static {v0}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;)Z

    goto :goto_24

    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/mintegral/msdk/f/f$1;->a:Lcom/mintegral/msdk/f/f;

    invoke-static {v1}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;)Z

    throw v0
.end method
