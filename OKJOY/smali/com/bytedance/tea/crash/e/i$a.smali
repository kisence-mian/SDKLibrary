.class Lcom/bytedance/tea/crash/e/i$a;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    return-void
.end method

.method public static a()J
    .registers 4

    .prologue
    .line 42
    invoke-static {}, Lcom/bytedance/tea/crash/e/i;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 43
    const-wide/16 v0, 0x3e8

    invoke-static {}, Lcom/bytedance/tea/crash/e/i$a;->b()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/i;->a(J)J

    .line 46
    :cond_14
    invoke-static {}, Lcom/bytedance/tea/crash/e/i;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(J)J
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    sget-wide v0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 28
    sget-wide v0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    .line 38
    :goto_a
    return-wide v0

    .line 31
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 32
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 37
    :goto_17
    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    move-wide p0, v0

    :cond_1c
    sput-wide p0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    .line 38
    sget-wide v0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    goto :goto_a

    .line 33
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2e

    .line 34
    const-string v0, "_SC_CLK_TCK"

    invoke-static {v0, p0, p1}, Lcom/bytedance/tea/crash/e/i$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_17

    :cond_2e
    move-wide v0, p0

    goto :goto_17
.end method

.method private static a(Ljava/lang/String;J)J
    .registers 10

    .prologue
    .line 55
    :try_start_0
    const-string v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 57
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 58
    const-string v2, "libcore.io.Os"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 59
    const-string v3, "os"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    const-string v3, "sysconf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_47} :catch_49

    move-result-wide p1

    .line 65
    :goto_48
    return-wide p1

    .line 61
    :catch_49
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48
.end method

.method public static b()J
    .registers 2

    .prologue
    .line 50
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/i$a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
