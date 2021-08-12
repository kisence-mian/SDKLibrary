.class public Lcom/bytedance/sdk/openadsdk/utils/m;
.super Ljava/lang/Object;
.source "FreeSpaceHelper.java"


# static fields
.field public static volatile a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/m;->a:J

    return-void
.end method

.method public static a()V
    .registers 2

    .line 21
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/m;->a:J
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 23
    goto :goto_a

    .line 22
    :catchall_9
    move-exception v0

    .line 24
    :goto_a
    return-void
.end method
