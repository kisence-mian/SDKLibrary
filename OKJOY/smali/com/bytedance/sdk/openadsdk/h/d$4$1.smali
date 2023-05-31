.class Lcom/bytedance/sdk/openadsdk/h/d$4$1;
.super Ljava/lang/Thread;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/d$4;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/d$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/d$4;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 519
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$4$1;->a:Lcom/bytedance/sdk/openadsdk/h/d$4;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 523
    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_9

    .line 527
    :goto_5
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 528
    return-void

    .line 524
    :catch_9
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method
