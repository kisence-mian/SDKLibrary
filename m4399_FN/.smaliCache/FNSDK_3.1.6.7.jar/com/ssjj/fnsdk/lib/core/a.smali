.class Lcom/ssjj/fnsdk/lib/core/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-class v1, Ljava/lang/String;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_73

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_73

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_45

    goto :goto_73

    :cond_45
    const-class v1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {p0, p2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_73

    :cond_52
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_61

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_73

    :cond_61
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_72

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_72

    invoke-static {p0, p1, p2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_72
    move-object p0, v0

    :cond_73
    :goto_73
    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/reflect/Field;Z)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_7c

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_76

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_10

    goto/16 :goto_76

    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5e

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_19

    goto :goto_5e

    :cond_19
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_59

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_22

    goto :goto_59

    :cond_22
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_54

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2b

    goto :goto_54

    :cond_2b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4f

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_34

    goto :goto_4f

    :cond_34
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4a

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_3d

    goto :goto_4a

    :cond_3d
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_45

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_7c

    :cond_45
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4a
    :goto_4a
    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_4f
    :goto_4f
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_54
    :goto_54
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_59
    :goto_59
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_5e
    :goto_5e
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_70

    const/4 p0, 0x0

    goto :goto_71

    :cond_70
    const/4 p0, 0x1

    :goto_71
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_76
    :goto_76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b

    return-object p0

    :catch_7b
    move-exception p0

    :cond_7c
    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_8a

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_13

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Float;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Double;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Long;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Byte;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_86

    const-class v4, Ljava/lang/Short;

    if-eq v3, v4, :cond_86

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_67

    goto :goto_86

    :cond_67
    const-class v4, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_76

    check-cast v2, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_86

    :cond_76
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_85

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_86

    :cond_85
    move-object v2, v0

    :cond_86
    :goto_86
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    :cond_8a
    :goto_8a
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "class "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_14

    return-object v1

    :cond_14
    if-nez p0, :cond_18

    goto/16 :goto_dc

    :cond_18
    const-class v5, Ljava/lang/String;

    if-ne p0, v5, :cond_22

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_d9

    :cond_22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v5, :cond_d0

    const-class v5, Ljava/lang/Integer;

    if-ne p0, v5, :cond_2c

    goto/16 :goto_d0

    :cond_2c
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v5, :cond_c7

    const-class v5, Ljava/lang/Boolean;

    if-ne p0, v5, :cond_36

    goto/16 :goto_c7

    :cond_36
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v5, :cond_bd

    const-class v5, Ljava/lang/Float;

    if-ne p0, v5, :cond_40

    goto/16 :goto_bd

    :cond_40
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v5, :cond_b2

    const-class v5, Ljava/lang/Double;

    if-ne p0, v5, :cond_4a

    goto/16 :goto_b2

    :cond_4a
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v5, :cond_a3

    const-class v5, Ljava/lang/Long;

    if-ne p0, v5, :cond_53

    goto :goto_a3

    :cond_53
    const-class v5, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_d9

    :cond_68
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-static {p2}, Lcom/ssjj/fnsdk/lib/core/a;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_8d

    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    invoke-static {p2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v6, p3}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8d} :catch_e0

    :cond_8d
    move-object v5, v0

    goto :goto_d9

    :cond_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_9d

    :try_start_93
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9b

    goto :goto_d9

    :catchall_9b
    move-exception v6

    goto :goto_9f

    :catchall_9d
    move-exception v6

    move-object v5, v0

    :goto_9f
    :try_start_9f
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d9

    :cond_a3
    :goto_a3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_ad
    invoke-static {v5, v6}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_d9

    :cond_b2
    :goto_b2
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_ad

    :cond_bd
    :goto_bd
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_ad

    :cond_c7
    :goto_c7
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_ad

    :cond_d0
    :goto_d0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_ad

    :goto_d9
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_dc} :catch_e0

    :goto_dc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :catch_e0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_194

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_194

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_194

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5d

    if-ne v3, v5, :cond_194

    :try_start_21
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_193

    const-string v6, "true"

    if-lez v5, :cond_cc

    :try_start_2e
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_cc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3c

    goto/16 :goto_cc

    :cond_3c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v2, :cond_5a

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_5a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_53} :catch_193

    const/16 v8, 0x7d

    if-ne v7, v8, :cond_5a

    const/4 v2, 0x1

    goto/16 :goto_cd

    :cond_5a
    const-string v7, "\""

    if-eqz p1, :cond_76

    :try_start_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8e

    goto :goto_cd

    :cond_76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8e

    goto :goto_cd

    :cond_8e
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_92} :catch_193

    const/16 p1, 0x54

    if-eq p0, p1, :cond_bc

    const/16 p1, 0x74

    if-eq p0, p1, :cond_bc

    const/16 p1, 0x46

    if-eq p0, p1, :cond_bc

    const/16 p1, 0x66

    if-ne p0, p1, :cond_a3

    goto :goto_bc

    :cond_a3
    const/16 p1, 0x2d

    if-eq p0, p1, :cond_af

    const/16 p1, 0x30

    if-lt p0, p1, :cond_cc

    const/16 p1, 0x39

    if-gt p0, p1, :cond_cc

    :cond_af
    :try_start_af
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b4

    const/4 v2, 0x3

    goto :goto_cd

    :catch_b4
    move-exception p0

    :try_start_b5
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_ba

    const/4 v2, 0x4

    goto :goto_cd

    :catch_ba
    move-exception p0

    goto :goto_cc

    :cond_bc
    :goto_bc
    :try_start_bc
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_ca

    const-string p0, "false"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_cc

    :cond_ca
    const/4 v2, 0x5

    goto :goto_cd

    :cond_cc
    :goto_cc
    const/4 v2, 0x0

    :goto_cd
    packed-switch v2, :pswitch_data_196

    goto/16 :goto_194

    :pswitch_d2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    :goto_d8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt p1, v2, :cond_e0

    goto/16 :goto_172

    :cond_e0
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const/4 v2, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v2, 0x0

    :goto_ed
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_d8

    :pswitch_f7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_fc
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lt v1, p1, :cond_104

    goto/16 :goto_172

    :cond_104
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_108} :catch_193

    :try_start_108
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10f} :catch_110

    goto :goto_122

    :catch_110
    move-exception v2

    if-eqz p1, :cond_122

    :try_start_113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_122

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_122
    :goto_122
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    :pswitch_125
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    :goto_12b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt p1, v2, :cond_132

    goto :goto_172

    :cond_132
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_136} :catch_193

    :try_start_136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13d} :catch_13e

    goto :goto_14e

    :catch_13e
    move-exception v4

    if-eqz v2, :cond_14e

    :try_start_141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14e
    :goto_14e
    add-int/lit8 p1, p1, 0x1

    goto :goto_12b

    :pswitch_151
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_156
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lt v1, p1, :cond_15d

    goto :goto_172

    :cond_15d
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_156

    :pswitch_167
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_16c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lt v1, p1, :cond_174

    :goto_172
    move-object v0, p0

    goto :goto_194

    :cond_174
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_18d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_18d

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Lorg/json/JSONObject;)V

    :cond_18d
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_190} :catch_193

    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    :catch_193
    move-exception p0

    :cond_194
    :goto_194
    return-object v0

    nop

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_167
        :pswitch_151
        :pswitch_125
        :pswitch_f7
        :pswitch_d2
    .end packed-switch
