.class public Lcom/ss/android/socialbase/downloader/a/a;
.super Ljava/lang/Object;
.source "AppStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/a/a$a;,
        Lcom/ss/android/socialbase/downloader/a/a$c;,
        Lcom/ss/android/socialbase/downloader/a/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/ss/android/socialbase/downloader/a/a$c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:I

.field private final g:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 162
    new-instance v0, Lcom/ss/android/socialbase/downloader/a/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a$1;-><init>(Lcom/ss/android/socialbase/downloader/a/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/a/a$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;I)I
    .registers 2

    .line 21
    iput p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    return p1
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/a/a;
    .registers 1

    .line 36
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a$b;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->e:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/a/a;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->d()V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/a/a;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->e()V

    return-void
.end method

.method private c()[Ljava/lang/Object;
    .registers 3

    .line 131
    nop

    .line 132
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 133
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 134
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    .line 133
    :cond_13
    const/4 v1, 0x0

    .line 136
    :goto_14
    monitor-exit v0

    .line 137
    return-object v1

    .line 136
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private d()V
    .registers 5

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 143
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->c()[Ljava/lang/Object;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_17

    .line 145
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 146
    check-cast v3, Lcom/ss/android/socialbase/downloader/a/a$a;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/a/a$a;->b()V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 149
    :cond_17
    return-void
.end method

.method private e()V
    .registers 5

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 154
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->c()[Ljava/lang/Object;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_16

    .line 156
    array-length v2, v1

    :goto_a
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    .line 157
    check-cast v3, Lcom/ss/android/socialbase/downloader/a/a$a;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/a/a$a;->c()V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 160
    :cond_16
    return-void
.end method

.method private f()Z
    .registers 7

    .line 218
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    .line 219
    if-nez v1, :cond_6

    .line 220
    return v0

    .line 222
    :cond_6
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_41

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_41

    .line 229
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 230
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3f

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 231
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_42

    if-eqz v3, :cond_3f

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_3f
    goto :goto_23

    .line 235
    :cond_40
    return v0

    .line 227
    :cond_41
    :goto_41
    return v0

    .line 236
    :catchall_42
    move-exception v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v0, :cond_1b

    .line 73
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1b

    .line 74
    monitor-enter p0

    .line 75
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v0, :cond_16

    .line 76
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    .line 77
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p1

    .line 82
    :cond_1b
    :goto_1b
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/a/a$a;)V
    .registers 4

    .line 107
    if-nez p1, :cond_3

    .line 108
    return-void

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 111
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 112
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_13
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/a/a$c;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Lcom/ss/android/socialbase/downloader/a/a$c;

    .line 86
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/a/a$a;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public b()Z
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Lcom/ss/android/socialbase/downloader/a/a$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 93
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/a/a$c;->a()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 95
    :cond_b
    iget v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 96
    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    .line 97
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->f()Z

    move-result v0

    .line 98
    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->f:I

    .line 100
    :cond_16
    if-ne v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method
