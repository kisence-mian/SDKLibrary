.class public Lcom/kwad/sdk/api/loader/Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/loader/Loader$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private volatile b:Landroid/content/Context;

.field private c:Lcom/kwad/sdk/api/core/IKsAdSDK;

.field private d:Lcom/kwad/sdk/api/loader/j;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/api/loader/Loader;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->c:Lcom/kwad/sdk/api/core/IKsAdSDK;

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/api/loader/Loader$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/api/loader/Loader;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/ClassLoader;)Lcom/kwad/sdk/api/core/IKsAdSDK;
    .registers 6

    const-class v0, Lcom/kwad/sdk/api/loader/Loader;

    monitor-enter v0

    :try_start_3
    const-class v1, Lcom/kwad/sdk/api/core/IKsAdSDK;

    const-class v2, Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;

    sget-boolean v2, Lcom/kwad/sdk/api/loader/Loader;->a:Z

    if-nez v2, :cond_1a

    if-eqz v1, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;->value()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_39

    check-cast v1, Lcom/kwad/sdk/api/core/IKsAdSDK;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_54
    .catchall {:try_start_3 .. :try_end_37} :catchall_52

    monitor-exit v0

    return-object v1

    :cond_39
    :try_start_39
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not get sdk form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_54
    .catchall {:try_start_39 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    goto :goto_5b

    :catch_54
    move-exception p0

    :try_start_55
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    :goto_5b
    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/kwad/sdk/api/loader/g;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/Loader;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {v1, v0}, Lcom/kwad/sdk/api/loader/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Lcom/kwad/sdk/api/loader/f;->b:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/api/loader/Loader;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/api/loader/f;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private d(Landroid/content/Context;)V
    .registers 6

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "3.3.6"

    if-nez v1, :cond_12

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_12
    sget-object v0, Lcom/kwad/sdk/api/loader/f;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/api/loader/f;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {p1, v1, v3}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/api/loader/f;->a:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/loader/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->b(Ljava/io/File;)V

    invoke-static {p1, v2}, Lcom/kwad/sdk/api/loader/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public static get()Lcom/kwad/sdk/api/loader/Loader;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader$a;->a()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/api/loader/f;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/api/loader/f;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/r;->a(Landroid/content/Context;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getExternalClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/j;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalResource()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/j;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKsAdSDKImpl()Lcom/kwad/sdk/api/core/IKsAdSDK;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/j;->c()Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/core/IKsAdSDK;->setIsExternal(Z)V

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->c:Lcom/kwad/sdk/api/core/IKsAdSDK;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_24

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_24
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Loader;->a(Ljava/lang/ClassLoader;)Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->c:Lcom/kwad/sdk/api/core/IKsAdSDK;

    :cond_2a
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->c:Lcom/kwad/sdk/api/core/IKsAdSDK;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/core/IKsAdSDK;->setIsExternal(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->c:Lcom/kwad/sdk/api/core/IKsAdSDK;

    return-object v0
.end method

.method public getRealClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/j;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/api/loader/Loader;->d(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/loader/Loader;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/sdk/api/loader/j;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    :cond_2c
    iget-object p1, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/kwad/sdk/api/loader/Loader;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Loader;->a(Ljava/lang/ClassLoader;)Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/Loader;->c:Lcom/kwad/sdk/api/core/IKsAdSDK;

    :cond_3c
    return-void
.end method

.method public isExternalLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->d:Lcom/kwad/sdk/api/loader/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public newComponentProxy(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kwad/sdk/api/proxy/IComponentProxy;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "sdkconfig"

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/loader/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/SdkConfig;->create(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/KsAdSDK;->init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Z

    :cond_15
    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Loader;->getKsAdSDKImpl()Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/kwad/sdk/api/core/IKsAdSDK;->newComponentProxy(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;

    move-result-object p1

    return-object p1
.end method

.method public newComponentProxyNewProcess(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kwad/sdk/api/proxy/IComponentProxy;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Loader;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "sdkconfig"

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/loader/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/SdkConfig;->create(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/api/KsAdSDK;->init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Z

    :cond_15
    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Loader;->getKsAdSDKImpl()Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/kwad/sdk/api/core/IKsAdSDK;->newComponentProxy(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Loader;->getKsAdSDKImpl()Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/IKsAdSDK;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
