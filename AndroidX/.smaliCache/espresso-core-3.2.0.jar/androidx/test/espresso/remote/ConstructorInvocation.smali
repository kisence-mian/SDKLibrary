.class public final Landroidx/test/espresso/remote/ConstructorInvocation;
.super Ljava/lang/Object;
.source "ConstructorInvocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConstructorInvocation"

.field private static final constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->newBuilder()Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize(J)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->build()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    .line 37
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "annotationClass",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "clazz cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 63
    iput-object p2, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    .line 64
    iput-object p3, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    .line 65
    return-void
.end method

.method static invalidateCache()V
    .registers 1

    .line 69
    sget-object v0, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->invalidateAll()V

    .line 70
    return-void
.end method

.method private varargs invokeConstructorExplosively([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constructorParams"
        }
    .end annotation

    .line 84
    const-string v0, "Cannot create instance of %s"

    const-string v1, "%s(%s)"

    const-string v2, "ConstructorInvocation"

    .line 85
    nop

    .line 86
    new-instance v3, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;

    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    iget-object v5, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroidx/test/espresso/remote/ConstructorInvocation$ConstructorKey;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 89
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_14
    sget-object v8, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v8, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;
    :try_end_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_1c} :catch_119
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_1c} :catch_102
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_1c} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_1c} :catch_c6
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1c} :catch_af
    .catchall {:try_start_14 .. :try_end_1c} :catchall_ac

    .line 90
    if-nez v8, :cond_74

    .line 91
    :try_start_1e
    const-string v7, "Cache miss for constructor: %s(%s). Loading into cache."

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 94
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 91
    invoke-static {v2, v7, v9}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v7, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    if-eqz v7, :cond_51

    .line 98
    iget-object v7, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x0

    :goto_3f
    if-ge v10, v9, :cond_51

    aget-object v11, v7, v10

    .line 99
    iget-object v12, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12
    :try_end_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_49} :catch_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_49} :catch_102
    .catch Ljava/lang/InstantiationException; {:try_start_1e .. :try_end_49} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_49} :catch_c6
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_49} :catch_a6
    .catchall {:try_start_1e .. :try_end_49} :catchall_ac

    if-eqz v12, :cond_4e

    .line 100
    nop

    .line 101
    move-object v7, v11

    goto :goto_52

    .line 98
    :cond_4e
    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    .line 106
    :cond_51
    move-object v7, v8

    :goto_52
    if-nez v7, :cond_5c

    .line 107
    :try_start_54
    iget-object v8, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    iget-object v9, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 110
    :cond_5c
    if-eqz v7, :cond_60

    const/4 v8, 0x1

    goto :goto_61

    :cond_60
    const/4 v8, 0x0

    :goto_61
    const-string v9, "No constructor found for annotation: %s, or parameter types: %s"

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->annotationClass:Ljava/lang/Class;

    iget-object v11, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->parameterTypes:[Ljava/lang/Class;

    .line 114
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 110
    invoke-static {v8, v9, v10, v11}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    sget-object v8, Landroidx/test/espresso/remote/ConstructorInvocation;->constructorCache:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    invoke-interface {v8, v3, v7}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_73} :catch_119
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_73} :catch_102
    .catch Ljava/lang/InstantiationException; {:try_start_54 .. :try_end_73} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_73} :catch_c6
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_73} :catch_af
    .catchall {:try_start_54 .. :try_end_73} :catchall_ac

    goto :goto_8a

    .line 117
    :cond_74
    :try_start_74
    const-string v3, "Cache hit for constructor: %s(%s)."

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v9, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 120
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    .line 121
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    .line 117
    invoke-static {v2, v3, v7}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_74 .. :try_end_89} :catch_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_74 .. :try_end_89} :catch_102
    .catch Ljava/lang/InstantiationException; {:try_start_74 .. :try_end_89} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_74 .. :try_end_89} :catch_c6
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_89} :catch_a6
    .catchall {:try_start_74 .. :try_end_89} :catchall_ac

    move-object v7, v8

    .line 124
    :goto_8a
    :try_start_8a
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 125
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8a .. :try_end_91} :catch_119
    .catch Ljava/lang/IllegalAccessException; {:try_start_8a .. :try_end_91} :catch_102
    .catch Ljava/lang/InstantiationException; {:try_start_8a .. :try_end_91} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8a .. :try_end_91} :catch_c6
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_91} :catch_af
    .catchall {:try_start_8a .. :try_end_91} :catchall_ac

    .line 153
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v1, v3}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    nop

    .line 155
    return-object v0

    .line 149
    :catch_a6
    move-exception v0

    move-object v7, v8

    goto :goto_b0

    .line 126
    :catch_a9
    move-exception v0

    move-object v7, v8

    goto :goto_11a

    .line 153
    :catchall_ac
    move-exception v0

    goto/16 :goto_13b

    .line 149
    :catch_af
    move-exception v0

    .line 150
    :goto_b0
    :try_start_b0
    new-instance v3, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Constructor not accessible: %s"

    new-array v10, v6, [Ljava/lang/Object;

    .line 151
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v5

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 141
    :catch_c6
    move-exception v0

    .line 142
    new-instance v3, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "No constructor found for clazz: %s. Available constructors: %s"

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 146
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 147
    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v9, v6

    .line 143
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    :catch_eb
    move-exception v3

    .line 139
    new-instance v7, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 140
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 135
    :catch_102
    move-exception v3

    .line 136
    new-instance v7, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 137
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 126
    :catch_119
    move-exception v0

    .line 127
    :goto_11a
    new-instance v3, Landroidx/test/espresso/remote/RemoteProtocolException;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Cannot invoke constructor %s with constructorParams [%s] on clazz %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v5

    .line 132
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    iget-object v7, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    .line 133
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v4

    .line 128
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroidx/test/espresso/remote/RemoteProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_13b
    .catchall {:try_start_b0 .. :try_end_13b} :catchall_ac

    .line 153
    :goto_13b
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/test/espresso/remote/ConstructorInvocation;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2, v1, v3}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_150

    :goto_14f
    throw v0

    :goto_150
    goto :goto_14f
.end method


# virtual methods
.method public varargs invokeConstructor([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constructorParams"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Landroidx/test/espresso/remote/ConstructorInvocation;->invokeConstructorExplosively([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
