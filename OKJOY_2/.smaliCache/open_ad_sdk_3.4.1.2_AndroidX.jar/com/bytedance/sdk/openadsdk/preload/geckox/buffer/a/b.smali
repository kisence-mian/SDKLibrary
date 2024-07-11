.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;
.super Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/c;
.source "BufferOutputStream.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/c;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    .line 12
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->flush()V

    .line 60
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a(I)V

    .line 17
    return-void
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a([B)V

    .line 22
    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a([BII)I

    .line 27
    return-void
.end method
