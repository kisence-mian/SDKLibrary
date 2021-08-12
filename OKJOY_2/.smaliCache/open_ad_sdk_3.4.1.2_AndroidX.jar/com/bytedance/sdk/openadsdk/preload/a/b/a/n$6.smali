.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$6;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 345
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$30;->a:[I

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 357
    :pswitch_f
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :pswitch_28
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 352
    const/4 p1, 0x0

    return-object p1

    .line 355
    :pswitch_2d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_f
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 363
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$6;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$6;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
