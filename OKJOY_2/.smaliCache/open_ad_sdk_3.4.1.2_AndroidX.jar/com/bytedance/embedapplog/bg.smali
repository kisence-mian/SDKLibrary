.class Lcom/bytedance/embedapplog/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/webkit/WebView;)Z
    .registers 7

    .line 16
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "mProvider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 17
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    const-string v1, "android.webkit.WebViewClassic"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 20
    invoke-static {p0}, Lcom/bytedance/embedapplog/bg;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 23
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mAwContents"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isDestroyed"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_59

    .line 30
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_5a

    return p0

    .line 34
    :cond_59
    goto :goto_60

    .line 32
    :catch_5a
    move-exception p0

    .line 33
    const-string v1, "isDestroyed(): "

    invoke-static {v1, p0}, Lcom/bytedance/embedapplog/bo;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_60
    return v0
.end method

.method private static a(Ljava/lang/Object;)Z
    .registers 3

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mWebViewCore"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method
