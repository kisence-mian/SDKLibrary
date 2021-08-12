.class public Lcom/bytedance/sdk/openadsdk/preload/falconx/b/a;
.super Ljava/lang/Object;
.source "WebResourceUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    if-eqz p0, :cond_69

    .line 50
    if-nez p1, :cond_c

    .line 51
    :try_start_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    move-object v6, p1

    goto :goto_d

    .line 50
    :cond_c
    move-object v6, p1

    .line 53
    :goto_d
    const-string p1, "content-type"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 55
    const-string p1, "Content-Type"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 57
    :cond_23
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_2c

    .line 59
    const-string v1, "font/ttf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 61
    :cond_2c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_42

    if-eqz v1, :cond_42

    .line 62
    const/16 v4, 0xc8

    .line 63
    const-string v5, "OK"

    .line 64
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 65
    goto :goto_60

    .line 66
    :cond_42
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v0, v0, p0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 67
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_4f

    .line 68
    invoke-virtual {p1, v6}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    goto :goto_60

    .line 70
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 71
    const-string v1, "mResponseHeaders"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_61

    .line 76
    :goto_60
    return-object p1

    .line 77
    :catchall_61
    move-exception p0

    .line 78
    const-string p1, "WebResourceUtils"

    const-string v1, "getResponseWithHeaders error"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_69
    return-object v0
.end method
