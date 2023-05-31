.class public abstract Lcom/bytedance/sdk/a/b/z;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[BII)Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[BII)Lcom/bytedance/sdk/a/b/z;
    .registers 10

    .prologue
    .line 100
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/c;->a(JJJ)V

    .line 102
    new-instance v0, Lcom/bytedance/sdk/a/b/z$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/bytedance/sdk/a/b/z$1;-><init>(Lcom/bytedance/sdk/a/b/u;I[BI)V

    return-object v0
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

    .prologue
    .line 40
    const-wide/16 v0, -0x1

    return-wide v0
.end method
