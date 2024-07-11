.class public Lcom/bytedance/sdk/openadsdk/utils/ab;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 19
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "forName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 20
    const-class v1, Ljava/lang/Class;

    const-string v3, "getDeclaredMethod"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    const-class v7, [Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "dalvik.system.VMRuntime"

    aput-object v6, v3, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 23
    new-array v3, v4, [Ljava/lang/Object;

    const-string v7, "getRuntime"

    aput-object v7, v3, v5

    aput-object v6, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "setHiddenApiExemptions"

    aput-object v7, v4, v5

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v5

    aput-object v7, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->b:Ljava/lang/reflect/Method;

    .line 25
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5d

    .line 28
    goto :goto_65

    .line 26
    :catchall_5d
    move-exception v0

    .line 27
    const-string v1, "Reflection"

    const-string v2, "reflect bootstrap failed:"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_65
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 65
    const-string v0, "L"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .registers 6

    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/ab;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_a

    goto :goto_15

    .line 52
    :cond_a
    const/4 v3, 0x1

    :try_start_b
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    .line 53
    return v3

    .line 54
    :catchall_13
    move-exception p0

    .line 55
    return v1

    .line 49
    :cond_15
    :goto_15
    return v1
.end method
