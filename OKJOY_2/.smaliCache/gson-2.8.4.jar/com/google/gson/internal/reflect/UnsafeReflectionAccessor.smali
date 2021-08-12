.class final Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;
.super Lcom/google/gson/internal/reflect/ReflectionAccessor;
.source "UnsafeReflectionAccessor.java"


# static fields
.field private static unsafeClass:Ljava/lang/Class;


# instance fields
.field private final overrideField:Ljava/lang/reflect/Field;

.field private final theUnsafe:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionAccessor;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->getUnsafeInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->getOverrideField()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static getOverrideField()Ljava/lang/reflect/Field;
    .registers 2

    .line 81
    :try_start_0
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    const-string v1, "override"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 82
    :catch_9
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getUnsafeInstance()Ljava/lang/Object;
    .registers 3

    .line 70
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.Unsafe"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    .line 71
    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    .local v1, "unsafeField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return-object v0

    .line 74
    .end local v1    # "unsafeField":Ljava/lang/reflect/Field;
    :catch_18
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .registers 7
    .param p1, "ao"    # Ljava/lang/reflect/AccessibleObject;

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->makeAccessibleWithUnsafe(Ljava/lang/reflect/AccessibleObject;)Z

    move-result v0

    .line 41
    .local v0, "success":Z
    if-nez v0, :cond_2b

    .line 44
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_a} :catch_b

    .line 49
    goto :goto_2b

    .line 45
    :catch_b
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gson couldn\'t modify fields for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 51
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2b
    :goto_2b
    return-void
.end method

.method makeAccessibleWithUnsafe(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 13
    .param p1, "ao"    # Ljava/lang/reflect/AccessibleObject;

    .line 55
    iget-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_59

    .line 57
    :try_start_9
    sget-object v0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 59
    .local v4, "overrideOffset":J
    sget-object v2, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    const-string v6, "putBoolean"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 60
    .local v2, "putBooleanMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_57} :catch_58

    .line 61
    return v3

    .line 62
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "putBooleanMethod":Ljava/lang/reflect/Method;
    .end local v4    # "overrideOffset":J
    :catch_58
    move-exception v0

    .line 65
    :cond_59
    return v1
.end method
