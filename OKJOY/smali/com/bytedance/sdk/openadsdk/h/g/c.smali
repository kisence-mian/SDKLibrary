.class public Lcom/bytedance/sdk/openadsdk/h/g/c;
.super Ljava/lang/Object;
.source "StorageList.java"


# static fields
.field private static e:Lcom/bytedance/sdk/openadsdk/h/g/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_47

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    .line 37
    :try_start_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_47} :catch_48

    .line 43
    :cond_47
    :goto_47
    return-void

    .line 39
    :catch_48
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/g/c;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/bytedance/sdk/openadsdk/h/g/c;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/g/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/g/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public b()Z
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_10

    :cond_e
    move v0, v3

    .line 77
    :goto_f
    return v0

    .line 55
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 56
    if-eqz v0, :cond_24

    array-length v1, v0

    if-nez v1, :cond_26

    :cond_24
    move v0, v3

    .line 57
    goto :goto_f

    .line 59
    :cond_26
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getPath"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 60
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isEmulated"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 61
    if-eqz v5, :cond_4a

    if-nez v6, :cond_4c

    :cond_4a
    move v0, v3

    .line 62
    goto :goto_f

    .line 65
    :cond_4c
    array-length v7, v0

    move v4, v3

    :goto_4e
    if-ge v4, v7, :cond_8a

    aget-object v8, v0, v4

    .line 66
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_65

    .line 65
    :cond_61
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4e

    .line 69
    :cond_65
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v8, "mounted"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_81} :catch_86

    move-result v1

    if-eqz v1, :cond_61

    move v0, v2

    .line 71
    goto :goto_f

    .line 74
    :catch_86
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8a
    move v0, v3

    .line 77
    goto :goto_f
.end method
