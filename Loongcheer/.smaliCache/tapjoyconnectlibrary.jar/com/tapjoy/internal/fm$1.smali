.class final Lcom/tapjoy/internal/fm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tapjoy/internal/fm;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fm;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/tapjoy/internal/fm$1;->b:Lcom/tapjoy/internal/fm;

    iput-object p2, p0, Lcom/tapjoy/internal/fm$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fm$1;->b:Lcom/tapjoy/internal/fm;

    invoke-static {}, Lcom/tapjoy/internal/fm;->b()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fm;->a(Lcom/tapjoy/internal/fm;Landroid/app/Application;)Landroid/app/Application;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_11
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    .line 114
    :goto_9
    iget-object v0, p0, Lcom/tapjoy/internal/fm$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    return-void

    .line 114
    :catchall_f
    move-exception v0

    goto :goto_1c

    .line 111
    :catch_11
    move-exception v0

    .line 112
    :try_start_12
    const-string v1, "Tapjoy.ActivityTracker"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    goto :goto_9

    .line 114
    :goto_1c
    iget-object v1, p0, Lcom/tapjoy/internal/fm$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    goto :goto_23

    :goto_22
    throw v0

    :goto_23
    goto :goto_22
.end method
