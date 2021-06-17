.class public final Lcom/tapjoy/internal/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/fm;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/fm;

    invoke-direct {v0}, Lcom/tapjoy/internal/fm;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fm;->a:Lcom/tapjoy/internal/fm;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fm;->d:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fm;Landroid/app/Application;)Landroid/app/Application;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    return-object p1
.end method

.method static synthetic a(Landroid/app/Activity;)Ljava/lang/String;
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/tapjoy/internal/fm;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 3

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    .line 45
    return-void

    .line 2029
    :cond_7
    sget-object v0, Lcom/tapjoy/internal/fm;->a:Lcom/tapjoy/internal/fm;

    .line 48
    nop

    .line 2084
    iget-object v1, v0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    if-eqz v1, :cond_20

    .line 2087
    monitor-enter v0

    .line 2088
    :try_start_f
    iget-object v1, v0, Lcom/tapjoy/internal/fm;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v1, :cond_1b

    .line 2089
    iget-object v2, v0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2090
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/fm;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2095
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw v1

    .line 49
    :cond_20
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    .line 34
    return-void

    .line 36
    :cond_7
    if-nez p0, :cond_a

    .line 37
    return-void

    .line 1029
    :cond_a
    sget-object v0, Lcom/tapjoy/internal/fm;->a:Lcom/tapjoy/internal/fm;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1053
    iget-object v1, v0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    if-nez v1, :cond_40

    .line 1055
    nop

    .line 1099
    :try_start_15
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1e

    .line 1101
    check-cast p0, Landroid/app/Application;

    iput-object p0, v0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    goto :goto_3a

    .line 1104
    :cond_1e
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1106
    new-instance v1, Lcom/tapjoy/internal/fm$1;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/fm$1;-><init>(Lcom/tapjoy/internal/fm;Ljava/util/concurrent/CountDownLatch;)V

    .line 1119
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1120
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_30

    .line 1058
    goto :goto_3a

    .line 1056
    :catch_30
    move-exception p0

    .line 1057
    const-string v1, "Tapjoy.ActivityTracker"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :goto_3a
    iget-object p0, v0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    if-eqz p0, :cond_3f

    goto :goto_40

    .line 41
    :cond_3f
    return-void

    .line 1064
    :cond_40
    :goto_40
    monitor-enter v0

    .line 1065
    :try_start_41
    iget-object p0, v0, Lcom/tapjoy/internal/fm;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p0, :cond_69

    .line 1066
    invoke-static {}, Lcom/tapjoy/internal/b;->c()Landroid/app/Activity;

    move-result-object p0

    .line 1067
    if-eqz p0, :cond_54

    .line 1068
    iget-object v1, v0, Lcom/tapjoy/internal/fm;->d:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/tapjoy/internal/fm;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_54
    iget-object p0, v0, Lcom/tapjoy/internal/fm;->d:Ljava/util/HashSet;

    .line 1126
    new-instance v1, Lcom/tapjoy/internal/fm$2;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/fm$2;-><init>(Lcom/tapjoy/internal/fm;Ljava/util/HashSet;)V

    .line 1071
    iput-object v1, v0, Lcom/tapjoy/internal/fm;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1072
    iget-object p0, v0, Lcom/tapjoy/internal/fm;->b:Landroid/app/Application;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1213
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/hb;->f()V

    .line 1079
    :cond_69
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method static synthetic b()Landroid/app/Application;
    .registers 3

    .line 2179
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 2180
    const-string v2, "currentApplication"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 20
    return-object v0
.end method

.method private static b(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