.end method

.method protected static a(Ljava/lang/Object;Z)Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    instance-of v1, p0, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    if-eqz v1, :cond_d

    move-object v1, p0

    check-cast v1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->FIELDS()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1c

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->FIELDS()[Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_24

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    :goto_24
    if-eqz v2, :cond_29

    array-length v3, v2

    if-nez v3, :cond_31

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    :cond_31
    if-eqz v2, :cond_69

    array-length v3, v2

    const/4 v4, 0x0

    :goto_35
    if-lt v4, v3, :cond_38

    goto :goto_69

    :cond_38
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_66

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-nez v7, :cond_66

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_51

    goto :goto_66

    :cond_51
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, p1}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5e

    if-nez p1, :cond_5e

    goto :goto_66

    :cond_5e
    :try_start_5e
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_69
    :goto_69
    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_99

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_99

    :cond_80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_93} :catch_94

    goto :goto_79

    :catch_94
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79

    :cond_99
    :goto_99
    invoke-virtual {v1}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->mapObj()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    if-eqz p0, :cond_d2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_ae

    goto :goto_d2

    :cond_ae
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_b4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_bb

    goto :goto_a7

    :cond_bb
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_cc} :catch_cd

    goto :goto_a7

    :catch_cd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7

    :cond_d2
    :goto_d2
    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_b1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_22

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_21

    if-eqz v1, :cond_22

    move-object v0, v1

    goto :goto_22

    :catchall_21
    move-exception v1

    :cond_22
    :goto_22
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_a4

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2c

    goto/16 :goto_a4

    :cond_2c
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9f

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_36

    goto/16 :goto_9f

    :cond_36
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_99

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3f

    goto :goto_99

    :cond_3f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_92

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_48

    goto :goto_92

    :cond_48
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_8b

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_51

    goto :goto_8b

    :cond_51
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_56

    goto :goto_ac

    :cond_56
    const-class v1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_74

    if-eqz p2, :cond_ac

    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p3}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6c} :catch_6e

    move-object p2, v0

    goto :goto_ac

    :catch_6e
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    goto :goto_ac

    :cond_74
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_ac

    if-eqz p2, :cond_ac

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/core/a;->b(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1, p3}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    goto :goto_ac

    :cond_8b
    :goto_8b
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_a8

    :cond_92
    :goto_92
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    goto :goto_a8

    :cond_99
    :goto_99
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_a8

    :cond_9f
    :goto_9f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_a8

    :cond_a4
    :goto_a4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_a8
    invoke-static {p2, p3}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_ac
    :goto_ac
    :try_start_ac
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_b1

    :catch_b0
    move-exception p0

    :cond_b1
    :goto_b1
    return-void
