.class public Lcom/bytedance/tea/crash/a/e;
.super Ljava/lang/Object;
.source "ANRUtils.java"


# direct methods
.method static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 51
    invoke-static {p0, p1}, Lcom/bytedance/tea/crash/g/a;->a(Landroid/content/Context;I)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    .line 52
    if-eqz p0, :cond_13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iget v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne p1, v0, :cond_13

    .line 53
    invoke-static {p0}, Lcom/bytedance/tea/crash/a/b;->a(Landroid/app/ActivityManager$ProcessErrorStateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Z)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    const-string v1, "thread_number"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/m;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "mainStackFromTrace"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method
