.class public final Lcom/anythink/core/common/g/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field private static g:Lcom/anythink/core/common/g/a/a;


# instance fields
.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private m:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/common/g/a/a;->g:Lcom/anythink/core/common/g/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 35
    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->i:Ljava/util/concurrent/ExecutorService;

    .line 36
    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 37
    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->k:Ljava/util/concurrent/ExecutorService;

    .line 38
    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->l:Ljava/util/concurrent/ExecutorService;

    .line 39
    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->m:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->i:Ljava/util/concurrent/ExecutorService;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/g/a/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 47
    return-void
.end method

.method public static a()Lcom/anythink/core/common/g/a/a;
    .registers 1

    .line 50
    sget-object v0, Lcom/anythink/core/common/g/a/a;->g:Lcom/anythink/core/common/g/a/a;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/anythink/core/common/g/a/a;

    invoke-direct {v0}, Lcom/anythink/core/common/g/a/a;-><init>()V

    sput-object v0, Lcom/anythink/core/common/g/a/a;->g:Lcom/anythink/core/common/g/a/a;

    .line 53
    :cond_b
    sget-object v0, Lcom/anythink/core/common/g/a/a;->g:Lcom/anythink/core/common/g/a/a;

    return-object v0
.end method

.method private static a(Lcom/anythink/core/common/g/a/a;)V
    .registers 1

    .line 57
    sput-object p0, Lcom/anythink/core/common/g/a/a;->g:Lcom/anythink/core/common/g/a/a;

    .line 58
    return-void
.end method

.method private a(Lcom/anythink/core/common/g/a/b;)V
    .registers 3

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 100
    return-void
.end method

.method private b()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/anythink/core/common/g/a/a;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 144
    iget-object v0, p0, Lcom/anythink/core/common/g/a/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 145
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/common/g/a/b;I)V
    .registers 3

    monitor-enter p0

    .line 63
    packed-switch p2, :pswitch_data_52

    goto :goto_50

    .line 87
    :pswitch_5
    :try_start_5
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->m:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_f

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/g/a/a;->m:Ljava/util/concurrent/ExecutorService;

    .line 90
    :cond_f
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_50

    .line 81
    :pswitch_15
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->l:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_20

    .line 82
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/g/a/a;->l:Ljava/util/concurrent/ExecutorService;

    .line 84
    :cond_20
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_4d

    .line 85
    monitor-exit p0

    return-void

    .line 75
    :pswitch_27
    :try_start_27
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->k:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_31

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/g/a/a;->k:Ljava/util/concurrent/ExecutorService;

    .line 78
    :cond_31
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_4d

    .line 79
    monitor-exit p0

    return-void

    .line 72
    :pswitch_38
    :try_start_38
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_4d

    .line 73
    monitor-exit p0

    return-void

    .line 69
    :pswitch_3f
    :try_start_3f
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4d

    .line 70
    monitor-exit p0

    return-void

    .line 66
    :pswitch_46
    :try_start_46
    iget-object p2, p0, Lcom/anythink/core/common/g/a/a;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4d

    .line 67
    monitor-exit p0

    return-void

    .line 62
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 96
    :goto_50
    monitor-exit p0

    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3f
        :pswitch_38
        :pswitch_27
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    .line 103
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;J)V

    .line 104
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 7

    .line 107
    if-eqz p1, :cond_1f

    .line 108
    new-instance v0, Lcom/anythink/core/common/g/a/a$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/anythink/core/common/g/a/a$1;-><init>(Lcom/anythink/core/common/g/a/a;JLjava/lang/Runnable;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/g/a/b;->a(J)V

    .line 124
    nop

    .line 1099
    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 126
    :cond_1f
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 7

    .line 130
    new-instance v0, Lcom/anythink/core/common/g/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/g/a/a$2;-><init>(Lcom/anythink/core/common/g/a/a;Ljava/lang/Runnable;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/g/a/b;->a(J)V

    .line 138
    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 140
    return-void
.end method
