.class public Lcom/didi/virtualapk/internal/VAInstrumentation;
.super Landroid/app/Instrumentation;
.source "VAInstrumentation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VA.VAInstrumentation"


# instance fields
.field protected final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mBase:Landroid/app/Instrumentation;

.field protected mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/Instrumentation;)V
    .registers 4
    .param p1, "pluginManager"    # Lcom/didi/virtualapk/PluginManager;
    .param p2, "base"    # Landroid/app/Instrumentation;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 63
    iput-object p2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    .line 64
    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectActivity(Landroid/app/Activity;)V

    .line 156
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectActivity(Landroid/app/Activity;)V

    .line 163
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 164
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 14
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    .line 75
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0, p5}, Lcom/didi/virtualapk/internal/VAInstrumentation;->injectIntent(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method getActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    monitor-enter v1

    .line 251
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_60

    .line 200
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    .local v3, "r":Ljava/lang/Object;
    :try_start_8
    invoke-static {v3}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    .line 203
    .local v4, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    const-string v6, "intent"

    invoke-virtual {v4, v6}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 205
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "activityInfo"

    invoke-virtual {v4, v6}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 207
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 208
    iget-object v6, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v6}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v5

    .line 209
    .local v5, "theme":I
    if-eqz v5, :cond_60

    .line 210
    const-string v6, "VA.VAInstrumentation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolve theme, current theme:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  after :0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput v5, v0, Landroid/content/pm/ActivityInfo;->theme:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_60} :catch_62

    .line 219
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    .end local v5    # "theme":I
    :cond_60
    :goto_60
    const/4 v6, 0x0

    return v6

    .line 214
    .restart local v3    # "r":Ljava/lang/Object;
    :catch_62
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "VA.VAInstrumentation"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method

.method protected injectActivity(Landroid/app/Activity;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 168
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v4}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    .local v1, "base":Landroid/content/Context;
    :try_start_e
    iget-object v8, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v8, v4}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v5

    .line 172
    .local v5, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v8

    const-string v9, "mResources"

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v8

    invoke-virtual {v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 173
    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v6

    .line 174
    .local v6, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    const-string v8, "mBase"

    invoke-virtual {v6, v8}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 175
    const-string v8, "mApplication"

    invoke-virtual {v6, v8}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v8

    invoke-virtual {v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 178
    invoke-static {v4}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 179
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v8, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_59

    .line 180
    iget v8, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 184
    :cond_59
    invoke-static {v4}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    .line 185
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 186
    .local v7, "wrapperIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 188
    invoke-virtual {p1, v7}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_77} :catch_78

    .line 194
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "base":Landroid/content/Context;
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v5    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v6    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    .end local v7    # "wrapperIntent":Landroid/content/Intent;
    :cond_77
    :goto_77
    return-void

    .line 190
    .restart local v1    # "base":Landroid/content/Context;
    :catch_78
    move-exception v3

    .line 191
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "VA.VAInstrumentation"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77
.end method

.method protected injectIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 94
    const-string v0, "VA.VAInstrumentation"

    const-string v1, "execStartActivity[%s : %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    .line 98
    :cond_3c
    return-void
.end method

.method protected newActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 238
    iget-object v2, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    monitor-enter v2

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_23

    .line 240
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_20

    .line 241
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 239
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 244
    :cond_23
    iget-object v1, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mActivities:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    monitor-exit v2

    .line 246
    return-object p1

    .line 245
    .end local v0    # "i":I
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 16
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 104
    const-string v7, "VA.VAInstrumentation"

    const-string v8, "newActivity[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_14} :catch_1f

    .line 145
    iget-object v7, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v7, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/didi/virtualapk/internal/VAInstrumentation;->newActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    :goto_1e
    return-object v7

    .line 106
    :catch_1f
    move-exception v4

    .line 107
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 109
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_31

    .line 110
    iget-object v7, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v7, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/didi/virtualapk/internal/VAInstrumentation;->newActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    goto :goto_1e

    .line 113
    :cond_31
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "targetClassName":Ljava/lang/String;
    const-string v7, "VA.VAInstrumentation"

    const-string v8, "newActivity[%s : %s/%s]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v7, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v5

    .line 118
    .local v5, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-nez v5, :cond_b7

    .line 120
    const/4 v3, 0x0

    .line 122
    .local v3, "debuggable":Z
    :try_start_59
    iget-object v7, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v2

    .line 123
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_65} :catch_db

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_89

    const/4 v3, 0x1

    .line 128
    .end local v2    # "context":Landroid/content/Context;
    :goto_6a
    if-eqz v3, :cond_8b

    .line 129
    new-instance v7, Landroid/content/ActivityNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    .restart local v2    # "context":Landroid/content/Context;
    :cond_89
    const/4 v3, 0x0

    goto :goto_6a

    .line 132
    .end local v2    # "context":Landroid/content/Context;
    :cond_8b
    const-string v7, "VA.VAInstrumentation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not found. starting the stub activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/didi/virtualapk/delegate/StubActivity;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v7, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    const-class v8, Lcom/didi/virtualapk/delegate/StubActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/didi/virtualapk/internal/VAInstrumentation;->newActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    goto/16 :goto_1e

    .line 136
    .end local v3    # "debuggable":Z
    :cond_b7
    iget-object v7, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8, v6, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 140
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v7

    const-string v8, "mResources"

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v7

    invoke-virtual {v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    .line 142
    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/internal/VAInstrumentation;->newActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    goto/16 :goto_1e

    .line 124
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v3    # "debuggable":Z
    :catch_db
    move-exception v7

    goto :goto_6a
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
