.class public Lcom/pgl/sys/ces/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:J

.field public static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/pgl/sys/ces/d;->a:I

    const-wide/16 v0, 0xe10

    sput-wide v0, Lcom/pgl/sys/ces/d;->b:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pgl/sys/ces/d;->c:J

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 10

    const/4 v8, 0x3

    const/4 v0, 0x0

    const-class v1, Lcom/pgl/sys/ces/d;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-wide v4, Lcom/pgl/sys/ces/d;->c:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/pgl/sys/ces/d;->b:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3d

    const/4 v4, 0x0

    sput-boolean v4, Lcom/pgl/sys/ces/b;->h:Z

    const/4 v4, 0x0

    sput v4, Lcom/pgl/sys/ces/d;->a:I

    sput-wide v2, Lcom/pgl/sys/ces/d;->c:J

    :goto_1e
    if-ge v0, v8, :cond_3d

    sget-boolean v2, Lcom/pgl/sys/ces/b;->h:Z

    if-nez v2, :cond_31

    sget v2, Lcom/pgl/sys/ces/d;->a:I

    if-ge v2, v8, :cond_31

    invoke-static {p0}, Lcom/pgl/sys/ces/d;->b(Landroid/content/Context;)V

    sget v2, Lcom/pgl/sys/ces/d;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/pgl/sys/ces/d;->a:I

    :cond_31
    add-int/lit8 v2, v0, 0x1

    mul-int/lit16 v2, v2, 0x1388

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/pgl/a/b/f;->a(J)V

    sget-boolean v2, Lcom/pgl/sys/ces/b;->h:Z
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_42

    if-eqz v2, :cond_3f

    :cond_3d
    monitor-exit v1

    return-void

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x2

    new-instance v0, Lcom/pgl/sys/ces/c/b;

    invoke-static {}, Lcom/pgl/sys/ces/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pgl/sys/ces/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/pgl/sys/ces/c/b;->a(II[B)V

    return-void
.end method
