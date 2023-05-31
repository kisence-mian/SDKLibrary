.class public Lcom/didi/virtualapk/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/PluginManager$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.PluginManager"

.field private static volatile sInstance:Lcom/didi/virtualapk/PluginManager;


# instance fields
.field protected mActivityManager:Landroid/app/IActivityManager;

.field protected final mApplication:Landroid/app/Application;

.field protected final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/virtualapk/PluginManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

.field protected final mContext:Landroid/content/Context;

.field protected mIContentProvider:Landroid/content/IContentProvider;

.field protected mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

.field protected final mPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    .line 124
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2b

    .line 125
    check-cast p1, Landroid/app/Application;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    .line 126
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    .line 138
    :goto_21
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->createComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

    .line 139
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookCurrentProcess()V

    .line 140
    return-void

    .line 128
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "app":Landroid/content/Context;
    if-nez v0, :cond_3a

    .line 130
    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    goto :goto_21

    .line 133
    :cond_3a
    check-cast v0, Landroid/app/Application;

    .end local v0    # "app":Landroid/content/Context;
    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    .line 134
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    goto :goto_21
.end method

.method private static createInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 99
    .local v2, "metaData":Landroid/os/Bundle;
    if-nez v2, :cond_18

    .line 100
    new-instance v3, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v3, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    .line 120
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_17
    return-object v3

    .line 103
    .restart local v2    # "metaData":Landroid/os/Bundle;
    :cond_18
    const-string v4, "VA_FACTORY"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "factoryClass":Ljava/lang/String;
    if-nez v1, :cond_34

    .line 106
    new-instance v3, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v3, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_17

    .line 116
    .end local v1    # "factoryClass":Ljava/lang/String;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :catch_26
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VA.PluginManager"

    const-string v5, "Created the instance error!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    new-instance v3, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v3, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    goto :goto_17

    .line 109
    .restart local v1    # "factoryClass":Ljava/lang/String;
    .restart local v2    # "metaData":Landroid/os/Bundle;
    :cond_34
    :try_start_34
    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const-string v5, "create"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/virtualapk/PluginManager;

    .line 111
    .local v3, "pluginManager":Lcom/didi/virtualapk/PluginManager;
    if-eqz v3, :cond_2e

    .line 112
    const-string v4, "VA.PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created a instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_70} :catch_26

    goto :goto_17
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;
    .registers 3
    .param p0, "base"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    if-nez v0, :cond_12

    .line 83
    const-class v1, Lcom/didi/virtualapk/PluginManager;

    monitor-enter v1

    .line 84
    :try_start_7
    sget-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    if-nez v0, :cond_11

    .line 85
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->createInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    sput-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    .line 87
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 90
    :cond_12
    sget-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    return-object v0

    .line 87
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V
    .registers 6
    .param p1, "callback"    # Lcom/didi/virtualapk/PluginManager$Callback;

    .prologue
    .line 196
    if-nez p1, :cond_3

    .line 205
    :goto_2
    return-void

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 200
    :try_start_6
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw v0

    .line 203
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2d

    goto :goto_2
.end method

.method protected createActivityManagerProxy(Landroid/app/IActivityManager;)Lcom/didi/virtualapk/delegate/ActivityManagerProxy;
    .registers 3
    .param p1, "origin"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/IActivityManager;)V

    return-object v0
.end method

.method protected createComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;
    .registers 2

    .prologue
    .line 165
    new-instance v0, Lcom/didi/virtualapk/internal/ComponentsHandler;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/ComponentsHandler;-><init>(Lcom/didi/virtualapk/PluginManager;)V

    return-object v0
.end method

.method protected createInstrumentation(Landroid/app/Instrumentation;)Lcom/didi/virtualapk/internal/VAInstrumentation;
    .registers 3
    .param p1, "origin"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/didi/virtualapk/internal/VAInstrumentation;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/Instrumentation;)V

    return-object v0
.end method

