.class public Lcom/mintegral/msdk/videocommon/download/g;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videocommon/download/g$b;,
        Lcom/mintegral/msdk/videocommon/download/g$a;,
        Lcom/mintegral/msdk/videocommon/download/g$c;
    }
.end annotation


# static fields
.field private static d:Lcom/mintegral/msdk/videocommon/download/g;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private e:Lcom/mintegral/msdk/videocommon/download/j;

.field private f:Lcom/mintegral/msdk/videocommon/download/h;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->c:Z

    .line 45
    :try_start_6
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/j;->a()Lcom/mintegral/msdk/videocommon/download/j;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->e:Lcom/mintegral/msdk/videocommon/download/j;

    .line 1036
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/h$a;->a:Lcom/mintegral/msdk/videocommon/download/h;

    .line 46
    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->f:Lcom/mintegral/msdk/videocommon/download/h;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 52
    :goto_1e
    return-void

    .line 49
    :catch_1f
    move-exception v0

    .line 50
    const-string v1, "H5DownLoadManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public static a()Lcom/mintegral/msdk/videocommon/download/g;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/g;->d:Lcom/mintegral/msdk/videocommon/download/g;

    if-nez v0, :cond_13

    .line 56
    const-class v1, Lcom/mintegral/msdk/videocommon/download/g;

    monitor-enter v1

    .line 57
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/g;->d:Lcom/mintegral/msdk/videocommon/download/g;

    if-nez v0, :cond_12

    .line 58
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/g;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/download/g;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/g;->d:Lcom/mintegral/msdk/videocommon/download/g;

    .line 60
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 62
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/g;->d:Lcom/mintegral/msdk/videocommon/download/g;

    return-object v0

    .line 60
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/g;)Lcom/mintegral/msdk/videocommon/download/h;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->f:Lcom/mintegral/msdk/videocommon/download/h;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->e:Lcom/mintegral/msdk/videocommon/download/j;

    if-eqz v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->e:Lcom/mintegral/msdk/videocommon/download/j;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V
    .registers 6

    .prologue
    .line 115
    :try_start_0
    const-string v0, "H5DownLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 201
    :cond_1c
    :goto_1c
    return-void

    .line 120
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/f$a;->a:Lcom/mintegral/msdk/videocommon/download/f;

    .line 123
    new-instance v1, Lcom/mintegral/msdk/videocommon/download/g$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/videocommon/download/g$1;-><init>(Lcom/mintegral/msdk/videocommon/download/g;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/f;->a(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1c

    .line 196
    :catch_2d
    move-exception v0

    .line 197
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$c;)V
    .registers 6

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->e:Lcom/mintegral/msdk/videocommon/download/j;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/b;

    .line 81
    if-eqz v0, :cond_21

    .line 82
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/download/b;->a(Lcom/mintegral/msdk/videocommon/download/g$c;)V

    .line 107
    :cond_21
    :goto_21
    return-void

    .line 87
    :cond_22
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/b;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/g;->e:Lcom/mintegral/msdk/videocommon/download/j;

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/mintegral/msdk/videocommon/download/b;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcom/mintegral/msdk/videocommon/download/j;Lcom/mintegral/msdk/videocommon/download/g$c;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p1, v0}, Lcom/mintegral/msdk/videocommon/download/e;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$b;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_21

    .line 99
    :catch_34
    move-exception v0

    .line 101
    const-string v1, "downloadzip failed"

    invoke-interface {p2, v1, p1}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 96
    :cond_42
    :try_start_42
    invoke-interface {p2, p1}, Lcom/mintegral/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_34

    goto :goto_21
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V

    .line 111
    return-void
.end method
