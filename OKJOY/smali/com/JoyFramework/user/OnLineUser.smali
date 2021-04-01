.class public Lcom/JoyFramework/user/OnLineUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/user/OnLineUser$a;
    }
.end annotation


# static fields
.field private static onLineUser:Lcom/JoyFramework/user/OnLineUser;


# instance fields
.field private alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

.field private context:Landroid/content/Context;

.field private isAlreadySave:Z

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private subscriptions:Lrx/subscriptions/CompositeSubscription;

.field private timer:Ljava/util/Timer;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/user/OnLineUser;->onLineUser:Lcom/JoyFramework/user/OnLineUser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    .line 47
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 48
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    .line 49
    new-instance v0, Lcom/JoyFramework/user/OnLineUser$a;

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/user/OnLineUser$a;-><init>(Lcom/JoyFramework/user/OnLineUser;Lcom/JoyFramework/user/a;)V

    iput-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/JoyFramework/user/OnLineUser;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/JoyFramework/user/OnLineUser;
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcom/JoyFramework/user/OnLineUser;->onLineUser:Lcom/JoyFramework/user/OnLineUser;

    if-nez v0, :cond_13

    .line 37
    const-class v1, Lcom/JoyFramework/user/OnLineUser;

    monitor-enter v1

    .line 38
    :try_start_7
    sget-object v0, Lcom/JoyFramework/user/OnLineUser;->onLineUser:Lcom/JoyFramework/user/OnLineUser;

    if-nez v0, :cond_12

    .line 39
    new-instance v0, Lcom/JoyFramework/user/OnLineUser;

    invoke-direct {v0}, Lcom/JoyFramework/user/OnLineUser;-><init>()V

    sput-object v0, Lcom/JoyFramework/user/OnLineUser;->onLineUser:Lcom/JoyFramework/user/OnLineUser;

    .line 41
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 43
    :cond_13
    sget-object v0, Lcom/JoyFramework/user/OnLineUser;->onLineUser:Lcom/JoyFramework/user/OnLineUser;

    return-object v0

    .line 41
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getRoleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isAlreadySave()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    return v0
.end method

.method public resetAlreadySave()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    if-eqz v0, :cond_1a

    .line 117
    :cond_c
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 118
    iput-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    .line 119
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser$a;->cancel()Z

    .line 120
    iput-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    .line 122
    :cond_1a
    return-void
.end method

.method public saveOnLineRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    iput-object p1, p0, Lcom/JoyFramework/user/OnLineUser;->serverId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/JoyFramework/user/OnLineUser;->serverName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/JoyFramework/user/OnLineUser;->roleId:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/JoyFramework/user/OnLineUser;->roleName:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/JoyFramework/user/OnLineUser;->userName:Ljava/lang/String;

    .line 90
    iget-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    if-nez v0, :cond_3e

    .line 91
    sget v0, Lcom/JoyFramework/a/a;->G:I

    if-lez v0, :cond_3e

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    if-nez v0, :cond_29

    .line 93
    :cond_1a
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    .line 94
    new-instance v0, Lcom/JoyFramework/user/OnLineUser$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/user/OnLineUser$a;-><init>(Lcom/JoyFramework/user/OnLineUser;Lcom/JoyFramework/user/a;)V

    iput-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    .line 98
    :cond_29
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    sget v2, Lcom/JoyFramework/a/a;->G:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sget v4, Lcom/JoyFramework/a/a;->G:I

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 101
    :cond_3e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    .line 102
    return-void
.end method

.method public sendOnLineTime()V
    .registers 8

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    if-nez v0, :cond_5

    .line 187
    :goto_4
    return-void

    .line 142
    :cond_5
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/remote/a/a;->a(Lcom/JoyFramework/user/OnLineUser;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/JoyFramework/user/OnLineUser;->context:Landroid/content/Context;

    new-instance v6, Lcom/JoyFramework/user/a;

    invoke-direct {v6, p0}, Lcom/JoyFramework/user/a;-><init>(Lcom/JoyFramework/user/OnLineUser;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->o(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    goto :goto_4
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/JoyFramework/user/OnLineUser;->context:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public shutDown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/user/OnLineUser;->isAlreadySave:Z

    .line 129
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    if-eqz v0, :cond_1f

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 131
    iput-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->timer:Ljava/util/Timer;

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser$a;->cancel()Z

    .line 133
    iput-object v1, p0, Lcom/JoyFramework/user/OnLineUser;->alarmTask:Lcom/JoyFramework/user/OnLineUser$a;

    .line 134
    iget-object v0, p0, Lcom/JoyFramework/user/OnLineUser;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 136
    :cond_1f
    return-void
.end method
