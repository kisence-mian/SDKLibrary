.class public final Lcom/tencent/bugly/proguard/y;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/y$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:I

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Ljava/lang/StringBuilder;

.field private static f:Z

.field private static g:Lcom/tencent/bugly/proguard/y$a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Z

.field private static n:Ljava/util/concurrent/ExecutorService;

.field private static o:I

.field private static final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    .line 33
    const/16 v0, 0x1400

    sput v0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->m:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    .line 50
    :try_start_14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    .line 53
    return-void

    .line 51
    :catchall_1e
    move-exception v0

    .line 54
    return-void
.end method

.method public static a(I)V
    .registers 3

    .line 131
    sget-object v0, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    sput p0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 133
    if-gez p0, :cond_b

    .line 134
    const/4 p0, 0x0

    sput p0, Lcom/tencent/bugly/proguard/y;->c:I

    goto :goto_11

    .line 135
    :cond_b
    const/16 v1, 0x2800

    if-le p0, v1, :cond_11

    .line 136
    sput v1, Lcom/tencent/bugly/proguard/y;->c:I

    .line 138
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/tencent/bugly/proguard/y;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->l:Z

    if-nez v1, :cond_78

    if-eqz p0, :cond_78

    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->a:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_7a

    if-nez v1, :cond_e

    goto :goto_78

    .line 108
    :cond_e
    :try_start_e
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/util/concurrent/ExecutorService;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    .line 111
    sput-object p0, Lcom/tencent/bugly/proguard/y;->j:Landroid/content/Context;

    .line 112
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    .line 113
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v1, Lcom/tencent/bugly/proguard/y;->h:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    sput-object p0, Lcom/tencent/bugly/proguard/y;->i:Ljava/lang/String;

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/y;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/buglylog_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/tencent/bugly/proguard/y;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/tencent/bugly/proguard/y;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/proguard/y;->k:Ljava/lang/String;

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/tencent/bugly/proguard/y;->o:I
    :try_end_71
    .catchall {:try_start_e .. :try_end_71} :catchall_72

    .line 121
    goto :goto_73

    .line 119
    :catchall_72
    move-exception p0

    .line 122
    :goto_73
    const/4 p0, 0x1

    :try_start_74
    sput-boolean p0, Lcom/tencent/bugly/proguard/y;->l:Z
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_7a

    .line 123
    monitor-exit v0

    return-void

    .line 105
    :cond_78
    :goto_78
    monitor-exit v0

    return-void

    .line 103
    :catchall_7a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/tencent/bugly/proguard/y;

    monitor-enter v0

    .line 176
    :try_start_3
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->l:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->a:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    if-nez v1, :cond_c

    goto :goto_2d

    .line 180
    :cond_c
    :try_start_c
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->m:Z

    if-eqz v1, :cond_1b

    .line 181
    sget-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tencent/bugly/proguard/y$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/bugly/proguard/y$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b

    .line 191
    :cond_1b
    sget-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tencent/bugly/proguard/y$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/bugly/proguard/y$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_27
    .catchall {:try_start_c .. :try_end_25} :catchall_2f

    .line 200
    monitor-exit v0

    return-void

    .line 198
    :catch_27
    move-exception p0

    .line 199
    :try_start_28
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 202
    :goto_2b
    monitor-exit v0

    return-void

    .line 177
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    .line 175
    :catchall_2f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 159
    if-nez p2, :cond_3

    .line 160
    return-void

    .line 162
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_b

    const-string v0, ""

    .line 164
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static a(Z)V
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LogUtil] Whether can record user log into native: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    sput-boolean p0, Lcom/tencent/bugly/proguard/y;->m:Z

    .line 149
    return-void
.end method

