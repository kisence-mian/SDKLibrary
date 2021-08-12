.class public Lcom/kwad/sdk/utils/AppStatusHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/AppStatusHelper$c;,
        Lcom/kwad/sdk/utils/AppStatusHelper$b;,
        Lcom/kwad/sdk/utils/AppStatusHelper$d;,
        Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;,
        Lcom/kwad/sdk/utils/AppStatusHelper$a;,
        Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;,
        Lcom/kwad/sdk/utils/AppStatusHelper$SDCardRootNodeFilter;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Lcom/kwad/sdk/utils/AppStatusHelper$c;

.field private static c:Landroid/os/Messenger;

.field private static d:Landroid/content/ServiceConnection;

.field private static volatile e:Ljava/util/concurrent/ExecutorService;

.field private static volatile f:Lcom/kwad/sdk/collector/AppStatusRules;

.field private static g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$c;-><init>(Lcom/kwad/sdk/utils/AppStatusHelper$1;)V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->b:Lcom/kwad/sdk/utils/AppStatusHelper$c;

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/kwad/sdk/utils/AppStatusHelper;->b:Lcom/kwad/sdk/utils/AppStatusHelper$c;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->c:Landroid/os/Messenger;

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$1;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$1;-><init>()V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->d:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$2;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Landroid/os/Messenger;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->c:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/collector/AppStatusRules;)Lcom/kwad/sdk/collector/AppStatusRules;
    .registers 1

    sput-object p0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->g(Landroid/content/Context;)Lcom/kwad/sdk/collector/AppStatusRules;

    move-result-object p0

    sput-object p0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    :cond_a
    sget-object p0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/AppStatusRules;->targetNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/kwad/sdk/collector/b;->c()V

    sget-object p0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    invoke-static {p0}, Lcom/kwad/sdk/collector/b;->a(Lcom/kwad/sdk/collector/AppStatusRules;)V

    :cond_1a
    sget-object p0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/AppStatusRules;->obtainStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/collector/b;->a(J)V

    sget-object p0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/AppStatusRules;->obtainHistoryGranularity()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/collector/b;->b(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->g:Ljava/lang/ref/WeakReference;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    const-wide/16 p1, 0x7530

    :cond_12
    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    if-nez v0, :cond_21

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    :cond_21
    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/utils/AppStatusHelper$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/utils/AppStatusHelper$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/kwad/sdk/collector/AppStatusRules;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->b(Landroid/content/Context;Lcom/kwad/sdk/collector/AppStatusRules;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->b(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    goto :goto_10

    :cond_d
    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->c(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    :goto_10
    return-void
.end method

.method static synthetic b()Lcom/kwad/sdk/collector/AppStatusRules;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->f:Lcom/kwad/sdk/collector/AppStatusRules;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->k(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/Android/data"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_63

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_63

    :cond_3a
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_41

    return-object v1

    :cond_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_48
    if-ge v2, v1, :cond_62

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_5f

    :cond_53
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_5f

    :cond_5c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_62
    return-object v0

    :cond_63
    :goto_63
    return-object v1
.end method

.method public static b(Landroid/content/Context;J)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/utils/AppStatusHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/utils/AppStatusHelper$4;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/kwad/sdk/collector/AppStatusRules;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "LOCAL_APP_STATUS_RULES"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_22

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    :try_start_22
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_37
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/utils/AppStatusHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper$5;-><init>(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic c()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->h(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/utils/AppStatusHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper$6;-><init>(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic d()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->k(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic e()Landroid/content/ServiceConnection;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->d:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic e(Landroid/content/Context;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Landroid/content/Context;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static f()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.kwad.sdk.api.proxy.app.ServiceProxyRemote"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_20} :catch_24

    if-lez v1, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    :catch_24
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_28
    return v0
.end method

.method private static g(Landroid/content/Context;)Lcom/kwad/sdk/collector/AppStatusRules;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "LOCAL_APP_STATUS_RULES"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_13

    return-object v1

    :cond_13
    :try_start_13
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_3b
    .catchall {:try_start_13 .. :try_end_18} :catchall_36

    :try_start_18
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_33
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2e

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/collector/AppStatusRules;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_2c
    .catchall {:try_start_1d .. :try_end_23} :catchall_4f

    :try_start_23
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    move-exception p0

    :goto_2b
    return-object v2

    :catch_2c
    move-exception v2

    goto :goto_3e

    :catchall_2e
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_50

    :catch_33
    move-exception v2

    move-object v0, v1

    goto :goto_3e

    :catchall_36
    move-exception p0

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_50

    :catch_3b
    move-exception v2

    move-object p0, v1

    move-object v0, p0

    :goto_3e
    :try_start_3e
    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4f

    if-eqz v0, :cond_49

    :try_start_43
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_49

    :catch_47
    move-exception p0

    goto :goto_4e

    :cond_49
    :goto_49
    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_47

    :cond_4e
    :goto_4e
    return-object v1

    :catchall_4f
    move-exception v1

    :goto_50
    if-eqz v0, :cond_58

    :try_start_52
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_58

    :catch_56
    move-exception p0

    goto :goto_5d

    :cond_58
    :goto_58
    if-eqz p0, :cond_5d

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5d} :catch_56

    :cond_5d
    :goto_5d
    throw v1
.end method

.method private static h(Landroid/content/Context;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->f()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStatusHelper"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_27

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper;->d:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/kwad/sdk/collector/b/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_30

    :cond_27
    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$d;-><init>(Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    invoke-static {p0, v0}, Lcom/kwad/sdk/utils/AppStatusHelper;->a(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    :goto_30
    return-void
.end method

.method private static i(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_53

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_2a

    goto :goto_19

    :cond_2a
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStatusHelper"

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    invoke-direct {v2}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setPackageName(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_52
    return-object v0

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_c
    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/kwad/sdk/collector/b;

    invoke-direct {v1}, Lcom/kwad/sdk/collector/b;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/collector/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->a(Landroid/content/Context;)V

    :cond_1f
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/collector/b;->a(Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/kwad/sdk/collector/b;->a()J

    move-result-wide v2

    sput-wide v2, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->granularity:J

    invoke-virtual {v1, p0}, Lcom/kwad/sdk/collector/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static k(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
