.class public final Lcom/kwad/sdk/core/imageloader/utils/L;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\n%2$s"

.field private static volatile writeDebugLogs:Z = false

.field private static volatile writeLogs:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lcom/kwad/sdk/core/imageloader/utils/L;->writeDebugLogs:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static disableLogging()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->writeLogs(Z)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static enableLogging()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->writeLogs(Z)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    sget-boolean v0, Lcom/kwad/sdk/core/imageloader/utils/L;->writeLogs:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    array-length v0, p3

    if-lez v0, :cond_2e

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    if-nez p1, :cond_14

    :goto_e
    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_14
    if-nez v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%1$s\n%2$s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2e
    move-object v0, p2

    goto :goto_c
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static writeDebugLogs(Z)V
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/core/imageloader/utils/L;->writeDebugLogs:Z

    return-void
.end method

.method public static writeLogs(Z)V
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/core/imageloader/utils/L;->writeLogs:Z

    return-void
.end method
