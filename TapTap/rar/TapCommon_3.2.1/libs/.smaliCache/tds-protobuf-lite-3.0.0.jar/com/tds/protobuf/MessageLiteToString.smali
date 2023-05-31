.class final Lcom/tds/protobuf/MessageLiteToString;
.super Ljava/lang/Object;
.source "MessageLiteToString.java"


# static fields
.field private static final BUILDER_LIST_SUFFIX:Ljava/lang/String; = "OrBuilderList"

.field private static final BYTES_SUFFIX:Ljava/lang/String; = "Bytes"

.field private static final LIST_SUFFIX:Ljava/lang/String; = "List"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "camelCase"    # Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 231
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 232
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 233
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1b
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 237
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isDefaultValue(Ljava/lang/Object;)Z
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;

    .line 158
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 159
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 161
    :cond_e
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 162
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 164
    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_32

    .line 165
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1

    .line 167
    :cond_32
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_46

    .line 168
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    return v1

    .line 170
    :cond_46
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 171
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 173
    :cond_51
    instance-of v0, p0, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_5c

    .line 174
    sget-object v0, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 176
    :cond_5c
    instance-of v0, p0, Lcom/tds/protobuf/MessageLite;

    if-eqz v0, :cond_6c

    .line 177
    move-object v0, p0

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    if-ne p0, v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v2

    :goto_6b
    return v1

    .line 179
    :cond_6c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_7c

    .line 180
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    return v1

    .line 183
    :cond_7c
    return v2
.end method

.method static final printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .line 197
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 198
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, "entry":Ljava/lang/Object;
    invoke-static {p0, p1, p2, v2}, Lcom/tds/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    .end local v2    # "entry":Ljava/lang/Object;
    goto :goto_b

    .line 202
    :cond_19
    return-void

    .line 205
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    const/16 v1, 0x20

    if-ge v0, p1, :cond_2a

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 209
    .end local v0    # "i":I
    :cond_2a
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    instance-of v0, p3, Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, ": \""

    if-eqz v0, :cond_48

    .line 212
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tds/protobuf/TextFormatEscaper;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 213
    :cond_48
    instance-of v0, p3, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_5f

    .line 214
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/ByteString;

    invoke-static {v1}, Lcom/tds/protobuf/TextFormatEscaper;->escapeBytes(Lcom/tds/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 215
    :cond_5f
    instance-of v0, p3, Lcom/tds/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_84

    .line 216
    const-string v0, " {"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    move-object v0, p3

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    add-int/lit8 v2, p1, 0x2

    invoke-static {v0, p0, v2}, Lcom/tds/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/tds/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 218
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_76
    if-ge v0, p1, :cond_7e

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 222
    .end local v0    # "i":I
    :cond_7e
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 224
    :cond_84
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :goto_91
    return-void
.end method

.method private static reflectivePrintWithIndent(Lcom/tds/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V
    .registers 21
    .param p0, "messageLite"    # Lcom/tds/protobuf/MessageLite;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v3, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v4, "nameToMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 79
    .local v5, "getters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_20
    const-string v10, "get"

    if-ge v9, v7, :cond_4f

    aget-object v11, v6, v9

    .line 80
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_4c

    .line 82
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 85
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 90
    :cond_4f
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 91
    .local v7, "getter":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "suffix":Ljava/lang/String;
    const-string v11, "List"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_c4

    const-string v12, "OrBuilderList"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c4

    .line 93
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 94
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v14, v11

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, "camelCase":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    .line 98
    .local v12, "listMethod":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_c4

    .line 99
    nop

    .line 102
    invoke-static {v11}, Lcom/tds/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    .line 103
    invoke-static {v12, v0, v14}, Lcom/tds/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 99
    invoke-static {v1, v2, v13, v14}, Lcom/tds/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    goto :goto_53

    .line 108
    .end local v11    # "camelCase":Ljava/lang/String;
    .end local v12    # "listMethod":Ljava/lang/reflect/Method;
    :cond_c4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    .line 109
    .local v11, "setter":Ljava/lang/reflect/Method;
    if-nez v11, :cond_e1

    .line 110
    goto/16 :goto_53

    .line 112
    :cond_e1
    const-string v12, "Bytes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 114
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v15, v12

    invoke-virtual {v9, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 113
    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10f

    .line 116
    goto/16 :goto_53

    .line 119
    :cond_10f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "camelCase":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Method;

    .line 124
    .local v14, "getMethod":Ljava/lang/reflect/Method;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 126
    .local v13, "hasMethod":Ljava/lang/reflect/Method;
    if-eqz v14, :cond_195

    .line 127
    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v14, v0, v15}, Lcom/tds/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 128
    .local v15, "value":Ljava/lang/Object;
    if-nez v13, :cond_172

    .line 129
    invoke-static {v15}, Lcom/tds/protobuf/MessageLiteToString;->isDefaultValue(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v16, v3

    if-nez v17, :cond_170

    const/4 v3, 0x1

    goto :goto_180

    :cond_170
    move v3, v8

    goto :goto_180

    :cond_172
    move-object/from16 v16, v3

    .end local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v16, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-array v3, v8, [Ljava/lang/Object;

    .line 130
    invoke-static {v13, v0, v3}, Lcom/tds/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_180
    nop

    .line 132
    .local v3, "hasValue":Z
    if-eqz v3, :cond_190

    .line 133
    nop

    .line 136
    invoke-static {v12}, Lcom/tds/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-static {v1, v2, v8, v15}, Lcom/tds/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v3, v16

    const/4 v8, 0x0

    goto/16 :goto_53

    .line 132
    :cond_190
    move-object/from16 v3, v16

    const/4 v8, 0x0

    goto/16 :goto_53

    .line 126
    .end local v15    # "value":Ljava/lang/Object;
    .end local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v3, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_195
    move-object/from16 v16, v3

    .line 141
    .end local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v7    # "getter":Ljava/lang/String;
    .end local v9    # "suffix":Ljava/lang/String;
    .end local v11    # "setter":Ljava/lang/reflect/Method;
    .end local v12    # "camelCase":Ljava/lang/String;
    .end local v13    # "hasMethod":Ljava/lang/reflect/Method;
    .end local v14    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const/4 v8, 0x0

    goto/16 :goto_53

    .line 143
    .end local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_19a
    move-object/from16 v16, v3

    .end local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    instance-of v3, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    if-eqz v3, :cond_1e0

    .line 144
    move-object v3, v0

    check-cast v3, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v3, v3, Lcom/tds/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/tds/protobuf/FieldSet;

    .line 145
    invoke-virtual {v3}, Lcom/tds/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 146
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :goto_1a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e0

    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 148
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/tds/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    goto :goto_1a9

    .line 152
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :cond_1e0
    move-object v3, v0

    check-cast v3, Lcom/tds/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_1ef

    .line 153
    move-object v3, v0

    check-cast v3, Lcom/tds/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/tds/protobuf/GeneratedMessageLite;->unknownFields:Lcom/tds/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, v1, v2}, Lcom/tds/protobuf/UnknownFieldSetLite;->printWithIndent(Ljava/lang/StringBuilder;I)V

    .line 155
    :cond_1ef
    return-void
.end method

.method static toString(Lcom/tds/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "messageLite"    # Lcom/tds/protobuf/MessageLite;
    .param p1, "commentString"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tds/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/tds/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
