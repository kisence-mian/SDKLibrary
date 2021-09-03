.class public Lcom/tds/common/bridge/utils/BridgeJsonHelper;
.super Ljava/lang/Object;
.source "BridgeJsonHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/tds/common/bridge/utils/BridgeJsonHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static array2Json(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;

    .line 147
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 148
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 152
    .local v1, "len":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_3a

    .line 154
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_2f

    .line 155
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 157
    :cond_2f
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .end local v2    # "i":I
    :cond_3a
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static coll2Json(Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 166
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 173
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_30
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static customObject2Json(Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 181
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 182
    .local v1, "fields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_37

    aget-object v5, v1, v4

    .line 184
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_34

    .line 185
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    const/4 v7, 0x0

    .line 189
    .local v7, "value":Ljava/lang/Object;
    :try_start_27
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2d

    move-object v7, v8

    .line 192
    goto :goto_31

    .line 190
    :catch_2d
    move-exception v8

    .line 191
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_31
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 195
    :cond_37
    invoke-static {v2}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 221
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 231
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_7e

    .line 257
    const/16 v2, 0x1f

    if-le v1, v2, :cond_58

    const/16 v2, 0x7f

    if-lt v1, v2, :cond_4b

    const/16 v2, 0x9f

    if-le v1, v2, :cond_58

    goto :goto_4b

    .line 236
    :sswitch_1b
    const-string v2, "\\\\"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    goto :goto_7a

    .line 254
    :sswitch_21
    const-string v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    goto :goto_7a

    .line 233
    :sswitch_27
    const-string v2, "\\\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    goto :goto_7a

    .line 248
    :sswitch_2d
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    goto :goto_7a

    .line 242
    :sswitch_33
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    goto :goto_7a

    .line 245
    :sswitch_39
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    goto :goto_7a

    .line 251
    :sswitch_3f
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    goto :goto_7a

    .line 239
    :sswitch_45
    const-string v2, "\\b"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    goto :goto_7a

    .line 257
    :cond_4b
    :goto_4b
    const/16 v2, 0x2000

    if-lt v1, v2, :cond_54

    const/16 v2, 0x20ff

    if-gt v1, v2, :cond_54

    goto :goto_58

    .line 265
    :cond_54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7a

    .line 258
    :cond_58
    :goto_58
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "ss":Ljava/lang/String;
    const-string v3, "\\u"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_72

    .line 261
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 263
    .end local v3    # "k":I
    :cond_72
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    .end local v2    # "ss":Ljava/lang/String;
    nop

    .line 229
    .end local v1    # "ch":C
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "i":I
    :cond_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        0x8 -> :sswitch_45
        0x9 -> :sswitch_3f
        0xa -> :sswitch_39
        0xc -> :sswitch_33
        0xd -> :sswitch_2d
        0x22 -> :sswitch_27
        0x2f -> :sswitch_21
        0x5c -> :sswitch_1b
    .end sparse-switch
.end method

.method private static map2Json(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 201
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_2c

    goto :goto_17

    .line 207
    :cond_2c
    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    invoke-static {v3, v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_54
    goto :goto_17

    .line 212
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_55
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static object2JsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 134
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 135
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_e
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_17
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_3a
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_46

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_46
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_52

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->coll2Json(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-static {p0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->array2Json(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_61
    invoke-static {p0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->customObject2Json(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseJson2Object(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 38
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 43
    goto :goto_c

    .line 41
    :catch_8
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c
    invoke-static {p0, v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->parseJson2Object(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static parseJson2Object(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 18
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .line 55
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 58
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 62
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_ad

    aget-object v6, v0, v5

    .line 64
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 68
    .local v7, "typeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 69
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v8}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->setProperty(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_a9

    .line 73
    :cond_2e
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "List"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 75
    const-class v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .local v8, "typeObj":Ljava/lang/Object;
    goto :goto_4b

    .line 77
    .end local v8    # "typeObj":Ljava/lang/Object;
    :cond_47
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 80
    .restart local v8    # "typeObj":Ljava/lang/Object;
    :goto_4b
    instance-of v9, v8, Ljava/util/List;

    if-eqz v9, :cond_8a

    .line 82
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 83
    .local v9, "type":Ljava/lang/reflect/Type;
    move-object v10, v9

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 85
    .local v10, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    aget-object v11, v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 87
    .local v11, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 89
    .local v12, "jArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_67
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_86

    .line 91
    move-object v14, v8

    check-cast v14, Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v11, v15}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->parseJson2Object(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    .line 93
    .end local v13    # "i":I
    :cond_86
    invoke-static {v2, v6, v8}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->setProperty(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 94
    .end local v9    # "type":Ljava/lang/reflect/Type;
    .end local v10    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "jArray":Lorg/json/JSONArray;
    goto :goto_a9

    :cond_8a
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_9a

    .line 95
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v6, v9}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->setProperty(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_a9

    .line 98
    :cond_9a
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->parseJson2Object(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v6, v9}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->setProperty(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a9} :catch_ae

    .line 62
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "typeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "typeObj":Ljava/lang/Object;
    :goto_a9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f

    .line 104
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :cond_ad
    goto :goto_b2

    .line 102
    :catch_ae
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b2
    return-object v2
.end method

.method private static setProperty(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 9
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "valueObj"    # Ljava/lang/Object;

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v3

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4b} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4b} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4b} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4b} :catch_4d

    .line 127
    nop

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_51

    .line 125
    :catch_4d
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_51
    return-void
.end method
