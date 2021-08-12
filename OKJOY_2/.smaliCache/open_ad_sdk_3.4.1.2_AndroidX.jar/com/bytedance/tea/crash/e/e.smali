.class public Lcom/bytedance/tea/crash/e/e;
.super Ljava/lang/Object;
.source "LogcatDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/e/e$b;,
        Lcom/bytedance/tea/crash/e/e$a;
    }
.end annotation


# direct methods
.method private static a(I)Ljava/lang/String;
    .registers 7

    .line 146
    const-string v0, "*:V"

    const-string v1, "*:D"

    const-string v2, "*:I"

    const-string v3, "*:W"

    const-string v4, "*:E"

    const-string v5, "*:F"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 147
    if-ltz p0, :cond_18

    const/4 v1, 0x6

    if-ge p0, v1, :cond_18

    .line 148
    aget-object p0, v0, p0

    return-object p0

    .line 150
    :cond_18
    const-string p0, "*:V"

    return-object p0
.end method

.method public static a(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    nop

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 65
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-t"

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {p1}, Lcom/bytedance/tea/crash/e/e;->a(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    .line 67
    const/4 p0, 0x0

    :try_start_22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 68
    new-instance p1, Lcom/bytedance/tea/crash/e/e$a;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/bytedance/tea/crash/e/e$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/e$a;->start()V

    .line 69
    new-instance p1, Lcom/bytedance/tea/crash/e/e$a;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/bytedance/tea/crash/e/e$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/e$a;->start()V

    .line 70
    new-instance p1, Lcom/bytedance/tea/crash/e/e$b;

    const-wide/16 v1, 0xbb8

    invoke-direct {p1, p0, v1, v2}, Lcom/bytedance/tea/crash/e/e$b;-><init>(Ljava/lang/Process;J)V

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/e$b;->start()V

    .line 73
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_58

    .line 74
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, p1}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_5b

    .line 76
    :cond_58
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_5e

    .line 81
    :goto_5b
    if-eqz p0, :cond_67

    .line 82
    goto :goto_64

    .line 78
    :catchall_5e
    move-exception p1

    .line 79
    :try_start_5f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_68

    .line 81
    if-eqz p0, :cond_67

    .line 82
    :goto_64
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 85
    :cond_67
    return-object v0

    .line 81
    :catchall_68
    move-exception p1

    if-eqz p0, :cond_6e

    .line 82
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_6e
    throw p1
.end method
