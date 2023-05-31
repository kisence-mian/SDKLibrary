.class final Lretrofit2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Utils$WildcardTypeImpl;,
        Lretrofit2/Utils$GenericArrayTypeImpl;,
        Lretrofit2/Utils$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .registers 5
    .param p0, "body"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 322
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 323
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_8
    return-object p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 297
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 300
    :cond_12
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 293
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/Class;

    .end local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :goto_a
    return-object v0

    .restart local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 16
    .param p0, "a"    # Ljava/lang/reflect/Type;
    .param p1, "b"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 99
    if-ne p0, p1, :cond_6

    move v11, v10

    .line 136
    :cond_5
    :goto_5
    return v11

    .line 102
    :cond_6
    instance-of v12, p0, Ljava/lang/Class;

    if-eqz v12, :cond_f

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_5

    .line 105
    :cond_f
    instance-of v12, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_4f

    .line 106
    instance-of v12, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_5

    move-object v4, p0

    .line 107
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .local v4, "pa":Ljava/lang/reflect/ParameterizedType;
    move-object v5, p1

    .line 108
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 109
    .local v5, "pb":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 110
    .local v2, "ownerA":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 111
    .local v3, "ownerB":Ljava/lang/reflect/Type;
    if-eq v2, v3, :cond_2f

    if-eqz v2, :cond_4d

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4d

    .line 112
    :cond_2f
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4d

    .line 113
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4d

    :goto_4b
    move v11, v10

    .line 111
    goto :goto_5

    :cond_4d
    move v10, v11

    .line 113
    goto :goto_4b

    .line 115
    .end local v2    # "ownerA":Ljava/lang/reflect/Type;
    .end local v3    # "ownerB":Ljava/lang/reflect/Type;
    .end local v4    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_4f
    instance-of v12, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v12, :cond_6a

    .line 116
    instance-of v10, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v10, :cond_5

    move-object v0, p0

    .line 117
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .local v0, "ga":Ljava/lang/reflect/GenericArrayType;
    move-object v1, p1

    .line 118
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 119
    .local v1, "gb":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Lretrofit2/Utils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v11

    goto :goto_5

    .line 121
    .end local v0    # "ga":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "gb":Ljava/lang/reflect/GenericArrayType;
    :cond_6a
    instance-of v12, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v12, :cond_99

    .line 122
    instance-of v12, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v12, :cond_5

    move-object v8, p0

    .line 123
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .local v8, "wa":Ljava/lang/reflect/WildcardType;
    move-object v9, p1

    .line 124
    check-cast v9, Ljava/lang/reflect/WildcardType;

    .line 125
    .local v9, "wb":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v9}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_97

    .line 126
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v9}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_97

    :goto_94
    move v11, v10

    .line 125
    goto/16 :goto_5

    :cond_97
    move v10, v11

    .line 126
    goto :goto_94

    .line 128
    .end local v8    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v9    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_99
    instance-of v12, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_5

    .line 129
    instance-of v12, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_5

    move-object v6, p0

    .line 130
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .local v6, "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v7, p1

    .line 131
    check-cast v7, Ljava/lang/reflect/TypeVariable;

    .line 132
    .local v7, "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v12

    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v13

    if-ne v12, v13, :cond_c2

    .line 133
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c2

    :goto_bf
    move v11, v10

    .line 132
    goto/16 :goto_5

    :cond_c2
    move v10, v11

    .line 133
    goto :goto_bf
.end method

.method static getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3
    .param p0, "returnType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 379
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_c

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Call return type must be parameterized as Call<Foo> or Call<? extends Foo>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_c
    const/4 v0, 0x0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v0, p0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 9
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "toResolve":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p2, p1, :cond_3

    .line 174
    .end local p0    # "context":Ljava/lang/reflect/Type;
    :goto_2
    return-object p0

    .line 149
    .restart local p0    # "context":Ljava/lang/reflect/Type;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 150
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "length":I
    :goto_f
    if-ge v0, v2, :cond_34

    .line 152
    aget-object v4, v1, v0

    if-ne v4, p2, :cond_1c

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object p0, v4, v0

    goto :goto_2

    .line 154
    :cond_1c
    aget-object v4, v1, v0

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-static {v4, v5, p2}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    .line 151
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 161
    .end local v0    # "i":I
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "length":I
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 162
    :goto_3a
    const-class v4, Ljava/lang/Object;

    if-eq p1, v4, :cond_5a

    .line 163
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 164
    .local v3, "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, p2, :cond_49

    .line 165
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    .line 166
    :cond_49
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 167
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v3, p2}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    .line 169
    :cond_58
    move-object p1, v3

    .line 170
    goto :goto_3a

    .end local v3    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5a
    move-object p0, p2

    .line 174
    goto :goto_2
