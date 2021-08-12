.class Lcom/bytedance/sdk/adnet/core/j$a;
.super Ljava/io/FilterInputStream;
.source "OkStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/ab;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/ab;)V
    .registers 3

    .line 288
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 289
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/j$a;->a:Lcom/bytedance/sdk/a/b/ab;

    .line 290
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 296
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/j$a;->a:Lcom/bytedance/sdk/a/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->close()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 298
    goto :goto_a

    .line 297
    :catchall_9
    move-exception v0

    .line 299
    :goto_a
    return-void
.end method
