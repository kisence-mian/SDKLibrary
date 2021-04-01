.class Lcom/bytedance/sdk/openadsdk/h/g$b;
.super Ljava/lang/Object;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->a:Ljava/io/OutputStream;

    .line 561
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->b:I

    .line 562
    return-void
.end method


# virtual methods
.method a([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/d;
        }
    .end annotation

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->c:Z

    if-nez v0, :cond_c

    .line 571
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->c:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_d

    .line 578
    :cond_c
    return-void

    .line 573
    :catch_d
    move-exception v0

    .line 575
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/c/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/c/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method a()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->c:Z

    return v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 596
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->b:I

    return v0
.end method

.method b([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/d;
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$b;->b:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 593
    return-void

    .line 589
    :catch_b
    move-exception v0

    .line 591
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/c/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/c/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
