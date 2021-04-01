.class public Lcom/bytedance/sdk/adnet/core/l;
.super Ljava/lang/Object;
.source "QueueManager.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    check-cast v0, Lcom/bytedance/sdk/adnet/face/IHttpStack;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/adnet/core/l;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 3

    .prologue
    .line 41
    if-nez p1, :cond_7

    new-instance p1, Lcom/bytedance/sdk/adnet/core/h;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/core/h;-><init>()V

    .line 42
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/adnet/core/a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/core/a;-><init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/adnet/core/l;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/b;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/b;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 5

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reqQueue"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/bytedance/sdk/adnet/core/m;

    new-instance v2, Lcom/bytedance/sdk/adnet/core/f;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/adnet/core/f;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;)V

    .line 56
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/m;->a()V

    .line 57
    return-object v1
.end method
