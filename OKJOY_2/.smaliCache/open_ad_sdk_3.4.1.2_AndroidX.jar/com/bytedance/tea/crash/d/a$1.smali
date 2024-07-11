.class Lcom/bytedance/tea/crash/d/a$1;
.super Ljava/lang/Thread;
.source "CrashCatchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/tea/crash/d/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/tea/crash/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/d/a;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/bytedance/tea/crash/d/a$1;->a:Lcom/bytedance/tea/crash/d/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 48
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 51
    :try_start_3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 53
    :goto_8
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    rem-long/2addr v1, v3

    .line 54
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 55
    iget-object v1, p0, Lcom/bytedance/tea/crash/d/a$1;->a:Lcom/bytedance/tea/crash/d/a;

    invoke-static {v1}, Lcom/bytedance/tea/crash/d/a;->a(Lcom/bytedance/tea/crash/d/a;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    .line 56
    goto :goto_8

    .line 57
    :catchall_1c
    move-exception v0

    .line 59
    return-void
.end method
