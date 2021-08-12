.class public final Lcom/bytedance/sdk/a/b/a/c/i;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/a/b/s;)Ljava/lang/String;
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->h()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->j()Ljava/lang/String;

    move-result-object p0

    .line 63
    if-eqz p0, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/y;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p0, p1}, Lcom/bytedance/sdk/a/b/a/c/i;->b(Lcom/bytedance/sdk/a/b/y;Ljava/net/Proxy$Type;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 41
    :cond_1f
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c/i;->a(Lcom/bytedance/sdk/a/b/s;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_2a
    const-string p0, " HTTP/1.1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/bytedance/sdk/a/b/y;Ljava/net/Proxy$Type;)Z
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->g()Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
