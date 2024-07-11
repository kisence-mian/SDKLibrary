.class final Lcom/bytedance/sdk/openadsdk/preload/a/d/a$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/b/f;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1588
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;

    if-eqz v0, :cond_a

    .line 1591
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->o()V

    .line 1592
    return-void

    .line 1594
    :cond_a
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1595
    if-nez v0, :cond_12

    .line 1596
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 1598
    :cond_12
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1b

    .line 1599
    const/16 v0, 0x9

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    goto :goto_2c

    .line 1600
    :cond_1b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_24

    .line 1601
    const/16 v0, 0x8

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    goto :goto_2c

    .line 1602
    :cond_24
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2d

    .line 1603
    const/16 v0, 0xa

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1608
    :goto_2c
    return-void

    .line 1605
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1606
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
