.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;
.super Ljava/lang/Object;
.source "TTDynamic.java"


# static fields
.field static a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .line 157
    nop

    .line 159
    nop

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->d()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 163
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 164
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 170
    :cond_56
    move-object v0, v1

    goto :goto_5a

    .line 174
    :cond_58
    goto :goto_15

    .line 177
    :cond_59
    move-object v0, v1

    :cond_5a
    :goto_5a
    nop

    .line 178
    if-eqz v0, :cond_77

    .line 180
    :try_start_5d
    new-instance p0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "utf-8"

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_6f

    .line 183
    move-object v1, p0

    goto :goto_77

    .line 181
    :catchall_6f
    move-exception p0

    .line 182
    const-string p1, "TTDynamic"

    const-string v0, "get html WebResourceResponse error"

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :cond_77
    :goto_77
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 2

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    .line 39
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 63
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V
    .registers 2

    .line 138
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    const/16 p0, 0xa

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 146
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .registers 2

    .line 43
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->d()V

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V

    goto :goto_20

    .line 49
    :cond_1d
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    .line 53
    :cond_20
    :goto_20
    goto :goto_22

    .line 52
    :catchall_21
    move-exception v0

    .line 54
    :goto_22
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 73
    return-void
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 3

    .line 112
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2a

    .line 115
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p0

    .line 117
    if-eqz p0, :cond_29

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 119
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    .line 121
    :cond_29
    return-object p0

    .line 113
    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/core/d/q;
    .registers 1

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 3

    .line 125
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2a

    .line 128
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b()Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p0

    .line 130
    if-eqz p0, :cond_29

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 132
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    .line 134
    :cond_29
    return-object p0

    .line 126
    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()Z
    .registers 1

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b()Z

    move-result v0

    return v0
.end method
