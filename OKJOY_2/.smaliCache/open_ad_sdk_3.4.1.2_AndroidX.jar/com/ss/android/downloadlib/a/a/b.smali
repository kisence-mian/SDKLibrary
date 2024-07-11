.class public Lcom/ss/android/downloadlib/a/a/b;
.super Ljava/lang/Object;
.source "HiddenAPIEnforcementPolicyUtils.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/Object;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/downloadlib/a/a/b;->c:Z

    return-void
.end method

.method public static a()V
    .registers 1

    .line 65
    sget-boolean v0, Lcom/ss/android/downloadlib/a/a/b;->c:Z

    if-eqz v0, :cond_5

    .line 66
    return-void

    .line 68
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    :try_start_b
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/b;->b()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 74
    goto :goto_13

    .line 72
    :catchall_f
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_13
    :goto_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/downloadlib/a/a/b;->c:Z

    .line 77
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/ss/android/downloadlib/a/a/b;->a:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/ss/android/downloadlib/a/a/b;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private static b()V
    .registers 9

    .line 24
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getDeclaredMethod"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    const-class v1, Ljava/lang/Class;

    const-string v3, "forName"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "dalvik.system.VMRuntime"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 27
    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "setHiddenApiExemptions"

    aput-object v7, v3, v5

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v5

    aput-object v7, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    sput-object v3, Lcom/ss/android/downloadlib/a/a/b;->a:Ljava/lang/reflect/Method;

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getRuntime"

    aput-object v3, v2, v5

    aput-object v4, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 29
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/a/b;->b:Ljava/lang/Object;

    .line 31
    const-string v1, "Landroid/"

    const-string v2, "Lcom/android/"

    const-string v3, "Ljava/lang/"

    const-string v4, "Ldalvik/system/"

    const-string v5, "Llibcore/io/"

    const-string v6, "Lsun/misc/"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/a/b;->a([Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_70

    .line 40
    goto :goto_71

    .line 38
    :catchall_70
    move-exception v0

    .line 41
    :goto_71
    return-void
.end method

.method private static c()I
    .registers 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 51
    :try_start_6
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_9

    return v0

    .line 52
    :catchall_9
    move-exception v0

    .line 56
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static d()Z
    .registers 2

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/ss/android/downloadlib/a/a/b;->c()I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
