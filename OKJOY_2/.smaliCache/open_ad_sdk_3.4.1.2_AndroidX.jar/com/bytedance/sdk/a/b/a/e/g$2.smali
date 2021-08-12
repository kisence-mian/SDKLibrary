.class Lcom/bytedance/sdk/a/b/a/e/g$2;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    .line 339
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$2;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$2;->a:I

    iput-wide p5, p0, Lcom/bytedance/sdk/a/b/a/e/g$2;->c:J

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$2;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$2;->a:I

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$2;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 345
    goto :goto_d

    .line 344
    :catch_c
    move-exception v0

    .line 346
    :goto_d
    return-void
.end method
