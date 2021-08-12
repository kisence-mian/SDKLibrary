.class Lcom/bytedance/sdk/a/b/a/g/d;
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
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/Class;


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/g/d;->a:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/d;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/g/d;->c:[Ljava/lang/Class;

    .line 51
    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 149
    nop

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 151
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/d;->c:[Ljava/lang/Class;

    invoke-static {p1, v0, v2}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 152
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/d;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    .line 154
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 157
    goto :goto_1e

    .line 160
    :cond_1d
    move-object v1, p1

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 164
    nop

    .line 166
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_6} :catch_14

    .line 167
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_a} :catch_11

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_f

    .line 168
    goto :goto_10

    .line 167
    :cond_f
    move-object v0, p0

    .line 172
    :goto_10
    goto :goto_15

    .line 170
    :catch_11
    move-exception p1

    move-object v0, p0

    goto :goto_15

    :catch_14
    move-exception p0

    .line 173
    :goto_15
    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 70
    return-object v1

    .line 73
    :cond_c
    :try_start_c
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    .line 74
    :catch_11
    move-exception p1

    .line 75
    return-object v1
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 89
    :catch_5
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 91
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_11

    .line 92
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 94
    :cond_11
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw p2
.end method

.method public varargs c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2c

    .line 113
    :try_start_a
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    .line 114
    :catch_f
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly could not call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    throw p2

    .line 110
    :cond_2c
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not supported for object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public varargs d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/g/d;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 132
    :catch_5
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 134
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_11

    .line 135
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 137
    :cond_11
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    throw p2
.end method
