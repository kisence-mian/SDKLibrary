.class public final Lcom/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .registers 2
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .line 64
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 6
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 104
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1f

    .line 105
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 106
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    check-cast v1, Ljava/lang/reflect/Type;

    return-object v1

    .line 108
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_38

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 110
    .local v0, "p":Ljava/lang/reflect/ParameterizedType;
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 111
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 110
    return-object v1

    .line 113
    .end local v0    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_38
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_49

    .line 114
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 115
    .local v0, "g":Ljava/lang/reflect/GenericArrayType;
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1

    .line 117
    .end local v0    # "g":Ljava/lang/reflect/GenericArrayType;
    :cond_49
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5e

    .line 118
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 119
    .local v0, "w":Ljava/lang/reflect/WildcardType;
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1

    .line 123
    .end local v0    # "w":Ljava/lang/reflect/WildcardType;
    :cond_5e
    return-object p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 457
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 458
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 450
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 451
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 162
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/reflect/Type;
    .param p1, "b"    # Ljava/lang/reflect/Type;

    .line 169
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 171
    return v0

    .line 173
    :cond_4
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 177
    :cond_d
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 178
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_17

    .line 179
    return v2

    .line 183
    :cond_17
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 184
    .local v1, "pa":Ljava/lang/reflect/ParameterizedType;
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 185
    .local v3, "pb":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 186
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 187
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_49

    :cond_48
    move v0, v2

    .line 185
    :goto_49
    return v0

    .line 189
    .end local v1    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_4a
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_66

    .line 190
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_53

    .line 191
    return v2

    .line 194
    :cond_53
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 195
    .local v0, "ga":Ljava/lang/reflect/GenericArrayType;
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 196
    .local v1, "gb":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    return v2

    .line 198
    .end local v0    # "ga":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "gb":Ljava/lang/reflect/GenericArrayType;
    :cond_66
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_94

    .line 199
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_6f

    .line 200
    return v2

    .line 203
    :cond_6f
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 204
    .local v1, "wa":Ljava/lang/reflect/WildcardType;
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 205
    .local v3, "wb":Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 206
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    goto :goto_93

    :cond_92
    move v0, v2

    .line 205
    :goto_93
    return v0

    .line 208
    .end local v1    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v3    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_94
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_be

    .line 209
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_9d

    .line 210
    return v2

    .line 212
    :cond_9d
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 213
    .local v1, "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 214
    .local v3, "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v5

    if-ne v4, v5, :cond_bc

    .line 215
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    goto :goto_bd

    :cond_bc
    move v0, v2

    .line 214
    :goto_bd
    return v0

    .line 219
    .end local v1    # "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v3    # "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_be
    return v2
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2
    .param p0, "array"    # Ljava/lang/reflect/Type;

    .line 292
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 293
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_13

    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 292
    :goto_13
    return-object v0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 302
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Collection;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 304
    .local v0, "collectionType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 305
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v2

    .line 307
    :cond_14
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_22

    .line 308
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1

    .line 310
    :cond_22
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 237
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "toResolve":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p2, p1, :cond_3

    .line 238
    return-object p0

    .line 242
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 243
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 244
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "length":I
    :goto_f
    if-ge v1, v2, :cond_34

    .line 245
    aget-object v3, v0, v1

    if-ne v3, p2, :cond_1c

    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v1

    return-object v3

    .line 247
    :cond_1c
    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    invoke-static {v3, v4, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3

    .line 244
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 254
    .end local v0    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 255
    :goto_3a
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_5a

    .line 256
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, p2, :cond_49

    .line 258
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 259
    :cond_49
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 260
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 262
    :cond_58
    move-object p1, v0

    .line 263
    .end local v0    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3a

    .line 267
    :cond_5a
    return-object p2
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .registers 7
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 323
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Properties;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v0, :cond_12

    .line 324
    new-array v0, v3, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    .line 327
    :cond_12
    const-class v0, Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 329
    .local v0, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_24

    .line 330
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 331
    .local v1, "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 333
    .end local v1    # "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_24
    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/Object;

    aput-object v2, v3, v1

    return-object v3
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 128
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 130
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 132
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1c

    .line 133
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 138
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 139
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 140
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 142
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_1c
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 143
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 144
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 146
    .end local v0    # "componentType":Ljava/lang/reflect/Type;
    :cond_35
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3c

    .line 149
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 151
    :cond_3c
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4e

    .line 152
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 155
    :cond_4e
    if-nez p0, :cond_53

    const-string v0, "null"

    goto :goto_5b

    :cond_53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "className":Ljava/lang/String;
    :goto_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 278
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    .line 280
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p0, v0, v1

    .line 282
    :cond_e
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 283
    nop

    .line 284
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 283
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 224
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "toFind"    # Ljava/lang/Object;

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "length":I
    :goto_2
    if-ge v0, v1, :cond_10

    .line 438
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 439
    return v0

    .line 437
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 442
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
    .param p1, "rawType"    # Ljava/lang/reflect/Type;
    .param p2, "typeArguments"    # [Ljava/lang/reflect/Type;

    .line 54
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 337
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;
    .registers 13
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/TypeVariable;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 344
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "visitedTypeVariables":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/TypeVariable;>;"
    :goto_0
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_19

    .line 345
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 346
    .local v0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 348
    return-object p2

    .line 350
    :cond_e
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 353
    if-ne p2, v0, :cond_18

    .line 354
    return-object p2

    .line 357
    .end local v0    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_18
    goto :goto_0

    :cond_19
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_3a

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 358
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 359
    .local v0, "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 360
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 361
    .local v2, "newComponentType":Ljava/lang/reflect/Type;
    if-ne v1, v2, :cond_35

    move-object v3, v0

    goto :goto_39

    .line 363
    :cond_35
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v3

    .line 361
    :goto_39
    return-object v3

    .line 365
    .end local v0    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    .end local v2    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_3a
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_52

    .line 366
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 367
    .local v0, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 368
    .restart local v1    # "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 369
    .restart local v2    # "newComponentType":Ljava/lang/reflect/Type;
    if-ne v1, v2, :cond_4d

    move-object v3, v0

    goto :goto_51

    .line 371
    :cond_4d
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v3

    .line 369
    :goto_51
    return-object v3

    .line 373
    .end local v0    # "original":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    .end local v2    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_52
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_95

    .line 374
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 375
    .local v0, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 376
    .local v3, "ownerType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v3, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 377
    .local v4, "newOwnerType":Ljava/lang/reflect/Type;
    if-eq v4, v3, :cond_66

    goto :goto_67

    :cond_66
    move v1, v2

    .line 379
    .local v1, "changed":Z
    :goto_67
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 380
    .local v2, "args":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .local v5, "t":I
    array-length v6, v2

    .local v6, "length":I
    :goto_6d
    if-ge v5, v6, :cond_88

    .line 381
    aget-object v7, v2, v5

    invoke-static {p0, p1, v7, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 382
    .local v7, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v8, v2, v5

    if-eq v7, v8, :cond_85

    .line 383
    if-nez v1, :cond_83

    .line 384
    invoke-virtual {v2}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 385
    const/4 v1, 0x1

    .line 387
    :cond_83
    aput-object v7, v2, v5

    .line 380
    .end local v7    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 391
    .end local v5    # "t":I
    .end local v6    # "length":I
    :cond_88
    if-eqz v1, :cond_93

    .line 392
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v5

    goto :goto_94

    :cond_93
    move-object v5, v0

    .line 391
    :goto_94
    return-object v5

    .line 395
    .end local v0    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "changed":Z
    .end local v2    # "args":[Ljava/lang/reflect/Type;
    .end local v3    # "ownerType":Ljava/lang/reflect/Type;
    .end local v4    # "newOwnerType":Ljava/lang/reflect/Type;
    :cond_95
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_cb

    .line 396
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 397
    .local v0, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 398
    .local v3, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 400
    .local v4, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v5, v3

    if-ne v5, v1, :cond_b7

    .line 401
    aget-object v1, v3, v2

    invoke-static {p0, p1, v1, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 402
    .local v1, "lowerBound":Ljava/lang/reflect/Type;
    aget-object v2, v3, v2

    if-eq v1, v2, :cond_b6

    .line 403
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v2

    return-object v2

    .line 402
    .end local v1    # "lowerBound":Ljava/lang/reflect/Type;
    :cond_b6
    goto :goto_c9

    .line 405
    :cond_b7
    array-length v5, v4

    if-ne v5, v1, :cond_c9

    .line 406
    aget-object v1, v4, v2

    invoke-static {p0, p1, v1, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 407
    .local v1, "upperBound":Ljava/lang/reflect/Type;
    aget-object v2, v4, v2

    if-eq v1, v2, :cond_ca

    .line 408
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v2

    return-object v2

    .line 405
    .end local v1    # "upperBound":Ljava/lang/reflect/Type;
    :cond_c9
    :goto_c9
    nop

    .line 411
    :cond_ca
    return-object v0

    .line 414
    .end local v0    # "original":Ljava/lang/reflect/WildcardType;
    .end local v3    # "originalLowerBound":[Ljava/lang/reflect/Type;
    .end local v4    # "originalUpperBound":[Ljava/lang/reflect/Type;
    :cond_cb
    return-object p2
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 7
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 420
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    .line 423
    .local v0, "declaredByRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_7

    .line 424
    return-object p2

    .line 427
    :cond_7
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 428
    .local v1, "declaredBy":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_21

    .line 429
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 430
    .local v2, "index":I
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    return-object v3

    .line 433
    .end local v2    # "index":I
    :cond_21
    return-object p2
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 4
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .line 75
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_c

    .line 76
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    goto :goto_12

    .line 78
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 80
    .restart local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :goto_12
    new-instance v1, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    sget-object v2, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v1, v0, v2}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 6
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .line 90
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    goto :goto_12

    .line 93
    .end local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_e
    new-array v0, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v0, v1

    .line 95
    .restart local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    :goto_12
    new-instance v3, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {v3, v2, v0}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v3
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 228
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method
