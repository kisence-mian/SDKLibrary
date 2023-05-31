.class public Lcom/bytedance/sdk/openadsdk/utils/aa;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 19
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "forName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 20
    const-class v1, Ljava/lang/Class;

    const-string v2, "getDeclaredMethod"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, [Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 22
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dalvik.system.VMRuntime"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 23
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getRuntime"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setHiddenApiExemptions"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->b:Ljava/lang/reflect/Method;

    .line 25
    const/4 v0, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_6c

    .line 29
    :goto_6b
    return-void

    .line 26
    :catch_6c
    move-exception v0

    .line 27
    const-string v1, "Reflection"

    const-string v2, "reflect bootstrap failed:"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b
.end method

.method public static a()Z
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "L"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/Object;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 55
    :goto_b
    return v0

    .line 52
    :cond_c
    :try_start_c
    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->b:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_b

    .line 54
    :catch_1a
    move-exception v0

    move v0, v1

    .line 55
    goto :goto_b
.end method
