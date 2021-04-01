.class public Lcom/didi/virtualapk/delegate/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# static fields
.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field public static final EXTRA_COMMAND_BIND_SERVICE:I = 0x3

.field public static final EXTRA_COMMAND_START_SERVICE:I = 0x1

.field public static final EXTRA_COMMAND_STOP_SERVICE:I = 0x2

.field public static final EXTRA_COMMAND_UNBIND_SERVICE:I = 0x4

.field public static final EXTRA_PLUGIN_LOCATION:Ljava/lang/String; = "plugin_location"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "target"

.field private static final TAG:Ljava/lang/String; = "VA.LocalService"


# instance fields
.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 28
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 75
    if-eqz p1, :cond_1a

    const-string v19, "target"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const-string v19, "command"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 76
    :cond_1a
    const/16 v19, 0x1

    .line 188
    :goto_1c
    return v19

    .line 79
    :cond_1d
    const-string v19, "target"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    .line 80
    .local v17, "target":Landroid/content/Intent;
    const-string v19, "command"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 81
    .local v8, "command":I
    if-eqz v17, :cond_3b

    if-gtz v8, :cond_3e

    .line 82
    :cond_3b
    const/16 v19, 0x1

    goto :goto_1c

    .line 85
    :cond_3e
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 86
    .local v9, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v13

    .line 88
    .local v13, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-nez v13, :cond_6f

    .line 89
    const-string v19, "VA.LocalService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error target: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v19, 0x1

    goto :goto_1c

    .line 93
    :cond_6f
    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 94
    packed-switch v8, :pswitch_data_364

    .line 188
    :goto_7d
    const/16 v19, 0x1

    goto :goto_1c

    .line 96
    :pswitch_80
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v12

    .line 97
    .local v12, "mainThread":Landroid/app/ActivityThread;
    invoke-virtual {v12}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 100
    .local v5, "appThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_ca

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v14

    .line 119
    .local v14, "service":Landroid/app/Service;
    :goto_aa
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_7d

    .line 104
    .end local v14    # "service":Landroid/app/Service;
    :cond_ca
    :try_start_ca
    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Service;

    .line 106
    .restart local v14    # "service":Landroid/app/Service;
    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 107
    .local v4, "app":Landroid/app/Application;
    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 108
    .local v18, "token":Landroid/os/IBinder;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "attach"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Landroid/content/Context;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-class v23, Landroid/app/ActivityThread;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-class v23, Landroid/os/IBinder;

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-class v23, Landroid/app/Application;

    aput-object v23, v21, v22

    const/16 v22, 0x5

    const-class v23, Ljava/lang/Object;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 109
    .local v6, "attach":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v3

    .line 111
    .local v3, "am":Landroid/app/IActivityManager;
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v12, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object v18, v19, v20

    const/16 v20, 0x4

    aput-object v4, v19, v20

    const/16 v20, 0x5

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v14}, Landroid/app/Service;->onCreate()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v14}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_163} :catch_165

    goto/16 :goto_aa

    .line 114
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local v4    # "app":Landroid/app/Application;
    .end local v6    # "attach":Ljava/lang/reflect/Method;
    .end local v14    # "service":Landroid/app/Service;
    .end local v18    # "token":Landroid/os/IBinder;
    :catch_165
    move-exception v16

    .line 115
    .local v16, "t":Ljava/lang/Throwable;
    const/16 v19, 0x1

    goto/16 :goto_1c

    .line 123
    .end local v5    # "appThread":Landroid/app/IApplicationThread;
    .end local v12    # "mainThread":Landroid/app/ActivityThread;
    .end local v16    # "t":Ljava/lang/Throwable;
    :pswitch_16a
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v12

    .line 124
    .restart local v12    # "mainThread":Landroid/app/ActivityThread;
    invoke-virtual {v12}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 125
    .restart local v5    # "appThread":Landroid/app/IApplicationThread;
    const/4 v14, 0x0

    .line 127
    .restart local v14    # "service":Landroid/app/Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_1c6

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v14

    .line 146
    :goto_195
    :try_start_195
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v7

    .line 147
    .local v7, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "sc"

    invoke-static/range {v19 .. v20}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 148
    .local v15, "serviceConnection":Landroid/os/IBinder;
    invoke-static {v15}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v11

    .line 149
    .local v11, "iServiceConnection":Landroid/app/IServiceConnection;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x1a

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_270

    .line 150
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v11, v9, v7, v0}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1ba} :catch_1bc

    goto/16 :goto_7d

    .line 154
    .end local v7    # "binder":Landroid/os/IBinder;
    .end local v11    # "iServiceConnection":Landroid/app/IServiceConnection;
    .end local v15    # "serviceConnection":Landroid/os/IBinder;
    :catch_1bc
    move-exception v10

    .line 155
    .local v10, "e":Ljava/lang/Exception;
    const-string v19, "VA.LocalService"

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7d

    .line 131
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1c6
    :try_start_1c6
    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/app/Service;

    move-object v14, v0

    .line 133
    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 134
    .restart local v4    # "app":Landroid/app/Application;
    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 135
    .restart local v18    # "token":Landroid/os/IBinder;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "attach"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Landroid/content/Context;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-class v23, Landroid/app/ActivityThread;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-class v23, Landroid/os/IBinder;

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-class v23, Landroid/app/Application;

    aput-object v23, v21, v22

    const/16 v22, 0x5

    const-class v23, Ljava/lang/Object;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 136
    .restart local v6    # "attach":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v3

    .line 138
    .restart local v3    # "am":Landroid/app/IActivityManager;
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v13}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v12, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object v18, v19, v20

    const/16 v20, 0x4

    aput-object v4, v19, v20

    const/16 v20, 0x5

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v14}, Landroid/app/Service;->onCreate()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v14}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_262
    .catch Ljava/lang/Throwable; {:try_start_1c6 .. :try_end_262} :catch_264

    goto/16 :goto_195

    .line 141
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local v4    # "app":Landroid/app/Application;
    .end local v6    # "attach":Ljava/lang/reflect/Method;
    .end local v18    # "token":Landroid/os/IBinder;
    :catch_264
    move-exception v16

    .line 142
    .restart local v16    # "t":Ljava/lang/Throwable;
    const-string v19, "VA.LocalService"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_195

    .line 152
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v7    # "binder":Landroid/os/IBinder;
    .restart local v11    # "iServiceConnection":Landroid/app/IServiceConnection;
    .restart local v15    # "serviceConnection":Landroid/os/IBinder;
    :cond_270
    :try_start_270
    invoke-static {v11}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v19

    const-string v20, "connected"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Landroid/content/ComponentName;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-class v23, Landroid/os/IBinder;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v7, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_270 .. :try_end_2a1} :catch_1bc

    goto/16 :goto_7d

    .line 160
    .end local v5    # "appThread":Landroid/app/IApplicationThread;
    .end local v7    # "binder":Landroid/os/IBinder;
    .end local v11    # "iServiceConnection":Landroid/app/IServiceConnection;
    .end local v12    # "mainThread":Landroid/app/ActivityThread;
    .end local v14    # "service":Landroid/app/Service;
    .end local v15    # "serviceConnection":Landroid/os/IBinder;
    :pswitch_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v14

    .line 161
    .restart local v14    # "service":Landroid/app/Service;
    if-eqz v14, :cond_2e5

    .line 163
    :try_start_2b5
    invoke-virtual {v14}, Landroid/app/Service;->onDestroy()V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2b8} :catch_2ba

    goto/16 :goto_7d

    .line 164
    :catch_2ba
    move-exception v10

    .line 165
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v19, "VA.LocalService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to stop service "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 168
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2e5
    const-string v19, "VA.LocalService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 173
    .end local v14    # "service":Landroid/app/Service;
    :pswitch_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v14

    .line 174
    .restart local v14    # "service":Landroid/app/Service;
    if-eqz v14, :cond_348

    .line 176
    :try_start_313
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 177
    invoke-virtual {v14}, Landroid/app/Service;->onDestroy()V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_31b} :catch_31d

    goto/16 :goto_7d

    .line 178
    :catch_31d
    move-exception v10

    .line 179
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v19, "VA.LocalService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to unbind service "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 182
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_348
    const-string v19, "VA.LocalService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 94
    :pswitch_data_364
    .packed-switch 0x1
        :pswitch_80
        :pswitch_2a3
        :pswitch_16a
        :pswitch_301
    .end packed-switch
.end method
