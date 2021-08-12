.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/c/a;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "BooleanTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/a$1;->a:[I

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 35
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BOOLEAN or NUMBER but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :pswitch_28
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m()I

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 31
    const/4 p1, 0x0

    return-object p1

    .line 28
    :pswitch_3b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_36
        :pswitch_28
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Boolean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    if-nez p2, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    goto :goto_9

    .line 19
    :cond_6
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/Boolean;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 21
    :goto_9
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/a;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/a;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
