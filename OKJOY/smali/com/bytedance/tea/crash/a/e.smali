.class public Lcom/bytedance/tea/crash/a/e;
.super Ljava/lang/Object;
.source "ANRUtils.java"


# direct methods
.method static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/bytedance/tea/crash/g/a;->a(Landroid/content/Context;I)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget v2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v1, v2, :cond_13

    .line 53
    invoke-static {v0}, Lcom/bytedance/tea/crash/a/b;->a(Landroid/app/ActivityManager$ProcessErrorStateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Z)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    const-string v2, "thread_number"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v2, "mainStackFromTrace"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/m;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v1
.end method
