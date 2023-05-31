.class public abstract Lcom/bytedance/sdk/a/b/ab;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;
    .registers 7

    .prologue
    .line 223
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_a
    new-instance v0, Lcom/bytedance/sdk/a/b/ab$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/ab$1;-><init>(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/ab;
    .registers 6

    .prologue
    .line 214
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    .line 215
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lcom/bytedance/sdk/a/b/ab;->a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method

.method public final b()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->c()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/bytedance/sdk/a/a/e;
.end method

.method public close()V
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->c()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 191
    return-void
.end method
