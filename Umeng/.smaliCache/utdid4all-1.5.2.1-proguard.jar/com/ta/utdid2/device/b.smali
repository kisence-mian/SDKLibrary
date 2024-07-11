.class public Lcom/ta/utdid2/device/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/utdid2/device/a;

.field static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/b;->d:Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/ta/utdid2/device/a;)J
    .registers 5

    .line 17
    if-eqz p0, :cond_4c

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getImsi()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->e()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 18
    const-string p0, "%s%s%s%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 23
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 29
    :cond_4c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .registers 7

    .line 39
    if-eqz p0, :cond_54

    .line 40
    sget-object v0, Lcom/ta/utdid2/device/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_5
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/utdid2/device/c;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 44
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_26
    new-instance v2, Lcom/ta/utdid2/device/a;

    invoke-direct {v2}, Lcom/ta/utdid2/device/a;-><init>()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 49
    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {v2, v5}, Lcom/ta/utdid2/device/a;->d(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v5}, Lcom/ta/utdid2/device/a;->b(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/device/a;->b(J)V

    .line 54
    invoke-virtual {v2, p0}, Lcom/ta/utdid2/device/a;->c(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v1}, Lcom/ta/utdid2/device/a;->e(Ljava/lang/String;)V

    .line 56
    invoke-static {v2}, Lcom/ta/utdid2/device/b;->a(Lcom/ta/utdid2/device/a;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/device/a;->a(J)V

    .line 57
    monitor-exit v0

    return-object v2

    .line 59
    :cond_4f
    monitor-exit v0

    goto :goto_54

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw p0

    .line 61
    :cond_54
    :goto_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .registers 3

    const-class v0, Lcom/ta/utdid2/device/b;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v1, :cond_9

    .line 69
    monitor-exit v0

    return-object v1

    .line 71
    :cond_9
    if-eqz p0, :cond_13

    .line 72
    :try_start_b
    invoke-static {p0}, Lcom/ta/utdid2/device/b;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;

    move-result-object p0

    .line 73
    sput-object p0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_16

    .line 74
    monitor-exit v0

    return-object p0

    .line 76
    :cond_13
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 67
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method
