.class public Lcom/tds/common/bridge/utils/BridgeReflect;
.super Ljava/lang/Object;
.source "BridgeReflect.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCommand(Lcom/tds/common/bridge/command/Command;)V
    .registers 3
    .param p0, "command"    # Lcom/tds/common/bridge/command/Command;

    .line 53
    iget-object v0, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tds/common/bridge/command/Command;->method:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    return-void

    .line 54
    :cond_11
    new-instance v0, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v1, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_PARSE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v1}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkParamsMatchMethod(Lorg/json/JSONObject;)Z
    .registers 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 103
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static checkServiceLegal(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 32
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 33
    return v1

    .line 35
    :cond_8
    const-class v0, Lcom/tds/common/bridge/annotation/BridgeService;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_11

    .line 36
    return v1

    .line 38
    :cond_11
    const-class v0, Lcom/tds/common/bridge/IBridgeService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static constructorCommandArgs(Ljava/lang/reflect/Method;Lcom/tds/common/bridge/command/Command;Lcom/tds/common/bridge/BridgeCallback;)[Ljava/lang/Object;
    .registers 10
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "command"    # Lcom/tds/common/bridge/command/Command;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 69
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 74
    .local v2, "originParamsCount":I
    :try_start_8
    iget-object v3, p1, Lcom/tds/common/bridge/command/Command;->args:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 75
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .local v3, "jsonObject":Lorg/json/JSONObject;
    goto :goto_22

    .line 77
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_16
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/tds/common/bridge/command/Command;->args:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    move v2, v4

    .line 80
    :goto_22
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, v0

    if-ge v4, v5, :cond_4b

    .line 81
    aget-object v5, v0, v4

    .line 82
    .local v5, "paramsClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Landroid/app/Activity;

    if-ne v5, v6, :cond_39

    .line 83
    invoke-static {}, Lcom/tds/common/bridge/Bridge;->getInstance()Lcom/tds/common/bridge/Bridge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tds/common/bridge/Bridge;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v1, v4

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 85
    :cond_39
    const-class v6, Lcom/tds/common/bridge/BridgeCallback;

    if-ne v5, v6, :cond_42

    .line 86
    aput-object p2, v1, v4

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 89
    :cond_42
    invoke-static {v3, p0}, Lcom/tds/common/bridge/utils/BridgeReflect;->findParams(Lorg/json/JSONObject;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v4

    .line 80
    .end local v5    # "paramsClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 93
    .end local v4    # "i":I
    :cond_4b
    invoke-static {v3}, Lcom/tds/common/bridge/utils/BridgeReflect;->checkParamsMatchMethod(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_56

    array-length v4, v1

    if-eq v2, v4, :cond_55

    goto :goto_56

    .line 98
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_55
    goto :goto_5e

    .line 94
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_56
    :goto_56
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_59} :catch_5a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_59} :catch_5a

    return-object v4

    .line 96
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_5a
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5e
    return-object v1
.end method

.method private static filterArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 129
    .local v0, "len":I
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_18

    .line 130
    new-array v1, v0, [Ljava/lang/Boolean;

    .line 131
    .local v1, "result":[Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_17

    .line 132
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 134
    .end local v2    # "i":I
    :cond_17
    return-object v1

    .line 136
    .end local v1    # "result":[Ljava/lang/Boolean;
    :cond_18
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2c

    .line 137
    new-array v1, v0, [Ljava/lang/Integer;

    .line 138
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1f
    if-ge v2, v0, :cond_2b

    .line 139
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 141
    .end local v2    # "i":I
    :cond_2b
    return-object v1

    .line 143
    .end local v1    # "result":[Ljava/lang/Integer;
    :cond_2c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_40

    .line 144
    new-array v1, v0, [Ljava/lang/Long;

    .line 145
    .local v1, "result":[Ljava/lang/Long;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_33
    if-ge v2, v0, :cond_3f

    .line 146
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 148
    .end local v2    # "i":I
    :cond_3f
    return-object v1

    .line 150
    .end local v1    # "result":[Ljava/lang/Long;
    :cond_40
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_55

    .line 151
    new-array v1, v0, [Ljava/lang/Float;

    .line 152
    .local v1, "result":[Ljava/lang/Float;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_47
    if-ge v2, v0, :cond_54

    .line 153
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 155
    .end local v2    # "i":I
    :cond_54
    return-object v1

    .line 157
    .end local v1    # "result":[Ljava/lang/Float;
    :cond_55
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_69

    .line 158
    new-array v1, v0, [Ljava/lang/Double;

    .line 159
    .local v1, "result":[Ljava/lang/Double;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5c
    if-ge v2, v0, :cond_68

    .line 160
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 162
    .end local v2    # "i":I
    :cond_68
    return-object v1

    .line 164
    .end local v1    # "result":[Ljava/lang/Double;
    :cond_69
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_7c

    .line 165
    new-array v1, v0, [Ljava/lang/String;

    .line 166
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_70
    if-ge v2, v0, :cond_7b

    .line 167
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 169
    .end local v2    # "i":I
    :cond_7b
    return-object v1

    .line 171
    .end local v1    # "result":[Ljava/lang/String;
    :cond_7c
    new-instance v1, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v2, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_ARGS_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    const-string v3, "\u6570\u7ec4\u7c7b\u578b\u7684\u53c2\u6570\u5fc5\u987b\u4e3a\u57fa\u7840\u6570\u636e\u7c7b\u578b!"

    invoke-virtual {v2, v3}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getExpandMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findParams(Lorg/json/JSONObject;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 12
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 108
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_49

    aget-object v4, v0, v3

    .line 109
    .local v4, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v5, v4

    move v6, v2

    :goto_d
    if-ge v6, v5, :cond_46

    aget-object v7, v4, v6

    .line 110
    .local v7, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v8, v7, Lcom/tds/common/bridge/annotation/BridgeParam;

    if-eqz v8, :cond_43

    .line 111
    move-object v8, v7

    check-cast v8, Lcom/tds/common/bridge/annotation/BridgeParam;

    .line 112
    .local v8, "annotationParams":Lcom/tds/common/bridge/annotation/BridgeParam;
    invoke-interface {v8}, Lcom/tds/common/bridge/annotation/BridgeParam;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 113
    goto :goto_43

    .line 115
    :cond_23
    invoke-interface {v8}, Lcom/tds/common/bridge/annotation/BridgeParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, "args":Ljava/lang/Object;
    invoke-interface {v8}, Lcom/tds/common/bridge/annotation/BridgeParam;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_42

    .line 118
    move-object v2, v1

    check-cast v2, Lorg/json/JSONArray;

    invoke-interface {v8}, Lcom/tds/common/bridge/annotation/BridgeParam;->arrayClz()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tds/common/bridge/utils/BridgeReflect;->filterArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 120
    :cond_42
    return-object v1

    .line 109
    .end local v1    # "args":Ljava/lang/Object;
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v8    # "annotationParams":Lcom/tds/common/bridge/annotation/BridgeParam;
    :cond_43
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 108
    .end local v4    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 124
    :cond_49
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getLegalService(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;"
        }
    .end annotation

    .line 43
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "interfaceClz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 45
    .local v3, "superClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/tds/common/bridge/utils/BridgeReflect;->checkServiceLegal(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 46
    return-object v3

    .line 44
    .end local v3    # "superClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 49
    :cond_14
    new-instance v1, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v2, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_SERVICE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v2}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getRegisterService(Lcom/tds/common/bridge/command/Command;)Ljava/lang/Class;
    .registers 6
    .param p0, "command"    # Lcom/tds/common/bridge/command/Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/bridge/command/Command;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/tds/common/bridge/BridgeHolder;->INSTANCE:Lcom/tds/common/bridge/BridgeHolder;

    iget-object v1, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tds/common/bridge/BridgeHolder;->getBridgeService(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 60
    .local v0, "serviceClz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tds/common/bridge/IBridgeService;>;"
    const-class v1, Lcom/tds/common/bridge/annotation/BridgeService;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/tds/common/bridge/annotation/BridgeService;

    .line 61
    .local v1, "serviceName":Lcom/tds/common/bridge/annotation/BridgeService;
    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/tds/common/bridge/annotation/BridgeService;->value()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/common/bridge/command/Command;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 62
    .local v2, "isServiceRegister":Z
    :goto_27
    if-eqz v2, :cond_2a

    .line 63
    return-object v0

    .line 65
    :cond_2a
    new-instance v3, Lcom/tds/common/bridge/exception/EngineBridgeException;

    sget-object v4, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->COMMAND_SERVICE_ERROR:Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;

    invoke-virtual {v4}, Lcom/tds/common/bridge/exception/EngineBridgeExceptionStatus;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tds/common/bridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
