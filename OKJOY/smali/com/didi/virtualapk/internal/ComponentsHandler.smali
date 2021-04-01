.class public Lcom/didi/virtualapk/internal/ComponentsHandler;
.super Ljava/lang/Object;
.source "ComponentsHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.PluginManager"


# instance fields
.field private mBoundServices:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;

.field private mServiceCounters:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/app/Service;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mStubActivityInfo:Lcom/didi/virtualapk/internal/StubActivityInfo;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;)V
    .registers 3
    .param p1, "pluginManager"    # Lcom/didi/virtualapk/PluginManager;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/didi/virtualapk/internal/StubActivityInfo;

    invoke-direct {v0}, Lcom/didi/virtualapk/internal/StubActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mStubActivityInfo:Lcom/didi/virtualapk/internal/StubActivityInfo;

    .line 49
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    .line 51
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    .line 54
    iput-object p1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 55
    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private dispatchStubActivity(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 98
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v3

    .line 100
    .local v3, "loadedPlugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v3, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 101
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_32

    .line 102
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 104
    :cond_32
    iget v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 105
    .local v2, "launchMode":I
    invoke-virtual {v3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 106
    .local v6, "themeObj":Landroid/content/res/Resources$Theme;
    iget v7, v1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v6, v7, v11}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 107
    iget-object v7, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mStubActivityInfo:Lcom/didi/virtualapk/internal/StubActivityInfo;

    invoke-virtual {v7, v5, v2, v6}, Lcom/didi/virtualapk/internal/StubActivityInfo;->getStubActivity(Ljava/lang/String;ILandroid/content/res/Resources$Theme;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "stubActivity":Ljava/lang/String;
    const-string v7, "VA.PluginManager"

    const-string v8, "dispatchStubActivity,[%s -> %s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    return-void
.end method


# virtual methods
.method public forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;
    .registers 5
    .param p1, "iServiceConnection"    # Landroid/os/IBinder;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    monitor-exit v2

    return-object v0

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public forgetService(Landroid/content/ComponentName;)Landroid/app/Service;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 148
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 150
    .local v0, "service":Landroid/app/Service;
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit v2

    return-object v0

    .line 152
    .end local v0    # "service":Landroid/app/Service;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getService(Landroid/content/ComponentName;)Landroid/app/Service;
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    return-object v0
.end method

.method public getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 3
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public isServiceAvailable(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markIntentIfNeeded(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_7

    .line 94
    :cond_6
    :goto_6
    return-void

    .line 80
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "targetClassName":Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 86
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3e

    .line 87
    const-string v3, "va.intent.extra.category"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 90
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "va.intent.category.package."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "va.intent.category.activity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->dispatchStubActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 5
    .param p1, "iServiceConnection"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/app/Service;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 136
    :try_start_3
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p2, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 63
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_16

    .line 64
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 65
    :cond_16
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 66
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_32

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_32

    .line 67
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .restart local v0    # "component":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_32
    return-object p1
.end method
