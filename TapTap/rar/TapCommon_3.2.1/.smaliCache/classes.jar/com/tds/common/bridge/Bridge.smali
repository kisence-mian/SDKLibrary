.class public Lcom/tds/common/bridge/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/bridge/Bridge$Holder;
    }
.end annotation


# instance fields
.field private mBridgeCallbackMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/bridge/BridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineHandler:Landroid/os/Handler;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/bridge/Bridge$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/bridge/Bridge$1;

    .line 27
    invoke-direct {p0}, Lcom/tds/common/bridge/Bridge;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/bridge/Bridge;
    .param p1, "x1"    # Lcom/tds/common/bridge/command/Command;
    .param p2, "x2"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tds/common/bridge/Bridge;->execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/result/Result;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/bridge/Bridge;
    .param p1, "x1"    # Lcom/tds/common/bridge/result/Result;
    .param p2, "x2"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tds/common/bridge/Bridge;->sendMessage(Lcom/tds/common/bridge/result/Result;Lcom/tds/common/bridge/BridgeCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tds/common/bridge/Bridge;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/bridge/Bridge;

    .line 27
    iget-object v0, p0, Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;

    return-object v0
.end method

.method private constructorEngineHandler(Landroid/os/Looper;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316 Bridge Thread Handler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/tds/common/bridge/Bridge$4;

    invoke-direct {v1, p0}, Lcom/tds/common/bridge/Bridge$4;-><init>(Lcom/tds/common/bridge/Bridge;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tds/common/bridge/Bridge;->mEngineHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u542f\u52a8 Looper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private createEngineHandler()V
    .registers 3

    .line 145
    invoke-static {}, Lcom/tds/common/utils/EngineUtil;->isUnreal()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    return-void

    .line 148
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_64

    iget-object v0, p0, Lcom/tds/common/bridge/Bridge;->mEngineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    goto :goto_64

    .line 152
    :cond_1a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 153
    const-string v0, "Looper is already prepare,start to create EngineHandler"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/bridge/Bridge;->constructorEngineHandler(Landroid/os/Looper;)V

    .line 155
    return-void

    .line 157
    :cond_2d
    const-string v0, "Looper prepare,start to create EngineHandler"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/bridge/Bridge;->constructorEngineHandler(Landroid/os/Looper;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper start loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 162
    return-void

    .line 149
    :cond_64
    :goto_64
    const-string v0, "Bridge Engine Handler already init or Current Thread is main Thread"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 9
    .param p1, "command"    # Lcom/tds/common/bridge/command/Command;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 116
    const-string v0, "Bridge start to execute command"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 118
    :try_start_5
    new-instance v0, Lcom/tds/common/bridge/command/CommandTaskImpl;

    invoke-direct {v0}, Lcom/tds/common/bridge/command/CommandTaskImpl;-><init>()V

    new-instance v1, Lcom/tds/common/bridge/Bridge$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tds/common/bridge/Bridge$3;-><init>(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tds/common/bridge/command/CommandTaskImpl;->execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
    :try_end_12
    .catch Lcom/tds/common/bridge/exception/EngineBridgeException; {:try_start_5 .. :try_end_12} :catch_13

    .line 127
    goto :goto_43

    .line 124
    :catch_13
    move-exception v0

    .line 125
    .local v0, "e":Lcom/tds/common/bridge/exception/EngineBridgeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BridgeException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/tds/common/bridge/exception/EngineBridgeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/tds/common/bridge/command/Command;->onceTime:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tds/common/bridge/result/Result;->newInstance(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tds/common/bridge/result/Result;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/tds/common/bridge/Bridge;->sendMessage(Lcom/tds/common/bridge/result/Result;Lcom/tds/common/bridge/BridgeCallback;)V

    .line 128
    .end local v0    # "e":Lcom/tds/common/bridge/exception/EngineBridgeException;
    :goto_43
    return-void
.end method

.method public static getInstance()Lcom/tds/common/bridge/Bridge;
    .registers 1

    .line 44
    # getter for: Lcom/tds/common/bridge/Bridge$Holder;->sInstance:Lcom/tds/common/bridge/Bridge;
    invoke-static {}, Lcom/tds/common/bridge/Bridge$Holder;->access$100()Lcom/tds/common/bridge/Bridge;

    move-result-object v0

    return-object v0
.end method

.method public static synchronized native nativeOnResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/bridge/exception/EngineBridgeException;
        }
    .end annotation
.end method

.method private sendMessage(Lcom/tds/common/bridge/result/Result;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 6
    .param p1, "result"    # Lcom/tds/common/bridge/result/Result;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 131
    iget-object v0, p0, Lcom/tds/common/bridge/Bridge;->mEngineHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 132
    const-string v0, "EngineHandler isn\'t init, BridgeCallback send Message to Engine"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/tds/common/bridge/result/Result;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 134
    return-void

    .line 136
    :cond_11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    const-string v1, "EngineHandler send Message to Engine"

    invoke-static {v1}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/tds/common/bridge/Bridge;->mEngineHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 142
    return-void

    .line 140
    :cond_25
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Current Thread is Shutting Down"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/tds/common/bridge/Bridge$2;

    invoke-direct {v0, p0}, Lcom/tds/common/bridge/Bridge$2;-><init>(Lcom/tds/common/bridge/Bridge;)V

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/bridge/Bridge;->registerHandler(Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V

    .line 113
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/tds/common/bridge/Bridge;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 49
    const-string v0, "[EngineBridge] init!"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/bridge/Bridge;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public register(Ljava/lang/Class;Lcom/tds/common/bridge/IBridgeService;)V
    .registers 6
    .param p2, "service"    # Lcom/tds/common/bridge/IBridgeService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;",
            "Lcom/tds/common/bridge/IBridgeService;",
            ")V"
        }
    .end annotation

    .line 56
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/tds/common/bridge/utils/BridgeReflect;->checkServiceLegal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 57
    sget-object v0, Lcom/tds/common/bridge/BridgeHolder;->INSTANCE:Lcom/tds/common/bridge/BridgeHolder;

    invoke-virtual {v0, p1, p2}, Lcom/tds/common/bridge/BridgeHolder;->register(Ljava/lang/Class;Lcom/tds/common/bridge/IBridgeService;)V

    .line 58
    return-void

    .line 60
    :cond_12
    invoke-static {p1}, Lcom/tds/common/bridge/utils/BridgeReflect;->getLegalService(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "registerClz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;"
    if-eqz v0, :cond_1e

    .line 62
    sget-object v1, Lcom/tds/common/bridge/BridgeHolder;->INSTANCE:Lcom/tds/common/bridge/BridgeHolder;

    invoke-virtual {v1, v0, p2}, Lcom/tds/common/bridge/BridgeHolder;->register(Ljava/lang/Class;Lcom/tds/common/bridge/IBridgeService;)V

    .line 63
    return-void

    .line 65
    :cond_1e
    new-instance v1, Lcom/tds/common/bridge/exception/EngineBridgeException;

    const-string v2, "\u6ce8\u518c\u7684IBridgeService\u51fa\u73b0\u9519\u8bef"

    invoke-direct {v1, v2}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerHandler(Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 6
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command from Engine Bridge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/tds/common/bridge/Bridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_22

    .line 72
    const-string v0, "Bridge must be init!"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 73
    return-void

    .line 76
    :cond_22
    new-instance v0, Lcom/tds/common/bridge/command/Command;

    invoke-direct {v0, p1}, Lcom/tds/common/bridge/command/Command;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "command":Lcom/tds/common/bridge/command/Command;
    iget-boolean v1, v0, Lcom/tds/common/bridge/command/Command;->callback:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;

    if-eqz v1, :cond_3e

    iget-object v2, v0, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 79
    iget-object v1, p0, Lcom/tds/common/bridge/Bridge;->mBridgeCallbackMaps:Ljava/util/Map;

    iget-object v2, v0, Lcom/tds/common/bridge/command/Command;->callbackId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_3e
    invoke-direct {p0}, Lcom/tds/common/bridge/Bridge;->createEngineHandler()V

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_5c

    .line 85
    invoke-virtual {p0}, Lcom/tds/common/bridge/Bridge;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/tds/common/bridge/Bridge$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/tds/common/bridge/Bridge$1;-><init>(Lcom/tds/common/bridge/Bridge;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void

    .line 93
    :cond_5c
    invoke-direct {p0, v0, p2}, Lcom/tds/common/bridge/Bridge;->execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V

    .line 94
    return-void
.end method
