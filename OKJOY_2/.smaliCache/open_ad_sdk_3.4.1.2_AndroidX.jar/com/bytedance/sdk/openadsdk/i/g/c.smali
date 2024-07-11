.class public Lcom/bytedance/sdk/openadsdk/i/g/c;
.super Ljava/lang/Object;
.source "StorageList.java"


# static fields
.field private static e:Lcom/bytedance/sdk/openadsdk/i/g/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->a:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->b:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->c:Ljava/lang/reflect/Method;

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->d:Ljava/lang/reflect/Method;

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->a:Landroid/content/Context;

    .line 34
    if-eqz v0, :cond_45

    .line 35
    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->b:Ljava/lang/Object;

    .line 37
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->c:Ljava/lang/reflect/Method;

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->d:Ljava/lang/reflect/Method;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_41

    .line 41
    goto :goto_45

    .line 39
    :catch_41
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_45
    :goto_45
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/i/g/c;
    .registers 2

    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/g/c;->e:Lcom/bytedance/sdk/openadsdk/i/g/c;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/g/c;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/g/c;->e:Lcom/bytedance/sdk/openadsdk/i/g/c;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/g/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/g/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/i/g/c;->e:Lcom/bytedance/sdk/openadsdk/i/g/c;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/g/c;->e:Lcom/bytedance/sdk/openadsdk/i/g/c;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 12

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->c:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_7f

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->d:Ljava/lang/reflect/Method;

    if-nez v3, :cond_f

    goto/16 :goto_7f

    .line 55
    :cond_f
    :try_start_f
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 56
    if-eqz v0, :cond_79

    array-length v2, v0

    if-nez v2, :cond_1f

    goto :goto_79

    .line 59
    :cond_1f
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPath"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 60
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isEmulated"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 61
    if-eqz v2, :cond_78

    if-nez v3, :cond_40

    goto :goto_78

    .line 64
    :cond_40
    nop

    .line 65
    array-length v4, v0

    move v5, v1

    :goto_43
    if-ge v5, v4, :cond_77

    aget-object v6, v0, v5

    .line 66
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_56

    .line 67
    goto :goto_74

    .line 69
    :cond_56
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->d:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/i/g/c;->b:Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v1

    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_71} :catch_7a

    if-eqz v6, :cond_74

    .line 71
    return v9

    .line 65
    :cond_74
    :goto_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 76
    :cond_77
    goto :goto_7e

    .line 62
    :cond_78
    :goto_78
    return v1

    .line 57
    :cond_79
    :goto_79
    return v1

    .line 74
    :catch_7a
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :goto_7e
    return v1

    .line 52
    :cond_7f
    :goto_7f
    return v1
.end method
