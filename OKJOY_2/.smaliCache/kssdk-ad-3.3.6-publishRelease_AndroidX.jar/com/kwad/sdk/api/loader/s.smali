.class Lcom/kwad/sdk/api/loader/s;
.super Ljava/lang/Object;


# direct methods
.method static a()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_33

    :try_start_12
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    const-string v1, "getRuntime"

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/loader/Reflect;->d(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    const-string v1, "is64Bit"

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/loader/Reflect;->d(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_2f

    return v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    return v2
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/api/loader/s;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "arm64-v8a"

    goto :goto_b

    :cond_9
    const-string v0, "armeabi-v7a"

    :goto_b
    return-object v0
.end method
