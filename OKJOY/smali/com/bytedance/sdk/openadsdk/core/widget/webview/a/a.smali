.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;
.super Ljava/lang/Object;
.source "TTDynamic.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;)Landroid/webkit/WebResourceResponse;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 112
    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->f()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 118
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 119
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    :cond_54
    move-object v0, v1

    .line 133
    :goto_55
    if-eqz v0, :cond_83

    .line 135
    :try_start_57
    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V

    .line 136
    new-instance v3, Ljava/io/PipedInputStream;

    invoke-direct {v3, v2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;

    invoke-direct {v5, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;-><init>(Ljava/io/File;Ljava/io/PipedOutputStream;)V

    const/16 v0, 0xa

    invoke-virtual {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 169
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-direct {v0, v2, v4, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_7a} :catch_7b

    .line 175
    :goto_7a
    return-object v0

    .line 170
    :catch_7b
    move-exception v0

    .line 171
    const-string v2, "TTDynamic"

    const-string v3, "get html WebResourceResponse error"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_83
    move-object v0, v1

    goto :goto_7a

    :cond_85
    move-object v0, v2

    goto :goto_55

    :cond_87
    move-object v0, v1

    goto :goto_55
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    .line 36
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .prologue
    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 67
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/h/m;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/m;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static a(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/util/Set;)V

    .line 79
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/core/d/p;
    .registers 3

    .prologue
    .line 96
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_a

    .line 97
    :cond_8
    const/4 v0, 0x0

    .line 100
    :goto_9
    return-object v0

    .line 99
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    goto :goto_9
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 40
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->d()V

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V

    .line 51
    :cond_1c
    :goto_1c
    return-void

    .line 46
    :cond_1d
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_1c

    .line 49
    :catch_21
    move-exception v0

    goto :goto_1c
.end method

.method public static c()V
    .registers 1

    .prologue
    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b()V

    .line 58
    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .registers 1

    .prologue
    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c()V

    .line 83
    return-void
.end method

.method public static f()Lcom/bytedance/sdk/openadsdk/core/d/o;
    .registers 1

    .prologue
    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    return-object v0
.end method

.method public static g()Z
    .registers 1

    .prologue
    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b()Z

    move-result v0

    return v0
.end method