.end method

.method protected static a(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 15

    if-eqz p0, :cond_a5

    if-nez p1, :cond_6

    goto/16 :goto_a5

    :cond_6
    instance-of v0, p0, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    goto :goto_10

    :cond_f
    move-object v0, v1

    :goto_10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_35

    :goto_33
    move-object v4, v1

    goto :goto_3e

    :cond_35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_3e

    goto :goto_33

    :cond_3e
    :goto_3e
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->FIELDS()[Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_4d

    :cond_45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    :goto_4d
    const/4 v6, 0x0

    if-eqz v5, :cond_8b

    array-length v7, v5

    if-nez v7, :cond_5b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    :cond_5b
    array-length v7, v5

    const/4 v8, 0x0

    :goto_5d
    if-lt v8, v7, :cond_60

    goto :goto_8b

    :cond_60
    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_88

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v11

    if-nez v11, :cond_88

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-eqz v10, :cond_79

    goto :goto_88

    :cond_79
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-static {p0, v9, v4, p2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_8b

    :cond_88
    :goto_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    :cond_8b
    :goto_8b
    if-nez v6, :cond_14

    if-eqz v0, :cond_14

    invoke-static {v4, p2}, Lcom/ssjj/fnsdk/lib/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_9a

    invoke-virtual {v0, v3, v4}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_9a
    invoke-virtual {v0, v3, v5}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->putObj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_9d} :catch_9f

    goto/16 :goto_14

    :catch_9f
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    :cond_a5
    :goto_a5
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "class "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method private static b(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 6

    const-string v0, "<"

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_4a

    const-string v3, ""

    const-string v4, "class "

    if-eqz v2, :cond_41

    :try_start_1d
    const-string v2, ">"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_49

    :cond_41
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_49} :catch_4a

    :goto_49
    return-object p0

    :catch_4a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
