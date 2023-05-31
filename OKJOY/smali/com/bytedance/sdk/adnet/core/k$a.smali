.class Lcom/bytedance/sdk/adnet/core/k$a;
.super Ljava/io/FilterInputStream;
.source "OkStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/k;
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

    .prologue
    .line 289
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/k;->a(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 290
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/k$a;->a:Lcom/bytedance/sdk/a/b/ab;

    .line 291
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

    .prologue
    .line 295
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 297
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/k$a;->a:Lcom/bytedance/sdk/a/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 300
    :goto_8
    return-void

    .line 298
    :catch_9
    move-exception v0

    goto :goto_8
.end method
