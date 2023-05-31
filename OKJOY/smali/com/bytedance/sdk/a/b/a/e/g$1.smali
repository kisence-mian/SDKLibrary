.class Lcom/bytedance/sdk/a/b/a/e/g$1;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/bytedance/sdk/a/b/a/e/b;

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 6

    .prologue
    .line 320
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$1;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$1;->a:I

    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/g$1;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$1;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$1;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$1;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/g;->b(ILcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 327
    :goto_9
    return-void

    .line 325
    :catch_a
    move-exception v0

    goto :goto_9
.end method
