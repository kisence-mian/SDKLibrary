.class public Lcom/bytedance/sdk/openadsdk/utils/ah;
.super Ljava/lang/Object;
.source "TTReflectUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 45
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 46
    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_9} :catch_a

    .line 58
    goto :goto_1e

    .line 47
    :catch_a
    move-exception v1

    .line 49
    :try_start_b
    const-class v1, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 50
    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_15} :catch_16

    .line 57
    goto :goto_1e

    .line 51
    :catch_16
    move-exception v0

    .line 53
    :try_start_17
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1b} :catch_1c

    .line 56
    goto :goto_1e

    .line 54
    :catch_1c
    move-exception p0

    .line 55
    const/4 p0, 0x0

    .line 59
    :goto_1e
    return-object p0
.end method

.method private static a()Ljava/lang/ClassLoader;
    .registers 1

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 67
    if-nez v0, :cond_10

    .line 68
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 70
    :cond_10
    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3f

    .line 26
    :cond_e
    nop

    .line 28
    :try_start_f
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1a

    .line 30
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    move-object v1, p0

    .line 34
    :cond_1a
    goto :goto_3e

    .line 32
    :catchall_1b
    move-exception p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTClassLoader"

    invoke-static {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_3e
    return-object v1

    .line 23
    :cond_3f
    :goto_3f
    return-object v1
.end method
