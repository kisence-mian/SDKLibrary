.class public final Lcom/sigmob/sdk/base/common/utils/v;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sigmob/sdk/base/common/utils/v;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    const-string v0, ""

    goto :goto_2b
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 6

    sget-boolean v0, Lcom/sigmob/sdk/base/common/utils/v;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 6

    sget-boolean v0, Lcom/sigmob/sdk/base/common/utils/v;->a:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p0, v0, p1, v1}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v0, Lcom/sigmob/sdk/base/common/utils/v;->a:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/sigmob/sdk/base/common/utils/u;->a(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Z)Z
    .registers 6

    sget-boolean v0, Lcom/sigmob/sdk/base/common/utils/v;->a:Z

    const-string v1, "Illegal argument"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/u;->a(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(ZLjava/lang/String;)Z
    .registers 6

    sget-boolean v0, Lcom/sigmob/sdk/base/common/utils/v;->a:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p0, v0, p1, v1}, Lcom/sigmob/sdk/base/common/utils/u;->a(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
