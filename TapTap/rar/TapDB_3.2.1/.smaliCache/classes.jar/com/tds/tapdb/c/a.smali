.class public Lcom/tds/tapdb/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "com.xdwl.smantifraud.XdwlSmAntiFraud$XdwlSmOption"

.field private static final b:Ljava/lang/String; = "com.xdwl.smantifraud.XdwlSmAntiFraud"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.xdwl.smantifraud.XdwlSmAntiFraud"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_19

    const-string v2, "getDeviceId"

    const/4 v3, 0x0

    :try_start_a
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    return-object v1

    :catch_19
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;Z)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_14

    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 14

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/tds/tapdb/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string v1, "com.xdwl.smantifraud.XdwlSmAntiFraud$XdwlSmOption"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_a6

    const-string v3, "setOrganization"

    :try_start_1b
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_a6

    const-string v4, "setAppId"

    :try_start_28
    new-array v5, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_a6

    const-string v5, "setPublicKey"

    :try_start_34
    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_a6

    const-string v7, "setAinfoKey"

    :try_start_40
    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_a6

    const-string v8, "setUrl"

    :try_start_4c
    new-array v9, v0, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "CEm5FkrNQT5uU1lrUNyI"

    aput-object v10, v9, v6

    invoke-virtual {v3, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v0, [Ljava/lang/Object;

    const-string v3, "MIIDLzCCAhegAwIBAgIBMDANBgkqhkiG9w0BAQUFADAyMQswCQYDVQQGEwJDTjELMAkGA1UECwwCU00xFjAUBgNVBAMMDWUuaXNodW1laS5jb20wHhcNMjAxMTA5MDkxODI1WhcNNDAxMTA0MDkxODI1WjAyMQswCQYDVQQGEwJDTjELMAkGA1UECwwCU00xFjAUBgNVBAMMDWUuaXNodW1laS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCDX+yT/mjf9Qv4PUxGO3ZGEElF9So/w03crdSzpq5vJhYLuRWzlqpmg4hkA9n/lvfS3c08q4gF2d4dllkHX0JP64FDA2CQs+xRnpy/7kD4rT8kT0aUqsrgDf3GQH7lAsfL67/krKeG8Jh6/Rh09A0OvPUqQDBz4lTDjnPopi0OwdD3EpIIPEjwbfwPY9eOFxwPRI7zqYqKPaMbHnGkXKSZoAlH8M4AfwjRstCEEVmxZN9QwPPc67t4Z6EB92YFmca5JR0Um/pIZP2kHPoxTkQej00nC46wI66sV7y7IVSmLS1RvCiePISrOiVkFz3scMzcHVRdBuZw/7xe2d0fA9QJAgMBAAGjUDBOMB0GA1UdDgQWBBSN+vHlQ6UNpfxoMvJVDxF3YQhPQTAfBgNVHSMEGDAWgBSN+vHlQ6UNpfxoMvJVDxF3YQhPQTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4IBAQBdE6i7sun4pA+c6Dm2GxIE/D9dGh66R+MRaXXow+0OfJY44k6deiVbo6ZRSduEiWPvQwTpDO5y3or1qQ31p3beoSuwfytQfzs5FUtZVjHEen3Q0wmEbDCshst02azSOyFKcI5rAPK2+h39OO5hW4P7WCx0WB8hOt+0DTTzJE3BCt9mFt/kTZZ9APOZ7PMnzAWzmiq7bYKFnFJjZrjNS+y4rYQVwch7z+NPTFps+eOR2ajAjXjOWInxCATT36fcB8kd0ZpIaIlTWdtSLyKVMZJZB9oqv/vmKcqhTFJVwWvn2496ediHUvzA4xwriyIboeNXJfGxfkeVS78waRNQrXj/"

    aput-object v3, p1, v6

    invoke-virtual {v5, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v0, [Ljava/lang/Object;

    const-string v3, "VkqOinnKqWdfyVZDYevlXnRIoLIsZtHHmyVwIbQJxuRtEJoSELVIsBQCPTjeiMxh"

    aput-object v3, p1, v6

    invoke-virtual {v7, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_78} :catch_a6

    if-eqz p2, :cond_7d

    const-string p1, "https://sapi.taptap.com/v3/profile/android"

    goto :goto_7f

    :cond_7d
    const-string p1, "https://hk.sapi.taptap.com/v3/profile/android"

    :goto_7f
    :try_start_7f
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v6

    invoke-virtual {v8, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.xdwl.smantifraud.XdwlSmAntiFraud"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8c} :catch_a6

    const-string p2, "create"

    const/4 v3, 0x2

    :try_start_8f
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    aput-object v1, v4, v0

    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v6

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a5} :catch_a6

    goto :goto_aa

    :catch_a6
    move-exception p0

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;Z)V

    :cond_aa
    :goto_aa
    return-void
.end method
