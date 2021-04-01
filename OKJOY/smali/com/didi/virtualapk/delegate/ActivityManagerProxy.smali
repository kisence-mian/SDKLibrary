.class public Lcom/didi/virtualapk/delegate/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VA.IActivityManagerProxy"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/IActivityManager;)V
    .registers 3
    .param p1, "pluginManager"    # Lcom/didi/virtualapk/PluginManager;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 59
    iput-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    .line 60
    return-void
.end method


# virtual methods
.method protected bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 172
    const/4 v3, 0x2

    aget-object v2, p3, v3

    check-cast v2, Landroid/content/Intent;

    .line 173
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 174
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_13

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1a

    .line 176
    :cond_13
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    :goto_19
    return-object v3

    .line 179
    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "sc"

    aget-object v3, p3, v5

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v0, v4, v3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 182
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v4

    aget-object v3, p3, v5

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v4, v3, v2}, Lcom/didi/virtualapk/internal/ComponentsHandler;->remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 183
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_19
.end method

.method protected getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 13
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 225
    iget-object v5, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "hostPackageName":Ljava/lang/String;
    aput-object v0, p2, v8

    .line 228
    aget-object v5, p2, v9

    check-cast v5, [Landroid/content/Intent;

    check-cast v5, [Landroid/content/Intent;

    aget-object v3, v5, v7

    .line 229
    .local v3, "target":Landroid/content/Intent;
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 230
    .local v1, "intentSenderType":I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_35

    .line 231
    iget-object v5, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 232
    iget-object v5, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/didi/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    .line 243
    :cond_34
    :goto_34
    return-void

    .line 233
    :cond_35
    const/4 v5, 0x4

    if-ne v1, v5, :cond_54

    .line 234
    iget-object v5, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5, v3, v7}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 235
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_34

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_34

    .line 237
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v8}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v4

    .line 238
    .local v4, "wrapperIntent":Landroid/content/Intent;
    aget-object v5, p2, v9

    check-cast v5, [Landroid/content/Intent;

    check-cast v5, [Landroid/content/Intent;

    aput-object v4, v5, v7

    goto :goto_34

    .line 240
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "wrapperIntent":Landroid/content/Intent;
    :cond_54
    if-ne v1, v8, :cond_34

    goto :goto_34
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    const-string v6, "startService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 66
    :try_start_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v6

    .line 110
    :goto_10
    return-object v6

    .line 67
    :catch_11
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/Throwable;
    const-string v6, "VA.IActivityManagerProxy"

    const-string v7, "Start service error"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_19
    :goto_19
    :try_start_19
    iget-object v6, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v6, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1e} :catch_b5

    move-result-object v6

    goto :goto_10

    .line 70
    :cond_20
    const-string v6, "stopService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 72
    :try_start_2c
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_31

    move-result-object v6

    goto :goto_10

    .line 73
    :catch_31
    move-exception v4

    .line 74
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string v6, "VA.IActivityManagerProxy"

    const-string v7, "Stop Service error"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 76
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3a
    const-string v6, "stopServiceToken"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 78
    :try_start_46
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4b

    move-result-object v6

    goto :goto_10

    .line 79
    :catch_4b
    move-exception v4

    .line 80
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string v6, "VA.IActivityManagerProxy"

    const-string v7, "Stop service token error"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 82
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_54
    const-string v6, "bindService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 84
    :try_start_60
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_65

    move-result-object v6

    goto :goto_10

    .line 85
    :catch_65
    move-exception v4

    .line 86
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string v6, "VA.IActivityManagerProxy"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 88
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_6c
    const-string v6, "unbindService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 90
    :try_start_78
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7d

    move-result-object v6

    goto :goto_10

    .line 91
    :catch_7d
    move-exception v4

    .line 92
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string v6, "VA.IActivityManagerProxy"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 94
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_84
    const-string v6, "getIntentSender"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 96
    :try_start_90
    invoke-virtual {p0, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_19

    .line 97
    :catch_94
    move-exception v4

    .line 98
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "VA.IActivityManagerProxy"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 100
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9c
    const-string v6, "overridePendingTransition"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 102
    :try_start_a8
    invoke-virtual {p0, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ad

    goto/16 :goto_19

    .line 103
    :catch_ad
    move-exception v4

    .line 104
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v6, "VA.IActivityManagerProxy"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 111
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b5
    move-exception v5

    .line 112
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 113
    .local v2, "c":Ljava/lang/Throwable;
    if-eqz v2, :cond_ce

    instance-of v6, v2, Landroid/os/DeadObjectException;

    if-eqz v6, :cond_ce

    .line 115
    const-string v6, "activity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 116
    .local v1, "ams":Landroid/os/IBinder;
    if-eqz v1, :cond_ce

    .line 117
    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 118
    .local v0, "am":Landroid/app/IActivityManager;
    iput-object v0, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    .line 122
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "ams":Landroid/os/IBinder;
    :cond_ce
    move-object v3, v5

    .line 124
    .local v3, "cause":Ljava/lang/Throwable;
    :cond_cf
    instance-of v6, v3, Landroid/os/RemoteException;

    if-eqz v6, :cond_d4

    .line 125
    throw v3

    .line 127
    :cond_d4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_cf

    .line 129
    if-eqz v2, :cond_dd

    .end local v2    # "c":Ljava/lang/Throwable;
    :goto_dc
    throw v2

    .restart local v2    # "c":Ljava/lang/Throwable;
    :cond_dd
    move-object v2, v5

    goto :goto_dc
.end method

.method protected overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "hostPackageName":Ljava/lang/String;
    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 248
    return-void
.end method

.method protected startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "target"    # Landroid/content/Intent;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "command"    # I

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, "wrapperIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method protected startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    aget-object v0, p3, v4

    check-cast v0, Landroid/app/IApplicationThread;

    .line 136
    .local v0, "appThread":Landroid/app/IApplicationThread;
    aget-object v2, p3, v5

    check-cast v2, Landroid/content/Intent;

    .line 137
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v2, v4}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 138
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_16

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1d

    .line 140
    :cond_16
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    :goto_1c
    return-object v3

    :cond_1d
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1c
.end method

.method protected stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 147
    aget-object v1, p3, v5

    check-cast v1, Landroid/content/Intent;

    .line 148
    .local v1, "target":Landroid/content/Intent;
    iget-object v2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 149
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_12

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_19

    .line 151
    :cond_12
    iget-object v2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 155
    :goto_18
    return-object v2

    .line 154
    :cond_19
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_18
.end method

.method protected stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    aget-object v0, p3, v4

    check-cast v0, Landroid/content/ComponentName;

    .line 160
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 161
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v2, v4}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 162
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1a

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_21

    .line 164
    :cond_1a
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    :goto_20
    return-object v3

    .line 167
    :cond_21
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 168
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_20
.end method

.method protected unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 187
    aget-object v0, p3, v4

    check-cast v0, Landroid/os/IBinder;

    .line 188
    .local v0, "iServiceConnection":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;

    move-result-object v2

    .line 189
    .local v2, "target":Landroid/content/Intent;
    if-nez v2, :cond_18

    .line 191
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 196
    :goto_17
    return-object v3

    .line 194
    :cond_18
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v2, v4}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 195
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 196
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_17
.end method

.method protected wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;
    .registers 12
    .param p1, "target"    # Landroid/content/Intent;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "command"    # I

    .prologue
    .line 206
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    iget-object v4, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "pluginLocation":Ljava/lang/String;
    invoke-static {p2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isLocalService(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    .line 211
    .local v2, "local":Z
    if-eqz v2, :cond_45

    const-class v0, Lcom/didi/virtualapk/delegate/LocalService;

    .line 212
    .local v0, "delegate":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    :goto_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v4}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    const-string v4, "target"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const-string v4, "command"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v4, "plugin_location"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    if-eqz p3, :cond_44

    .line 218
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    :cond_44
    return-object v1

    .line 211
    .end local v0    # "delegate":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_45
    const-class v0, Lcom/didi/virtualapk/delegate/RemoteService;

    goto :goto_22
.end method