.method public static a()[B
    .registers 8

    .line 264
    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 265
    return-object v1

    .line 267
    :cond_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 268
    const-string v0, "[LogUtil] Get user log from native."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->b()Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_31

    .line 272
    const-string v4, "[LogUtil] Got user log from native: %d bytes"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    const-string v2, "BuglyNativeLog.txt"

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 276
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    sget-object v3, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    :try_start_39
    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    if-eqz v4, :cond_6a

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->d(Lcom/tencent/bugly/proguard/y$a;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 280
    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6a

    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6a

    .line 281
    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v4

    const/16 v5, 0x7800

    invoke-static {v4, v5, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_6a
    sget-object v2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7d

    .line 285
    sget-object v2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_39 .. :try_end_7e} :catchall_89

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BuglyLog.txt"

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 287
    :catchall_89
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    .line 85
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz v1, :cond_11

    .line 87
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    invoke-interface {v0}, Lcom/tencent/bugly/crashreport/a;->getLogFromNative()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_12

    return-object v0

    .line 93
    :cond_11
    goto :goto_1c

    .line 89
    :catchall_12
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 21
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 66
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz v1, :cond_11

    .line 68
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/crashreport/a;->appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_12

    return p0

    .line 74
    :cond_11
    goto :goto_1c

    .line 70
    :catchall_12
    move-exception p0

    .line 71
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v0, Lcom/tencent/bugly/proguard/y;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    int-to-long v1, v1

    .line 206
    sget-object v3, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0x7800

    if-le v3, v6, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_25
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v6, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_33

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_33
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_37
    sget-object v6, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v6, Lcom/tencent/bugly/proguard/y;->o:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u0001\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    sget-object p1, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    monitor-enter p1
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_ec

    .line 210
    :try_start_7f
    sget-object p2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    sget-object p0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sget p2, Lcom/tencent/bugly/proguard/y;->c:I
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_e5

    if-gt p0, p2, :cond_91

    .line 212
    :try_start_8e
    monitor-exit p1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_e9

    monitor-exit v0

    return-void

    .line 214
    :cond_91
    :try_start_91
    sget-boolean p0, Lcom/tencent/bugly/proguard/y;->f:Z
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_e5

    if-eqz p0, :cond_98

    .line 216
    :try_start_95
    monitor-exit p1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_e9

    monitor-exit v0

    return-void

    .line 219
    :cond_98
    :try_start_98
    sput-boolean v5, Lcom/tencent/bugly/proguard/y;->f:Z

    .line 220
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    if-nez p0, :cond_a8

    .line 222
    new-instance p0, Lcom/tencent/bugly/proguard/y$a;

    sget-object p2, Lcom/tencent/bugly/proguard/y;->k:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/y$a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    goto :goto_cf

    .line 223
    :cond_a8
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_ca

    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    sget-object p0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    int-to-long v5, p0

    add-long/2addr v1, v5

    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->b(Lcom/tencent/bugly/proguard/y$a;)J

    move-result-wide v5

    cmp-long p0, v1, v5

    if-lez p0, :cond_cf

    .line 226
    :cond_ca
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->c(Lcom/tencent/bugly/proguard/y$a;)Z

    .line 228
    :cond_cf
    :goto_cf
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    sget-object p2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tencent/bugly/proguard/y$a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e4

    .line 230
    sget-object p0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    sput-boolean v4, Lcom/tencent/bugly/proguard/y;->f:Z
    :try_end_e4
    .catchall {:try_start_98 .. :try_end_e4} :catchall_e5

    .line 235
    :cond_e4
    goto :goto_e6

    .line 233
    :catchall_e5
    move-exception p0

    .line 236
    :goto_e6
    :try_start_e6
    monitor-exit p1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e9

    monitor-exit v0

    return-void

    :catchall_e9
    move-exception p0

    :try_start_ea
    monitor-exit p1

    throw p0
    :try_end_ec
    .catchall {:try_start_ea .. :try_end_ec} :catchall_ec

    .line 204
    :catchall_ec
    move-exception p0

    monitor-exit v0

    throw p0
.end method
