.class public Lcom/ss/android/socialbase/downloader/a/a;
.super Ljava/lang/Object;
.source "AppStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/a/a$a;,
        Lcom/ss/android/socialbase/downloader/a/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Application;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private final e:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    .line 148
    new-instance v0, Lcom/ss/android/socialbase/downloader/a/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a$1;-><init>(Lcom/ss/android/socialbase/downloader/a/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 63
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/a/a;->b()V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/a/a$1;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/a/a;
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a$b;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/a/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/a/a;)V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->e()V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/a/a;)V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->f()V

    return-void
.end method

.method private d()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    monitor-enter v1

    .line 119
    :try_start_4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 122
    :cond_12
    monitor-exit v1

    .line 123
    return-object v0

    .line 122
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 127
    const-string v0, "AppStatusManager"

    const-string v1, "dispatchAppForeground"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    .line 129
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->d()[Ljava/lang/Object;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_20

    .line 131
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_20

    aget-object v0, v2, v1

    .line 132
    check-cast v0, Lcom/ss/android/socialbase/downloader/a/a$a;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/a/a$a;->b()V

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 135
    :cond_20
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 138
    const-string v1, "AppStatusManager"

    const-string v2, "dispatchAppBackground"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    .line 140
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->d()[Ljava/lang/Object;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_1f

    .line 142
    array-length v3, v2

    move v1, v0

    :goto_12
    if-ge v1, v3, :cond_1f

    aget-object v0, v2, v1

    .line 143
    check-cast v0, Lcom/ss/android/socialbase/downloader/a/a$a;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/a/a$a;->c()V

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 146
    :cond_1f
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->h()Landroid/app/Activity;

    move-result-object v0

    .line 204
    iget v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 205
    if-eqz v0, :cond_16

    .line 206
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    .line 212
    :cond_15
    :goto_15
    return-void

    .line 209
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    goto :goto_15
.end method

.method private h()Landroid/app/Activity;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 216
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 217
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    const-string v3, "mActivities"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 219
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 221
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_32

    :cond_30
    move-object v0, v1

    .line 243
    :goto_31
    return-object v0

    .line 226
    :cond_32
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move-object v0, v1

    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 227
    if-nez v0, :cond_4c

    .line 228
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 230
    :cond_4c
    if-nez v2, :cond_54

    .line 231
    const-string v2, "paused"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 233
    :cond_54
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 235
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 236
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6e} :catch_6f

    goto :goto_31

    .line 240
    :catch_6f
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_73
    move-object v0, v1

    .line 243
    goto :goto_31
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/a/a$a;)V
    .registers 4

    .prologue
    .line 97
    if-nez p1, :cond_3

    .line 105
    :goto_2
    return-void

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    monitor-enter v1

    .line 101
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_13
    monitor-exit v1

    goto :goto_2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v0, :cond_1f

    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 69
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1f

    .line 70
    const-class v1, Lcom/ss/android/socialbase/downloader/a/a;

    monitor-enter v1

    .line 71
    :try_start_f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    if-nez v2, :cond_1e

    .line 72
    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/a/a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 75
    :cond_1e
    monitor-exit v1

    .line 78
    :cond_1f
    return-void

    .line 75
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/a/a$a;)V
    .registers 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    .line 86
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 87
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/a/a;->g()V

    .line 88
    iget v1, p0, Lcom/ss/android/socialbase/downloader/a/a;->d:I

    .line 90
    :cond_b
    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
