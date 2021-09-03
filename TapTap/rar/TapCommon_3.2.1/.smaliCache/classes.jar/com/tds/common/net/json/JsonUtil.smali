.class public Lcom/tds/common/net/json/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Lcom/tds/common/net/json/TypeRef;)Ljava/lang/Object;
    .registers 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/tds/common/net/json/JsonUtil;->parseInternal(Ljava/lang/String;Lcom/tds/common/net/json/TypeRef;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 58
    :catch_5
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lorg/json/JSONException;

    if-eqz v1, :cond_e

    .line 60
    move-object v1, v0

    check-cast v1, Lorg/json/JSONException;

    throw v1

    .line 62
    :cond_e
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/json/JSONException;

    throw v1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/tds/common/net/json/JsonUtil;->parseInternal(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 34
    :catch_5
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lorg/json/JSONException;

    if-eqz v1, :cond_e

    .line 36
    move-object v1, v0

    check-cast v1, Lorg/json/JSONException;

    throw v1

    .line 38
    :cond_e
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/json/JSONException;

    throw v1
.end method

.method public static parse(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/tds/common/net/json/JsonUtil;->parseObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 22
    :catch_5
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lorg/json/JSONException;

    if-eqz v1, :cond_e

    .line 24
    move-object v1, v0

    check-cast v1, Lorg/json/JSONException;

    throw v1

    .line 26
    :cond_e
    new-instance v1, Lorg/json/JSONException;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/json/JSONException;

    throw v1
.end method

.method private static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 12
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 88
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "com":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 91
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 93
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2a

    .line 94
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v2, :cond_28

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .end local v4    # "i":I
    :cond_28
    goto/16 :goto_b9

    .line 95
    :cond_2a
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_3d

    .line 96
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2f
    if-ge v4, v2, :cond_3b

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .end local v4    # "i":I
    :cond_3b
    goto/16 :goto_b9

    .line 97
    :cond_3d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_4f

    .line 98
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_42
    if-ge v4, v2, :cond_4e

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .end local v4    # "i":I
    :cond_4e
    goto :goto_b9

    .line 99
    :cond_4f
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_62

    .line 100
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_54
    if-ge v4, v2, :cond_61

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .end local v4    # "i":I
    :cond_61
    goto :goto_b9

    .line 101
    :cond_62
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_74

    .line 102
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_67
    if-ge v4, v2, :cond_73

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .end local v4    # "i":I
    :cond_73
    goto :goto_b9

    .line 104
    :cond_74
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_95
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/json/JSONObject;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 108
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 109
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a5
    if-ge v6, v2, :cond_b9

    .line 110
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 111
    .local v8, "value":Ljava/lang/Object;
    invoke-static {v3, v6, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 109
    .end local v8    # "value":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    .line 114
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "i":I
    :cond_b9
    :goto_b9
    return-object v3
.end method

.method private static parseInternal(Ljava/lang/String;Lcom/tds/common/net/json/TypeRef;)Ljava/lang/Object;
    .registers 9
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tds/common/net/json/TypeRef<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 68
    .local p1, "typeRef":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    iget-object v0, p1, Lcom/tds/common/net/json/TypeRef;->type:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 69
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p1, Lcom/tds/common/net/json/TypeRef;->type:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 70
    .local v1, "genericTypes":[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Class;

    .line 71
    .local v2, "constructorTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lorg/json/JSONObject;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 72
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_19
    array-length v6, v2

    if-ge v4, v6, :cond_23

    .line 73
    const-class v6, Ljava/lang/Class;

    aput-object v6, v2, v4

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 76
    .end local v4    # "i":I
    :cond_23
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 77
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 79
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    .local v3, "constructorParams":[Ljava/lang/Object;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v5

    .line 81
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_35
    array-length v6, v3

    if-ge v5, v6, :cond_41

    .line 82
    add-int/lit8 v6, v5, -0x1

    aget-object v6, v1, v6

    aput-object v6, v3, v5

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 84
    .end local v5    # "i":I
    :cond_41
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private static parseInternal(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    invoke-static {p0, p1}, Lcom/tds/common/net/json/JsonUtil;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 46
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 47
    invoke-static {p0, p1}, Lcom/tds/common/net/json/JsonUtil;->parsePrimitive(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 48
    :cond_16
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_1f

    .line 49
    invoke-static {p0}, Lcom/tds/common/net/json/JsonUtil;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_1f
    invoke-static {p0, p1}, Lcom/tds/common/net/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 139
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0, p1}, Lcom/tds/common/net/json/JsonUtil;->parseObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static parseObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 144
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 145
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static parsePrimitive(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 118
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 119
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 120
    :cond_9
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 122
    :cond_12
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1b

    .line 123
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    .line 125
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 126
    :cond_24
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2d

    .line 127
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 129
    :cond_2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "json"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 167
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1c

    .line 169
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/tds/common/net/json/JsonUtil;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_27

    .line 171
    :cond_1c
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_27

    .line 172
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/tds/common/net/json/JsonUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 174
    :cond_27
    :goto_27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 175
    .end local v1    # "i":I
    :cond_2d
    return-object v0
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .param p0, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_25

    .line 156
    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/tds/common/net/json/JsonUtil;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    goto :goto_30

    .line 157
    :cond_25
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_30

    .line 158
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/tds/common/net/json/JsonUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 160
    :cond_30
    :goto_30
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_9

    :cond_34
    return-object v0
.end method
