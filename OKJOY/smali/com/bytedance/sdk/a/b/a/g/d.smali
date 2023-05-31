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
            "Ljava/lang/Class",
            "<*>;"
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/d;->c:[Ljava/lang/Class;

    invoke-static {p1, v1, v2}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/d;->a:Ljava/lang/Class;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/d;->a:Ljava/lang/Class;

    .line 154
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 160
    :cond_1f
    :goto_1f
    return-object v0

    :cond_20
    move-object v0, v1

    goto :goto_1f
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
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
    const/4 v0, 0x0

    .line 164
    .line 166
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v1

    .line 167
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_8} :catch_10

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_13

    .line 173
    :goto_d
    return-object v0

    .line 170
    :catch_e
    move-exception v1

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :cond_13
    move-object v0, v1

    goto :goto_d
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

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    if-nez v1, :cond_c

    .line 75
    :goto_b
    return-object v0

    .line 73
    :cond_c
    :try_start_c
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_b

    .line 74
    :catch_11
    move-exception v1

    goto :goto_b
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 89
    :catch_5
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 91
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_11

    .line 92
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 94
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v1
.end method

.method public varargs c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
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
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/g/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 109
    if-nez v0, :cond_2f

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_2f
    :try_start_2f
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_32} :catch_34

    move-result-object v0

    return-object v0

    .line 114
    :catch_34
    move-exception v1

    .line 116
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpectedly could not call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    throw v2
.end method

.method public varargs d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/g/d;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 132
    :catch_5
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 134
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_11

    .line 135
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 137
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    throw v1
.end method
