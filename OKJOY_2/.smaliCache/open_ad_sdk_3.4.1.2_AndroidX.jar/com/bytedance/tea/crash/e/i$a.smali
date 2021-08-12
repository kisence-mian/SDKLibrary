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

    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    return-void
.end method

.method public static a()J
    .registers 4

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
    .registers 7

    .line 27
    sget-wide v0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 28
    return-wide v0

    .line 30
    :cond_9
    nop

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 32
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    goto :goto_25

    .line 33
    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_24

    .line 34
    const-string v0, "_SC_CLK_TCK"

    invoke-static {v0, p0, p1}, Lcom/bytedance/tea/crash/e/i$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_25

    .line 33
    :cond_24
    move-wide v0, p0

    .line 37
    :goto_25
    cmp-long v2, v0, v2

    if-lez v2, :cond_2a

    move-wide p0, v0

    :cond_2a
    sput-wide p0, Lcom/bytedance/tea/crash/e/i$a;->a:J

    .line 38
    return-wide p0
.end method

.method private static a(Ljava/lang/String;J)J
    .registers 10

    .line 55
    :try_start_0
    const-string v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

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

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    const-string v1, "sysconf"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    return-wide p0

    .line 61
    :catchall_46
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    return-wide p1
.end method

.method public static b()J
    .registers 2

    .line 50
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/i$a;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
