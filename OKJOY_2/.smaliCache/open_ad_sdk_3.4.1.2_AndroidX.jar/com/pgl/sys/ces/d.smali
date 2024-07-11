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
    .registers 8

    const-class v0, Lcom/pgl/sys/ces/d;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sget-wide v3, Lcom/pgl/sys/ces/d;->c:J

    sub-long v3, v1, v3

    sget-wide v5, Lcom/pgl/sys/ces/d;->b:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3b

    const/4 v3, 0x0

    sput-boolean v3, Lcom/pgl/sys/ces/b;->d:Z

    sput v3, Lcom/pgl/sys/ces/d;->a:I

    sput-wide v1, Lcom/pgl/sys/ces/d;->c:J

    :cond_1b
    const/4 v1, 0x3

    if-ge v3, v1, :cond_3b

    sget-boolean v2, Lcom/pgl/sys/ces/b;->d:Z

    if-nez v2, :cond_2f

    sget v2, Lcom/pgl/sys/ces/d;->a:I

    if-ge v2, v1, :cond_2f

    invoke-static {p0}, Lcom/pgl/sys/ces/d;->b(Landroid/content/Context;)V

    sget v1, Lcom/pgl/sys/ces/d;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pgl/sys/ces/d;->a:I

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v1, v3, 0x1388

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/pgl/a/b/f;->a(J)V

    sget-boolean v1, Lcom/pgl/sys/ces/b;->d:Z
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3d

    if-eqz v1, :cond_1b

    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/pgl/sys/ces/c/b;

    invoke-static {}, Lcom/pgl/sys/ces/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pgl/sys/ces/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p0, v1}, Lcom/pgl/sys/ces/c/b;->a(II[B)V

    return-void
.end method
