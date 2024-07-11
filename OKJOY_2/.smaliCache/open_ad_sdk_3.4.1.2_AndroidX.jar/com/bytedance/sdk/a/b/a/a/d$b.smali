.class final Lcom/bytedance/sdk/a/b/a/a/d$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lcom/bytedance/sdk/a/b/a/a/d$a;

.field g:J


# virtual methods
.method a(Lcom/bytedance/sdk/a/a/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-wide v3, v0, v2

    .line 1047
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/bytedance/sdk/a/a/d;->l(J)Lcom/bytedance/sdk/a/a/d;

    .line 1046
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1049
    :cond_14
    return-void
.end method
