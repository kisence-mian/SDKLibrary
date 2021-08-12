.class public abstract Lcom/bytedance/sdk/a/b/z;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/z;
    .registers 4

    .line 53
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    .line 54
    if-eqz p0, :cond_23

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/u;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 56
    if-nez v0, :cond_23

    .line 57
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; charset=utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object p0

    .line 61
    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;
    .registers 4

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[BII)Lcom/bytedance/sdk/a/b/z;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[BII)Lcom/bytedance/sdk/a/b/z;
    .registers 11

    .line 100
    if-eqz p1, :cond_f

    .line 101
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/c;->a(JJJ)V

    .line 102
    new-instance v0, Lcom/bytedance/sdk/a/b/z$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/bytedance/sdk/a/b/z$1;-><init>(Lcom/bytedance/sdk/a/b/u;I[BI)V

    return-object v0

    .line 100
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Lcom/bytedance/sdk/a/b/u;
.end method

.method public abstract a(Lcom/bytedance/sdk/a/a/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const-wide/16 v0, -0x1

    return-wide v0
.end method
