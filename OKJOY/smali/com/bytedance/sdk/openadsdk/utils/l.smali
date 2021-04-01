.class public Lcom/bytedance/sdk/openadsdk/utils/l;
.super Ljava/lang/Object;
.source "FreeSpaceHelper.java"


# static fields
.field public static volatile a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/l;->a:J

    return-void
.end method

.method public static a()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 21
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/l;->a:J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 24
    :goto_8
    return-void

    .line 22
    :catch_9
    move-exception v0

    goto :goto_8
.end method
