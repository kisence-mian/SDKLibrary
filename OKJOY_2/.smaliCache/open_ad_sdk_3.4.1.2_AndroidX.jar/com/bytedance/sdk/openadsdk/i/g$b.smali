.class Lcom/bytedance/sdk/openadsdk/i/g$b;
.super Ljava/lang/Object;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/g;
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

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->a:Ljava/io/OutputStream;

    .line 561
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->b:I

    .line 562
    return-void
.end method


# virtual methods
.method a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/d;
        }
    .end annotation

    .line 569
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->c:Z

    if-nez v0, :cond_14

    .line 571
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 572
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->c:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_d

    .line 576
    goto :goto_14

    .line 573
    :catch_d
    move-exception p1

    .line 575
    new-instance p2, Lcom/bytedance/sdk/openadsdk/i/c/d;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/i/c/d;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 578
    :cond_14
    :goto_14
    return-void
.end method

.method a()Z
    .registers 2

    .line 565
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->c:Z

    return v0
.end method

.method b()I
    .registers 2

    .line 596
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->b:I

    return v0
.end method

.method b([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/d;
        }
    .end annotation

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$b;->b:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 592
    nop

    .line 593
    return-void

    .line 589
    :catch_c
    move-exception p1

    .line 591
    new-instance p2, Lcom/bytedance/sdk/openadsdk/i/c/d;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/i/c/d;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
