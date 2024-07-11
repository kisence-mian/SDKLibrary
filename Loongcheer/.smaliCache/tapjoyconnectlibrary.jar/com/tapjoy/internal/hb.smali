.class public final Lcom/tapjoy/internal/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Lcom/tapjoy/internal/hb;

.field private static q:Lcom/tapjoy/internal/hb;

.field private static w:Landroid/os/Handler;

.field private static x:Ljava/io/File;


# instance fields
.field public final a:Lcom/tapjoy/internal/hj;

.field public b:Lcom/tapjoy/internal/hk;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Lcom/tapjoy/internal/he;

.field public g:Lcom/tapjoy/internal/ha;

.field public h:Lcom/tapjoy/internal/gz;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lcom/tapjoy/internal/hc;

.field private r:Z

.field private s:Z

.field private t:Lcom/tapjoy/internal/ho;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/tapjoy/internal/hb;

    invoke-direct {v0}, Lcom/tapjoy/internal/hb;-><init>()V

    .line 64
    sput-object v0, Lcom/tapjoy/internal/hb;->p:Lcom/tapjoy/internal/hb;

    sput-object v0, Lcom/tapjoy/internal/hb;->q:Lcom/tapjoy/internal/hb;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->c:Z

    .line 101
    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->r:Z

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->d:Ljava/lang/String;

    .line 107
    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->s:Z

    .line 122
    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->m:Z

    .line 948
    invoke-static {v1}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/gq;)Lcom/tapjoy/internal/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->o:Lcom/tapjoy/internal/hc;

    .line 125
    new-instance v0, Lcom/tapjoy/internal/hj;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hj;-><init>(Lcom/tapjoy/internal/hb;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hj;

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hb;)Landroid/content/Context;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/tapjoy/internal/hb;
    .registers 1

    .line 67
    sget-object v0, Lcom/tapjoy/internal/hb;->q:Lcom/tapjoy/internal/hb;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;
    .registers 2

    .line 1067
    sget-object v0, Lcom/tapjoy/internal/hb;->q:Lcom/tapjoy/internal/hb;

    .line 71
    nop

    .line 72
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 73
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 998
    if-eqz p1, :cond_3a

    .line 8067
    sget-object v0, Lcom/tapjoy/internal/hb;->q:Lcom/tapjoy/internal/hb;

    .line 999
    nop

    .line 1000
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 1001
    iget-object p0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {p0}, Lcom/tapjoy/internal/he;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 1002
    iget-object p0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    .line 8342
    monitor-enter p0

    .line 8343
    :try_start_17
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->d:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 8344
    iget-object v1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p1, v1, Lcom/tapjoy/internal/fi$a;->d:Ljava/lang/String;

    .line 8345
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3a

    .line 1004
    iget-object p0, v0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    .line 9083
    sget-object p1, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v0, "referrer"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object p1

    .line 9084
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    goto :goto_3a

    .line 8345
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1

    .line 1008
    :cond_3a
    :goto_3a
    return-void
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .registers 2

    .line 388
    const-string v0, "setGLSurfaceView: The given GLSurfaceView was null"

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 390
    return-void

    .line 392
    :cond_9
    invoke-static {p0}, Lcom/tapjoy/internal/gt;->a(Landroid/opengl/GLSurfaceView;)V

    .line 393
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 4

    const-class v0, Lcom/tapjoy/internal/hb;

    monitor-enter v0

    .line 961
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/hb;->w:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 962
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tapjoy/internal/hb;->w:Landroid/os/Handler;

    .line 964
    :cond_12
    sget-object v1, Lcom/tapjoy/internal/hb;->w:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 965
    monitor-exit v0

    return-void

    .line 960
    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JZ)Z
    .registers 6

    .line 358
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 359
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;JZ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 360
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;)V

    .line 361
    const/4 p1, 0x1

    return p1

    .line 363
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-class v0, Lcom/tapjoy/internal/hb;

    monitor-enter v0

    .line 971
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/hb;->x:Ljava/io/File;

    if-nez v1, :cond_10

    .line 972
    const-string v1, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/internal/hb;->x:Ljava/io/File;

    .line 974
    :cond_10
    sget-object p0, Lcom/tapjoy/internal/hb;->x:Ljava/io/File;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object p0

    .line 970
    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 978
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tapjoy/internal/hb;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "install"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private h()Z
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->t:Lcom/tapjoy/internal/ho;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ho;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 614
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hj;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->a()V

    .line 615
    sget-object v0, Lcom/tapjoy/internal/hv;->a:Lcom/tapjoy/internal/hv;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hv;->a()V

    .line 616
    const/4 v0, 0x1

    return v0

    .line 618
    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Z)Lcom/tapjoy/internal/fc;
    .registers 2

    .line 209
    if-eqz p1, :cond_7

    .line 210
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {p1}, Lcom/tapjoy/internal/he;->a()V

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {p1}, Lcom/tapjoy/internal/he;->b()Lcom/tapjoy/internal/fc;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 4

    .line 563
    const-string v0, "onActivityStart: The given activity was null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 564
    return-void

    .line 568
    :cond_9
    const-string v0, "onActivityStart"

    invoke-static {v0}, Lcom/tapjoy/internal/gy;->c(Ljava/lang/String;)Z

    .line 569
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/b;->a(Landroid/app/Application;)V

    .line 570
    invoke-static {p1}, Lcom/tapjoy/internal/b;->b(Landroid/app/Activity;)V

    .line 572
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 573
    return-void

    .line 576
    :cond_1f
    invoke-direct {p0}, Lcom/tapjoy/internal/hb;->h()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 577
    invoke-static {p1}, Lcom/tapjoy/internal/gv;->b(Landroid/app/Activity;)V

    .line 579
    :cond_28
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 479
    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/hb;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12b

    if-eqz v0, :cond_7

    .line 490
    monitor-exit p0

    return-void

    .line 492
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 494
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    const-string v2, "The given context was null"

    invoke-static {p1, v2}, Lcom/tapjoy/internal/gy;->a(ZLjava/lang/String;)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_12b

    if-nez p1, :cond_1d

    .line 495
    monitor-exit p0

    return-void

    .line 497
    :cond_1d
    nop

    .line 3115
    if-eqz p5, :cond_32

    :try_start_20
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x18

    if-ne p1, v2, :cond_32

    const-string p1, "[0-9a-f]{24}"

    invoke-virtual {p5, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 3116
    const/4 p1, 0x1

    goto :goto_3c

    .line 3118
    :cond_32
    const-string p1, "Invalid App ID: {}"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p5, v2, v1

    invoke-static {p1, v2}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_12b

    .line 3119
    const/4 p1, 0x0

    .line 497
    :goto_3c
    if-nez p1, :cond_40

    .line 498
    monitor-exit p0

    return-void

    .line 500
    :cond_40
    nop

    .line 3125
    if-eqz p6, :cond_55

    :try_start_43
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_55

    const-string p1, "[0-9A-Za-z\\-_]{20}"

    invoke-virtual {p6, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 3126
    const/4 p1, 0x1

    goto :goto_5f

    .line 3128
    :cond_55
    const-string p1, "Invalid App Key: {}"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p6, v2, v1

    invoke-static {p1, v2}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_12b

    .line 3129
    const/4 p1, 0x0

    .line 500
    :goto_5f
    if-nez p1, :cond_63

    .line 501
    monitor-exit p0

    return-void

    .line 503
    :cond_63
    :try_start_63
    iput-object p2, p0, Lcom/tapjoy/internal/hb;->k:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Lcom/tapjoy/internal/hb;->l:Ljava/lang/String;

    .line 505
    iput-object p5, p0, Lcom/tapjoy/internal/hb;->u:Ljava/lang/String;

    .line 506
    iput-object p6, p0, Lcom/tapjoy/internal/hb;->v:Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_12b

    .line 511
    :try_start_6b
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/net/MalformedURLException; {:try_start_6b .. :try_end_70} :catch_124
    .catchall {:try_start_6b .. :try_end_70} :catchall_12b

    .line 514
    nop

    .line 515
    :try_start_71
    const-string p2, "TapjoySDK"

    .line 516
    nop

    .line 4109
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p6, " "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; Android "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 516
    nop

    .line 517
    new-instance p3, Lcom/tapjoy/internal/bz;

    invoke-direct {p3, p2, p1}, Lcom/tapjoy/internal/bz;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 519
    nop

    .line 5104
    sput-object p3, Lcom/tapjoy/internal/bv;->b:Lcom/tapjoy/internal/by;

    .line 520
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 6094
    sput-object p1, Lcom/tapjoy/internal/bv;->a:Ljava/util/concurrent/ExecutorService;

    .line 521
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/gz;

    .line 6188
    iput-object p3, p1, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    .line 6189
    invoke-virtual {p1}, Lcom/tapjoy/internal/gz;->a()V

    .line 522
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p4, p1, v1

    .line 524
    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->j:Z

    .line 532
    nop

    .line 6556
    new-instance p1, Lcom/tapjoy/internal/hf;

    iget-object p2, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/tapjoy/internal/hb;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tapjoy/internal/hf;-><init>(Ljava/io/File;)V

    .line 6557
    nop

    .line 7019
    invoke-virtual {p1}, Lcom/tapjoy/internal/hf;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e7

    goto :goto_e8

    :cond_e7
    const/4 v0, 0x0

    .line 6557
    :goto_e8
    if-nez v0, :cond_fd

    invoke-virtual {p1}, Lcom/tapjoy/internal/hf;->a()Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 6558
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    .line 7078
    sget-object p2, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string p3, "install"

    invoke-virtual {p1, p2, p3}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object p2

    .line 7079
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 534
    :cond_fd
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    .line 7673
    invoke-static {p5}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11f

    .line 7676
    iget-object p2, p1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->D:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    .line 7678
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11f

    .line 7679
    iget-object p2, p1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->D:Lcom/tapjoy/internal/n;

    invoke-virtual {p2, p5}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 7680
    iget-object p1, p1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/hl;->a(Z)V

    .line 536
    :cond_11f
    invoke-virtual {p0}, Lcom/tapjoy/internal/hb;->b()V
    :try_end_122
    .catchall {:try_start_71 .. :try_end_122} :catchall_12b

    .line 537
    monitor-exit p0

    return-void

    .line 512
    :catch_124
    move-exception p1

    .line 513
    :try_start_125
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_12b
    .catchall {:try_start_125 .. :try_end_12b} :catchall_12b

    .line 478
    :catchall_12b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 238
    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/hb;->j:Z

    if-eqz v0, :cond_40

    .line 239
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->n:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 240
    move-object p1, v0

    .line 242
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->n:Ljava/lang/String;

    .line 243
    if-eqz p1, :cond_44

    .line 244
    nop

    .line 2252
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v0}, Lcom/tapjoy/internal/he;->b()Lcom/tapjoy/internal/fc;

    move-result-object v0

    .line 2253
    const-string v1, "GCM registration id of device {} updated for sender {}: {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/tapjoy/internal/fc;->d:Lcom/tapjoy/internal/fb;

    iget-object v4, v4, Lcom/tapjoy/internal/fb;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/internal/hb;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2255
    new-instance v1, Lcom/tapjoy/internal/in;

    invoke-direct {v1, v0, p1}, Lcom/tapjoy/internal/in;-><init>(Lcom/tapjoy/internal/fc;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/hb$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/hb$1;-><init>(Lcom/tapjoy/internal/hb;Ljava/lang/String;)V

    .line 3081
    sget-object p1, Lcom/tapjoy/internal/bv;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, p1}, Lcom/tapjoy/internal/bv;->a(Lcom/tapjoy/internal/ca;Ljava/util/concurrent/ExecutorService;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_46

    .line 244
    monitor-exit p0

    return-void

    .line 246
    :cond_40
    if-eqz p1, :cond_44

    .line 247
    :try_start_42
    iput-object p1, p0, Lcom/tapjoy/internal/hb;->n:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_46

    .line 249
    :cond_44
    monitor-exit p0

    return-void

    .line 237
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 653
    const-string v0, "skuDetails"

    const-string v1, "trackPurchase"

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 654
    return-void

    .line 658
    :cond_b
    :try_start_b
    new-instance v2, Lcom/tapjoy/internal/d;

    invoke-direct {v2, p1}, Lcom/tapjoy/internal/d;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_b1

    .line 662
    nop

    .line 663
    iget-object p1, v2, Lcom/tapjoy/internal/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/tapjoy/internal/gw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 664
    iget-object p1, v2, Lcom/tapjoy/internal/d;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/tapjoy/internal/gw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 665
    const-string v3, "insufficient fields"

    if-eqz v4, :cond_ad

    if-nez p1, :cond_25

    goto/16 :goto_ad

    .line 669
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_32

    .line 670
    const-string p1, "invalid currency code"

    invoke-static {v1, v0, p1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void

    .line 673
    :cond_32
    invoke-static {p2}, Lcom/tapjoy/internal/gw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 674
    invoke-static {p3}, Lcom/tapjoy/internal/gw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 675
    const-string v0, "purchaseData"

    if-eqz p2, :cond_78

    .line 676
    if-eqz p3, :cond_70

    .line 678
    :try_start_40
    new-instance v5, Lcom/tapjoy/internal/e;

    invoke-direct {v5, p2}, Lcom/tapjoy/internal/e;-><init>(Ljava/lang/String;)V

    .line 679
    iget-object v6, v5, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, v5, Lcom/tapjoy/internal/e;->b:Ljava/lang/String;

    .line 680
    invoke-static {v6}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, v5, Lcom/tapjoy/internal/e;->c:Ljava/lang/String;

    .line 681
    invoke-static {v6}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_65

    iget-wide v5, v5, Lcom/tapjoy/internal/e;->d:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_6f

    .line 683
    :cond_65
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_68} :catch_69

    goto :goto_6f

    .line 685
    :catch_69
    move-exception v3

    .line 686
    const-string v3, "invalid PurchaseData JSON"

    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_6f
    :goto_6f
    goto :goto_7f

    .line 691
    :cond_70
    const-string v0, "dataSignature"

    const-string v3, "is null, skipping purchase validation"

    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 695
    :cond_78
    if-eqz p3, :cond_7f

    .line 697
    const-string v3, "is null. skipping purchase validation"

    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_7f
    :goto_7f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 701
    invoke-static {p4}, Lcom/tapjoy/internal/gw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 703
    iget-object v3, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    iget-wide v0, v2, Lcom/tapjoy/internal/d;->g:J

    long-to-double v0, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v0, v6

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v10}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-eqz p2, :cond_a7

    if-eqz p3, :cond_a7

    .line 706
    const-string p1, "trackPurchase with purchaseData called"

    invoke-static {p1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    return-void

    .line 709
    :cond_a7
    const-string p1, "trackPurchase without purchaseData called"

    invoke-static {p1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    .line 711
    return-void

    .line 666
    :cond_ad
    :goto_ad
    invoke-static {v1, v0, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void

    .line 659
    :catch_b1
    move-exception p1

    .line 660
    const-string p1, "invalid SkuDetails JSON"

    invoke-static {v1, v0, p1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 763
    const-string v0, "trackEvent"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 764
    return-void

    .line 766
    :cond_9
    const-string v0, "trackEvent: name was null"

    invoke-static {p2, v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 767
    return-void

    .line 769
    :cond_12
    const/4 v0, 0x0

    .line 770
    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-eqz v3, :cond_26

    .line 771
    invoke-static {}, Lcom/tapjoy/internal/jw;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 772
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "value"

    invoke-interface {v0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_26
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 775
    const/4 p5, 0x5

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p5, p6

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const/4 p1, 0x2

    aput-object p3, p5, p1

    const/4 p1, 0x3

    aput-object p4, p5, p1

    const/4 p1, 0x4

    aput-object v0, p5, p1

    const-string p1, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    invoke-static {p1, p5}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 23
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 782
    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p11

    const-string v5, "trackEvent"

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 783
    return-void

    .line 785
    :cond_10
    const-string v5, "trackEvent: name was null"

    invoke-static {p2, v5}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 786
    return-void

    .line 788
    :cond_19
    invoke-static {}, Lcom/tapjoy/internal/jw;->b()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 789
    const-wide/16 v6, 0x0

    if-eqz v2, :cond_2c

    cmp-long v8, p6, v6

    if-eqz v8, :cond_2c

    .line 790
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, p5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_2c
    if-eqz v3, :cond_39

    cmp-long v2, p9, v6

    if-eqz v2, :cond_39

    .line 793
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_39
    if-eqz v4, :cond_46

    cmp-long v2, p12, v6

    if-eqz v2, :cond_46

    .line 796
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_46
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 799
    const/4 v5, 0x0

    .line 801
    :cond_4d
    iget-object v2, v0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    move-object p5, v2

    move-object p6, p1

    move-object/from16 p7, p2

    move-object/from16 p8, p3

    move-object/from16 p9, p4

    move-object/from16 p10, v5

    invoke-virtual/range {p5 .. p10}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 802
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p3, v2, v1

    const/4 v1, 0x3

    aput-object p4, v2, v1

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v1, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    invoke-static {v1, v2}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method final a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ha;->a(Ljava/util/Map;)V

    .line 884
    return-void
.end method

.method final a(Ljava/util/Map;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/ha;->a(Ljava/util/Map;J)V

    .line 888
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/ha;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    const-string v0, "setUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 452
    return-void

    .line 454
    :cond_9
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 455
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 456
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    if-eqz v1, :cond_43

    .line 458
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_43

    .line 460
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, v3, :cond_44

    .line 466
    :cond_43
    goto :goto_1a

    .line 467
    :cond_44
    move-object p1, v0

    .line 469
    :cond_45
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/he;->a(Ljava/util/Set;)V

    .line 470
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 10

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 222
    :try_start_1
    iget-boolean v0, p0, Lcom/tapjoy/internal/hb;->j:Z

    if-eqz v0, :cond_14

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hd;->d(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 233
    :cond_14
    monitor-exit p0

    return-void

    .line 221
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 3

    .line 582
    const-string v0, "onActivityStop: The given activity was null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 583
    return-void

    .line 587
    :cond_9
    const-string v0, "onActivityStop"

    invoke-static {v0}, Lcom/tapjoy/internal/gy;->c(Ljava/lang/String;)Z

    .line 588
    invoke-static {p1}, Lcom/tapjoy/internal/b;->c(Landroid/app/Activity;)V

    .line 590
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 591
    return-void

    .line 594
    :cond_18
    invoke-static {}, Lcom/tapjoy/internal/b;->b()Z

    move-result p1

    if-nez p1, :cond_23

    .line 595
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->t:Lcom/tapjoy/internal/ho;

    invoke-virtual {p1}, Lcom/tapjoy/internal/ho;->b()V

    .line 597
    :cond_23
    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    if-nez v0, :cond_7c

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/tapjoy/internal/gc;->a()Lcom/tapjoy/internal/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gc;->a(Landroid/content/Context;)V

    .line 169
    invoke-static {p1}, Lcom/tapjoy/internal/he;->a(Landroid/content/Context;)Lcom/tapjoy/internal/he;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    .line 171
    nop

    .line 2012
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/tapjoy/internal/hb;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "events2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    nop

    .line 172
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/gz;

    if-nez v1, :cond_30

    .line 173
    new-instance v1, Lcom/tapjoy/internal/gz;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gz;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/gz;

    .line 176
    :cond_30
    new-instance v0, Lcom/tapjoy/internal/ha;

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->h:Lcom/tapjoy/internal/gz;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/ha;-><init>(Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/gz;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    .line 177
    new-instance v0, Lcom/tapjoy/internal/ho;

    iget-object v1, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ho;-><init>(Lcom/tapjoy/internal/ha;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->t:Lcom/tapjoy/internal/ho;

    .line 178
    new-instance v0, Lcom/tapjoy/internal/hk;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/hk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/hk;

    .line 180
    new-instance v0, Lcom/tapjoy/internal/gj;

    new-instance v1, Ljava/io/File;

    .line 181
    invoke-static {p1}, Lcom/tapjoy/internal/hb;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "usages"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/gj;-><init>(Ljava/io/File;Lcom/tapjoy/internal/ha;)V

    .line 180
    invoke-static {v0}, Lcom/tapjoy/internal/gh;->a(Lcom/tapjoy/internal/gj;)V

    .line 183
    sget-object v0, Lcom/tapjoy/internal/hv;->a:Lcom/tapjoy/internal/hv;

    .line 2065
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/hv;->b:Landroid/content/Context;

    .line 2066
    const-string v1, "tapjoyCacheDataMMF2E"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/hv;->c:Landroid/content/SharedPreferences;

    .line 2067
    const-string v1, "tapjoyCacheDataMMF2U"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/hv;->d:Landroid/content/SharedPreferences;

    .line 2068
    invoke-virtual {v0}, Lcom/tapjoy/internal/hv;->a()V
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7e

    .line 185
    :cond_7c
    monitor-exit p0

    return-void

    .line 163
    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public final c()Z
    .registers 4

    .line 302
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_c} :catch_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    .line 303
    const/4 v0, 0x1

    return v0

    .line 306
    :catch_e
    move-exception v1

    .line 307
    return v0

    .line 304
    :catch_10
    move-exception v1

    .line 305
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 3

    .line 540
    iget-boolean v0, p0, Lcom/tapjoy/internal/hb;->j:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->i:Ljava/lang/String;

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 541
    :cond_c
    invoke-static {p1}, Lcom/tapjoy/internal/gy;->e(Ljava/lang/String;)V

    .line 542
    const/4 p1, 0x0

    return p1

    .line 544
    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    const-string v0, "getUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 447
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v0}, Lcom/tapjoy/internal/he;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 549
    invoke-static {p1}, Lcom/tapjoy/internal/gy;->d(Ljava/lang/String;)V

    .line 550
    const/4 p1, 0x0

    return p1

    .line 552
    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public final e()Z
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->t:Lcom/tapjoy/internal/ho;

    if-eqz v0, :cond_e

    .line 8038
    iget-object v0, v0, Lcom/tapjoy/internal/ho;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 600
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .registers 2

    .line 604
    const-string v0, "startSession"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 605
    return-void

    .line 607
    :cond_9
    invoke-direct {p0}, Lcom/tapjoy/internal/hb;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 608
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/internal/gv;->b(Landroid/app/Activity;)V

    .line 610
    :cond_13
    return-void
.end method

.method public final g()V
    .registers 2

    .line 623
    const-string v0, "endSession"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 624
    return-void

    .line 626
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->t:Lcom/tapjoy/internal/ho;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ho;->b()V

    .line 627
    return-void
.end method