.end method

.method static getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .registers 7
    .param p0, "index"    # I
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 339
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 340
    .local v1, "types":[Ljava/lang/reflect/Type;
    if-ltz p0, :cond_9

    array-length v2, v1

    if-lt p0, v2, :cond_37

    .line 341
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not in range [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_37
    aget-object v0, v1, p0

    .line 345
    .local v0, "paramType":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_46

    .line 346
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .end local v0    # "paramType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 348
    :cond_46
    return-object v0
.end method

.method static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 65
    const-string v3, "type == null"

    invoke-static {p0, v3}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_d

    .line 69
    check-cast p0, Ljava/lang/Class;

    .line 90
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_c
    return-object p0

    .line 71
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_d
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_26

    move-object v1, p0

    .line 72
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 76
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 77
    .local v2, "rawType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/Class;

    if-nez v3, :cond_22

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 78
    :cond_22
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "rawType":Ljava/lang/reflect/Type;
    move-object p0, v2

    goto :goto_c

    .line 80
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_26
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_3d

    .line 81
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 82
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c

    .line 84
    .end local v0    # "componentType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3d
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_44

    .line 87
    const-class p0, Ljava/lang/Object;

    goto :goto_c

    .line 89
    :cond_44
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_55

    .line 90
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_c

    .line 93
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_55
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 4
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 198
    :cond_c
    invoke-static {p0, p1, p2}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 197
    invoke-static {p0, p1, v0}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static hasUnresolvableType(Ljava/lang/reflect/Type;)Z
    .registers 10
    .param p0, "type"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_7

    .line 371
    :cond_6
    :goto_6
    return v3

    .line 355
    :cond_7
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_23

    move-object v1, p0

    .line 356
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 357
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    :goto_14
    if-ge v5, v7, :cond_6

    aget-object v2, v6, v5

    .line 358
    .local v2, "typeArgument":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v8

    if-eqz v8, :cond_20

    move v3, v4

    .line 359
    goto :goto_6

    .line 357
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 364
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_23
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_32

    .line 365
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v3

    goto :goto_6

    .line 367
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_32
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_38

    move v3, v4

    .line 368
    goto :goto_6

    .line 370
    :cond_38
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_3e

    move v3, v4

    .line 371
    goto :goto_6

    .line 373
    :cond_3e
    if-nez p0, :cond_65

    const-string v0, "null"

    .line 374
    .local v0, "className":Ljava/lang/String;
    :goto_42
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    .end local v0    # "className":Ljava/lang/String;
    :cond_65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "toFind"    # Ljava/lang/Object;

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 179
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 178
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_10
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method static isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z
    .registers 7
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x0

    .line 312
    array-length v3, p0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_e

    aget-object v0, p0, v2

    .line 313
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 314
    const/4 v1, 0x1

    .line 317
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_e
    return v1

    .line 312
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method static varargs methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static varargs methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    for method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-object v0
.end method

.method static varargs parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "p"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static varargs parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "p"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 25
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    move-object/from16 v17, p2

    .line 205
    check-cast v17, Ljava/lang/reflect/TypeVariable;

    .line 206
    .local v17, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 207
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v10, p2

    .line 266
    .end local v17    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1e
    :goto_1e
    return-object v10

    .line 211
    :cond_1f
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_4b

    move-object/from16 v19, p2

    check-cast v19, Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_4b

    move-object/from16 v11, p2

    .line 212
    check-cast v11, Ljava/lang/Class;

    .line 213
    .local v11, "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 214
    .local v5, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 215
    .local v8, "newComponentType":Ljava/lang/reflect/Type;
    if-ne v5, v8, :cond_45

    .end local v11    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_43
    move-object v10, v11

    goto :goto_1e

    .restart local v11    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_45
    new-instance v11, Lretrofit2/Utils$GenericArrayTypeImpl;

    .end local v11    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v11, v8}, Lretrofit2/Utils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_43

    .line 218
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_4b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v19, v0

    if-eqz v19, :cond_6b

    move-object/from16 v10, p2

    .line 219
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 220
    .local v10, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 221
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 222
    .restart local v8    # "newComponentType":Ljava/lang/reflect/Type;
    if-eq v5, v8, :cond_1e

    new-instance v10, Lretrofit2/Utils$GenericArrayTypeImpl;

    .end local v10    # "original":Ljava/lang/reflect/GenericArrayType;
    invoke-direct {v10, v8}, Lretrofit2/Utils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1e

    .line 225
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_6b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_c6

    move-object/from16 v10, p2

    .line 226
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 227
    .local v10, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 228
    .local v14, "ownerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 229
    .local v9, "newOwnerType":Ljava/lang/reflect/Type;
    if-eq v9, v14, :cond_b1

    const/4 v4, 0x1

    .line 231
    .local v4, "changed":Z
    :goto_86
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 232
    .local v3, "args":[Ljava/lang/reflect/Type;
    const/16 v16, 0x0

    .local v16, "t":I
    array-length v6, v3

    .local v6, "length":I
    :goto_8d
    move/from16 v0, v16

    if-ge v0, v6, :cond_b3

    .line 233
    aget-object v19, v3, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 234
    .local v15, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v19, v3, v16

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_ae

    .line 235
    if-nez v4, :cond_ac

    .line 236
    invoke-virtual {v3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "args":[Ljava/lang/reflect/Type;
    check-cast v3, [Ljava/lang/reflect/Type;

    .line 237
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    .line 239
    :cond_ac
    aput-object v15, v3, v16

    .line 232
    :cond_ae
    add-int/lit8 v16, v16, 0x1

    goto :goto_8d

    .line 229
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v6    # "length":I
    .end local v15    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    .end local v16    # "t":I
    :cond_b1
    const/4 v4, 0x0

    goto :goto_86

    .line 243
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    .restart local v4    # "changed":Z
    .restart local v6    # "length":I
    .restart local v16    # "t":I
    :cond_b3
    if-eqz v4, :cond_1e

    .line 244
    new-instance v19, Lretrofit2/Utils$ParameterizedTypeImpl;

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1, v3}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object/from16 v10, v19

    goto/16 :goto_1e

    .line 247
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v6    # "length":I
    .end local v9    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v10    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "ownerType":Ljava/lang/reflect/Type;
    .end local v16    # "t":I
    :cond_c6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    move/from16 v19, v0

    if-eqz v19, :cond_15c

    move-object/from16 v10, p2

    .line 248
    check-cast v10, Ljava/lang/reflect/WildcardType;

    .line 249
    .local v10, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v10}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v12

    .line 250
    .local v12, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v10}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 252
    .local v13, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_120

    .line 253
    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 254
    .local v7, "lowerBound":Ljava/lang/reflect/Type;
    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, v19

    if-eq v7, v0, :cond_1e

    .line 255
    new-instance v10, Lretrofit2/Utils$WildcardTypeImpl;

    .end local v10    # "original":Ljava/lang/reflect/WildcardType;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/Object;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lretrofit2/Utils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/16 :goto_1e

    .line 257
    .end local v7    # "lowerBound":Ljava/lang/reflect/Type;
    .restart local v10    # "original":Ljava/lang/reflect/WildcardType;
    :cond_120
    array-length v0, v13

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 258
    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 259
    .local v18, "upperBound":Ljava/lang/reflect/Type;
    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1e

    .line 260
    new-instance v10, Lretrofit2/Utils$WildcardTypeImpl;

    .end local v10    # "original":Ljava/lang/reflect/WildcardType;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v18, v19, v20

    sget-object v20, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lretrofit2/Utils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/16 :goto_1e

    .end local v12    # "originalLowerBound":[Ljava/lang/reflect/Type;
    .end local v13    # "originalUpperBound":[Ljava/lang/reflect/Type;
    .end local v18    # "upperBound":Ljava/lang/reflect/Type;
    :cond_15c
    move-object/from16 v10, p2

    .line 266
    goto/16 :goto_1e
.end method

.method private static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 7
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lretrofit2/Utils;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v1

    .line 276
    .local v1, "declaredByRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_7

    .line 284
    .end local p2    # "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    :goto_6
    return-object p2

    .line 278
    .restart local p2    # "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    invoke-static {p0, p1, v1}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 279
    .local v0, "declaredBy":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_6

    .line 280
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, p2}, Lretrofit2/Utils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 281
    .local v2, "index":I
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "declaredBy":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object p2, v3, v2

    goto :goto_6
.end method

.method static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 521
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_7

    .line 522
    check-cast p0, Ljava/lang/VirtualMachineError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 523
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_7
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_e

    .line 524
    check-cast p0, Ljava/lang/ThreadDeath;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 525
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_e
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_15

    .line 526
    check-cast p0, Ljava/lang/LinkageError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 528
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_15
    return-void
.end method

.method static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 185
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static validateServiceInterface(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_e

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API declarations must be interfaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1d

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API interfaces must not extend other interfaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1d
    return-void
.end method
