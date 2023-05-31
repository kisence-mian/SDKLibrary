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
    .registers 4

    .prologue
    .line 146
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*:V"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*:D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*:I"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*:W"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "*:E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "*:F"

    aput-object v2, v0, v1

    .line 147
    if-ltz p0, :cond_29

    array-length v1, v0

    if-ge p0, v1, :cond_29

    .line 148
    aget-object v0, v0, p0

    .line 150
    :goto_28
    return-object v0

    :cond_29
    const-string v0, "*:V"

    goto :goto_28
.end method

.method public static a(II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "logcat"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "-t"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/bytedance/tea/crash/e/e;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 67
    :try_start_21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 68
    new-instance v0, Lcom/bytedance/tea/crash/e/e$a;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/bytedance/tea/crash/e/e$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/e$a;->start()V

    .line 69
    new-instance v0, Lcom/bytedance/tea/crash/e/e$a;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/bytedance/tea/crash/e/e$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/e$a;->start()V

    .line 70
    new-instance v0, Lcom/bytedance/tea/crash/e/e$b;

    const-wide/16 v4, 0xbb8

    invoke-direct {v0, v1, v4, v5}, Lcom/bytedance/tea/crash/e/e$b;-><init>(Ljava/lang/Process;J)V

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/e$b;->start()V

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_5e

    .line 74
    const-wide/16 v4, 0xbb8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_58} :catch_62
    .catchall {:try_start_21 .. :try_end_58} :catchall_6c

    .line 81
    :goto_58
    if-eqz v1, :cond_5d

    .line 82
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 85
    :cond_5d
    :goto_5d
    return-object v2

    .line 76
    :cond_5e
    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_6c

    goto :goto_58

    .line 78
    :catch_62
    move-exception v0

    .line 79
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_6c

    .line 81
    if-eqz v1, :cond_5d

    .line 82
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_5d

    .line 81
    :catchall_6c
    move-exception v0

    if-eqz v1, :cond_72

    .line 82
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_72
    throw v0
.end method
