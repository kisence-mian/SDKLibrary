.class public abstract Lcom/bytedance/sdk/a/b/ab;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;
    .registers 5

    .line 223
    if-eqz p3, :cond_8

    .line 224
    new-instance v0, Lcom/bytedance/sdk/a/b/ab$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/ab$1;-><init>(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)V

    return-object v0

    .line 223
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/ab;
    .registers 5

    .line 214
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    .line 215
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/b/ab;->a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;

    move-result-object p0

    return-object p0
.end method

.method private f()Ljava/nio/charset/Charset;
    .registers 3

    .line 184
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->a()Lcom/bytedance/sdk/a/b/u;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_d

    sget-object v1, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    :goto_f
    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/bytedance/sdk/a/b/u;
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .registers 2

    .line 117
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 191
    return-void
.end method

.method public abstract d()Lcom/bytedance/sdk/a/a/e;
.end method

.method public final e()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    .line 176
    :try_start_4
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/ab;->f()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/a/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 177
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 179
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 177
    return-object v1

    .line 179
    :catchall_14
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 180
    throw v1
.end method
