.class Lokhttp3/internal/platform/OptionalMethod;
.super Ljava/lang/Object;
.source "OptionalMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final methodParams:[Ljava/lang/Class;

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 4
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "methodParams"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;

    .line 47
    iput-object p2, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lokhttp3/internal/platform/OptionalMethod;->methodParams:[Ljava/lang/Class;

    .line 49
    return-void
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 148
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 149
    iget-object v1, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/internal/platform/OptionalMethod;->methodParams:[Ljava/lang/Class;

    invoke-static {p1, v1, v2}, Lokhttp3/internal/platform/OptionalMethod;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_20

    iget-object v1, p0, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;

    .line 152
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 155
    const/4 v0, 0x0

    .line 158
    :cond_20
    return-object v0
.end method

.method private static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_8} :catch_f

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_e

    .line 166
    const/4 v0, 0x0

    .line 171
    :cond_e
    :goto_e
    return-object v0

    .line 168
    :catch_f
    move-exception v1

    goto :goto_e
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, "m":Ljava/lang/reflect/Method;
    if-nez v2, :cond_2f

    .line 108
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported for object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 111
    :cond_2f
    :try_start_2f
    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_32} :catch_34

    move-result-object v3

    return-object v3

    .line 112
    :catch_34
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpectedly could not call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 115
    .local v1, "error":Ljava/lang/AssertionError;
    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 116
    throw v1
.end method

.method public varargs invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 67
    .local v1, "m":Ljava/lang/reflect/Method;
    if-nez v1, :cond_c

    .line 73
    :goto_b
    return-object v2

    .line 71
    :cond_c
    :try_start_c
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_b

    .line 72
    :catch_11
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_b
.end method

.method public varargs invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v3

    return-object v3

    .line 87
    :catch_5
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 89
    .local v2, "targetException":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_11

    .line 90
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "targetException":Ljava/lang/Throwable;
    throw v2

    .line 92
    .restart local v2    # "targetException":Ljava/lang/Throwable;
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "Unexpected exception"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 93
    .local v1, "error":Ljava/lang/AssertionError;
    invoke-virtual {v1, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    throw v1
.end method

.method public varargs invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/platform/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v3

    return-object v3

    .line 130
    :catch_5
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 132
    .local v2, "targetException":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_11

    .line 133
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "targetException":Ljava/lang/Throwable;
    throw v2

    .line 135
    .restart local v2    # "targetException":Ljava/lang/Throwable;
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "Unexpected exception"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 136
    .local v1, "error":Ljava/lang/AssertionError;
    invoke-virtual {v1, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 137
    throw v1
.end method

.method public isSupported(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
