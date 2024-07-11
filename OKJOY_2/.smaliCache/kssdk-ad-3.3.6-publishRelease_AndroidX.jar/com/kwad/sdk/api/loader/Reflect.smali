.class public Lcom/kwad/sdk/api/loader/Reflect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/loader/Reflect$b;,
        Lcom/kwad/sdk/api/loader/Reflect$a;,
        Lcom/kwad/sdk/api/loader/Reflect$ReflectException;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p1}, Lcom/kwad/sdk/api/loader/Reflect;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/Reflect;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/kwad/sdk/api/loader/Reflect;"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/api/loader/Reflect;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/Reflect;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/kwad/sdk/api/loader/Reflect;"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/api/loader/Reflect;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/api/loader/Reflect;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/api/loader/Reflect;

    if-nez p0, :cond_7

    const-class v1, Ljava/lang/Object;

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_b
    invoke-direct {v0, v1, p0}, Lcom/kwad/sdk/api/loader/Reflect;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Class;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/kwad/sdk/api/loader/Reflect;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    new-instance p1, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    new-instance p1, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p0

    :cond_24
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2e
    return-object p0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->c()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/api/loader/Reflect$a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception v1

    :goto_a
    :try_start_a
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/api/loader/Reflect$a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/api/loader/Reflect;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private a([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    move v0, v2

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_26

    aget-object v1, p2, v0

    const-class v3, Lcom/kwad/sdk/api/loader/Reflect$b;

    if-ne v1, v3, :cond_10

    goto :goto_22

    :cond_10
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/kwad/sdk/api/loader/Reflect;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/kwad/sdk/api/loader/Reflect;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_25

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    return v2

    :cond_26
    const/4 p1, 0x1

    return p1

    :cond_28
    return v2
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_11

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_18

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1f

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_26

    const-class p0, Ljava/lang/Short;

    return-object p0

    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2d

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_34

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3b

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_42

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_48

    const-class p0, Ljava/lang/Void;

    :cond_48
    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lcom/kwad/sdk/api/loader/Reflect;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/kwad/sdk/api/loader/Reflect;

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method private b(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Reflect$a;->b(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_19

    aget-object v5, v1, v4

    invoke-direct {p0, v5, p1, p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16

    return-object v5

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_19
    :goto_19
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Reflect$a;->a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1f
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    invoke-direct {p0, v5, p1, p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2a

    return-object v5

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_34

    goto :goto_19

    :cond_34
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " with params "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " could be found on type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->c()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs b([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [Ljava/lang/Class;

    return-object p0

    :cond_6
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    if-nez v2, :cond_13

    const-class v2, Lcom/kwad/sdk/api/loader/Reflect$b;

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_17
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->c()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/Reflect$a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v1

    :goto_10
    :try_start_10
    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/Reflect$a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_10

    :cond_23
    new-instance p1, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {p1, v1}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/api/loader/Reflect$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/loader/Reflect;->e(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_2e

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    :try_start_d
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/Reflect$a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_22} :catch_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_2e

    goto :goto_24

    :catch_23
    move-exception v0

    :cond_24
    :goto_24
    :try_start_24
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    invoke-static {p2}, Lcom/kwad/sdk/api/loader/Reflect;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p1

    new-instance p2, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {p2, p1}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/kwad/sdk/api/loader/Reflect;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p3}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/api/loader/Reflect;->b(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    new-instance p2, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {p2, p1}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 4

    invoke-static {p2}, Lcom/kwad/sdk/api/loader/Reflect;->b([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/kwad/sdk/api/loader/Reflect;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/Reflect$a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception v0

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/api/loader/Reflect$a;->c(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2e

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/kwad/sdk/api/loader/Reflect;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static {v4, p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    return-object p1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2e
    new-instance p1, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {p1, v0}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Reflect;->b([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/api/loader/Reflect;->a([Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/kwad/sdk/api/loader/Reflect;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/api/loader/Reflect;->a([Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/Reflect;->c(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/loader/Reflect;->e(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    new-instance v0, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Reflect;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/api/loader/Reflect;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    check-cast p1, Lcom/kwad/sdk/api/loader/Reflect;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/Reflect;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
