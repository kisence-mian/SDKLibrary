.class Lcom/bytedance/sdk/openadsdk/i/d$4$1;
.super Ljava/lang/Thread;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/d$4;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/d$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/d$4;Ljava/lang/Runnable;)V
    .registers 3

    .line 520
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$4$1;->a:Lcom/bytedance/sdk/openadsdk/i/d$4;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 524
    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 527
    goto :goto_a

    .line 525
    :catchall_6
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 528
    :goto_a
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 529
    return-void
.end method