.method protected createLoadedPlugin(Ljava/io/File;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 4
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method protected doInWorkThread()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAllLoadedPlugins()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/didi/virtualapk/internal/LoadedPlugin;>;"
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    return-object v0
.end method

.method public getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

    return-object v0
.end method

.method public getHostApplication()Landroid/app/Application;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getIContentProvider()Landroid/content/IContentProvider;
    .registers 2

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_8

    .line 367
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookIContentProviderAsNeeded()V

    .line 370
    :cond_8
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 366
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    return-object v0
.end method

.method public getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 337
    if-nez p1, :cond_4

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    goto :goto_3
.end method

.method public getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    return-object v0
.end method

.method protected hookCurrentProcess()V
    .registers 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookInstrumentationAndHandler()V

    .line 144
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookSystemServices()V

    .line 145
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookDataBindingUtil()V

    .line 146
    return-void
.end method

.method protected hookDataBindingUtil()V
    .registers 8

    .prologue
    .line 181
    const-string v4, "android.databinding.DataBindingUtil"

    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v4

    const-string v5, "sMapper"

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v3

    .line 182
    .local v3, "reflector":Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    invoke-virtual {v3}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->get()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "old":Ljava/lang/Object;
    if-eqz v2, :cond_46

    .line 185
    :try_start_12
    const-string v4, "android.databinding.DataBinderMapperProxy"

    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/PluginManager$Callback;

    .line 186
    .local v0, "callback":Lcom/didi/virtualapk/PluginManager$Callback;
    invoke-virtual {v3, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    .line 187
    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/PluginManager;->addCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V

    .line 188
    const-string v4, "VA.PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hookDataBindingUtil succeed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Lcom/didi/virtualapk/utils/Reflector$ReflectedException; {:try_start_12 .. :try_end_46} :catch_47

    .line 193
    .end local v0    # "callback":Lcom/didi/virtualapk/PluginManager$Callback;
    :cond_46
    :goto_46
    return-void

    .line 189
    :catch_47
    move-exception v1

    .line 190
    .local v1, "e":Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
    const-string v4, "VA.PluginManager"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method protected hookIContentProviderAsNeeded()V
    .registers 22

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 264
    .local v15, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wakeup"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, "authority":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 268
    .local v11, "provider":Ljava/lang/reflect/Field;
    :try_start_2b
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    .line 269
    .local v4, "activityThread":Landroid/app/ActivityThread;
    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v17

    const-string v18, "mProviderMap"

    invoke-virtual/range {v17 .. v18}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 270
    .local v12, "providerMap":Ljava/util/Map;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 271
    .local v9, "iter":Ljava/util/Iterator;
    :cond_47
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c0

    .line 272
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 273
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 274
    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 276
    .local v16, "val":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_c1

    .line 277
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 285
    .local v5, "auth":Ljava/lang/String;
    :goto_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_47

    .line 286
    if-nez v11, :cond_8a

    .line 287
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "mProvider"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 288
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 290
    :cond_8a
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/IContentProvider;

    .line 291
    .local v14, "rawProvider":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    move-result-object v13

    .line 292
    .local v13, "proxy":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    .line 293
    const-string v17, "VA.PluginManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "hookIContentProvider succeed : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v4    # "activityThread":Landroid/app/ActivityThread;
    .end local v5    # "auth":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "iter":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/Object;
    .end local v12    # "providerMap":Ljava/util/Map;
    .end local v13    # "proxy":Landroid/content/IContentProvider;
    .end local v14    # "rawProvider":Landroid/content/IContentProvider;
    .end local v16    # "val":Ljava/lang/Object;
    :cond_c0
    :goto_c0
    return-void

    .line 279
    .restart local v4    # "activityThread":Landroid/app/ActivityThread;
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    .restart local v9    # "iter":Ljava/util/Iterator;
    .restart local v10    # "key":Ljava/lang/Object;
    .restart local v12    # "providerMap":Ljava/util/Map;
    .restart local v16    # "val":Ljava/lang/Object;
    :cond_c1
    if-nez v6, :cond_d4

    .line 280
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "authority"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 281
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 283
    :cond_d4
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_da} :catch_db

    .restart local v5    # "auth":Ljava/lang/String;
    goto :goto_65

    .line 297
    .end local v4    # "activityThread":Landroid/app/ActivityThread;
    .end local v5    # "auth":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "iter":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/Object;
    .end local v12    # "providerMap":Ljava/util/Map;
    .end local v16    # "val":Ljava/lang/Object;
    :catch_db
    move-exception v7

    .line 298
    .local v7, "e":Ljava/lang/Exception;
    const-string v17, "VA.PluginManager"

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0
.end method

.method protected hookInstrumentationAndHandler()V
    .registers 9

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 244
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 250
    .local v1, "baseInstrumentation":Landroid/app/Instrumentation;
    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->createInstrumentation(Landroid/app/Instrumentation;)Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v3

    .line 252
    .local v3, "instrumentation":Lcom/didi/virtualapk/internal/VAInstrumentation;
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    const-string v6, "mInstrumentation"

    invoke-virtual {v5, v6}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 253
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    const-string v6, "getHandler"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 254
    .local v4, "mainHandler":Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    const-string v6, "mCallback"

    invoke-virtual {v5, v6}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 255
    iput-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    .line 256
    const-string v5, "VA.PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hookInstrumentationAndHandler succeed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    .line 260
    .end local v0    # "activityThread":Landroid/app/ActivityThread;
    .end local v1    # "baseInstrumentation":Landroid/app/Instrumentation;
    .end local v3    # "instrumentation":Lcom/didi/virtualapk/internal/VAInstrumentation;
    .end local v4    # "mainHandler":Landroid/os/Handler;
    :goto_58
    return-void

    .line 257
    :catch_59
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "VA.PluginManager"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method protected hookSystemServices()V
    .registers 9

    .prologue
    .line 220
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_66

    .line 221
    const-class v4, Landroid/app/ActivityManager;

    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const-string v5, "IActivityManagerSingleton"

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Singleton;

    .line 225
    .local v1, "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    :goto_18
    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager;

    .line 226
    .local v3, "origin":Landroid/app/IActivityManager;
    iget-object v4, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/IActivityManager;

    aput-object v7, v5, v6

    .line 227
    invoke-virtual {p0, v3}, Lcom/didi/virtualapk/PluginManager;->createActivityManagerProxy(Landroid/app/IActivityManager;)Lcom/didi/virtualapk/delegate/ActivityManagerProxy;

    move-result-object v6

    .line 226
    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 230
    .local v0, "activityManagerProxy":Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const-string v5, "mInstance"

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 232
    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_65

    .line 233
    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 234
    const-string v4, "VA.PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hookSystemServices succeed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "activityManagerProxy":Landroid/app/IActivityManager;
    .end local v1    # "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    .end local v3    # "origin":Landroid/app/IActivityManager;
    :cond_65
    :goto_65
    return-void

    .line 223
    :cond_66
    const-class v4, Landroid/app/ActivityManagerNative;

    invoke-static {v4}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const-string v5, "gDefault"

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Singleton;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    .restart local v1    # "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    goto :goto_18

    .line 236
    .end local v1    # "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    :catch_79
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VA.PluginManager"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65
.end method

.method public init()V
    .registers 3

    .prologue
    .line 149
    invoke-static {}, Lcom/didi/virtualapk/utils/RunUtil;->getThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/didi/virtualapk/PluginManager$1;

    invoke-direct {v1, p0}, Lcom/didi/virtualapk/PluginManager$1;-><init>(Lcom/didi/virtualapk/PluginManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public loadPlugin(Ljava/io/File;)V
    .registers 8
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    if-nez p1, :cond_a

    .line 309
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "error : apk is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_18

    .line 314
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 315
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 318
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_18
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->createLoadedPlugin(Ljava/io/File;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 320
    .local v2, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-nez v2, :cond_3b

    .line 321
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load plugin which is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_3b
    iget-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v4, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v4

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    :try_start_48
    iget-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5e

    .line 327
    iget-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/virtualapk/PluginManager$Callback;

    invoke-interface {v3, v2}, Lcom/didi/virtualapk/PluginManager$Callback;->onAddedLoadedPlugin(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 329
    :cond_5e
    monitor-exit v4

    .line 330
    return-void

    .line 329
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_60

    throw v3
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 456
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 457
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 458
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 462
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2b
    return-object v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 422
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 423
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 424
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 428
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2b
    return-object v1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 439
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 440
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 441
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 445
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2b
    return-object v1
.end method

.method public removeCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/didi/virtualapk/PluginManager$Callback;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 209
    :try_start_3
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 382
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 383
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 384
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_a

    .line 389
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 404
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 405
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 406
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_a

    .line 411
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 393
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 394
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 395
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_a

    .line 400
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method
