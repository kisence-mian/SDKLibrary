.class public Lcom/tds/common/bridge/command/CommandTaskImpl;
.super Ljava/lang/Object;
.source "CommandTaskImpl.java"

# interfaces
.implements Lcom/tds/common/bridge/command/ICommandTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invoke(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)Ljava/lang/Object;
    .registers 15
    .param p1, "command"    # Lcom/tds/common/bridge/command/Command;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 38
    sget-object v0, Lcom/tds/common/bridge/BridgeHolder;->INSTANCE:Lcom/tds/common/bridge/BridgeHolder;

    iget-object v1, p1, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tds/common/bridge/BridgeHolder;->getBridgeService(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "targetInstance":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 40
    .local v1, "targetMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 42
    .local v2, "targetArgs":[Ljava/lang/Object;
    :try_start_e
    invoke-static {p1}, Lcom/tds/common/bridge/utils/BridgeReflect;->getRegisterService(Lcom/tds/common/bridge/command/Command;)Ljava/lang/Class;

    move-result-object v3

    .line 43
    .local v3, "serviceClz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 44
    .local v4, "methods":[Ljava/lang/reflect/Method;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 45
    .local v7, "method":Ljava/lang/reflect/Method;
    const-class v8, Lcom/tds/common/bridge/annotation/BridgeMethod;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/tds/common/bridge/annotation/BridgeMethod;

    .line 46
    .local v8, "bridgeMethod":Lcom/tds/common/bridge/annotation/BridgeMethod;
    if-eqz v8, :cond_41

    iget-object v9, p1, Lcom/tds/common/bridge/command/Command;->method:Ljava/lang/String;

    invoke-interface {v8}, Lcom/tds/common/bridge/annotation/BridgeMethod;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 47
    invoke-static {v7, p1, p2}, Lcom/tds/common/bridge/utils/BridgeReflect;->constructorCommandArgs(Ljava/lang/reflect/Method;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)[Ljava/lang/Object;

    move-result-object v9

    .line 48
    .local v9, "args":[Ljava/lang/Object;
    array-length v10, v9

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-eq v10, v11, :cond_3f

    .line 49
    goto :goto_41

    .line 51
    :cond_3f
    move-object v1, v7

    .line 52
    move-object v2, v9

    .line 44
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "bridgeMethod":Lcom/tds/common/bridge/annotation/BridgeMethod;
    .end local v9    # "args":[Ljava/lang/Object;
    :cond_41
    :goto_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 55
    :cond_44
    if-eqz v2, :cond_4d

    if-eqz v0, :cond_4d

    .line 58
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 56
    :cond_4d
    new-instance v5, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v6, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_ARGS_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v6}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetInstance":Ljava/lang/Object;
    .end local v1    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "targetArgs":[Ljava/lang/Object;
    .end local p0    # "this":Lcom/tds/common/bridge/command/CommandTaskImpl;
    .end local p1    # "command":Lcom/tds/common/bridge/command/Command;
    .end local p2    # "callback":Lcom/tds/common/bridge/BridgeCallback;
    throw v5
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_59} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_59} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_59} :catch_59

    .line 59
    .end local v3    # "serviceClz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;"
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .restart local v0    # "targetInstance":Ljava/lang/Object;
    .restart local v1    # "targetMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "targetArgs":[Ljava/lang/Object;
    .restart local p0    # "this":Lcom/tds/common/bridge/command/CommandTaskImpl;
    .restart local p1    # "command":Lcom/tds/common/bridge/command/Command;
    .restart local p2    # "callback":Lcom/tds/common/bridge/BridgeCallback;
    :catch_59
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_6e

    :cond_6c
    const-string v4, ""

    .line 62
    .local v4, "expandMessage":Ljava/lang/String;
    :goto_6e
    new-instance v5, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v6, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_ARGS_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v6, v4}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getExpandMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public execute(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "command"    # Lcom/tds/common/bridge/command/Command;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 27
    invoke-static {p1}, Lcom/tds/common/bridge/utils/BridgeReflect;->checkCommand(Lcom/tds/common/bridge/command/Command;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tds/common/bridge/command/CommandTaskImpl;->invoke(Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_14

    iget-boolean v1, p1, Lcom/tds/common/bridge/command/Command;->callback:Z

    if-eqz v1, :cond_14

    .line 32
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 35
    :cond_14
    return-void
.end method
