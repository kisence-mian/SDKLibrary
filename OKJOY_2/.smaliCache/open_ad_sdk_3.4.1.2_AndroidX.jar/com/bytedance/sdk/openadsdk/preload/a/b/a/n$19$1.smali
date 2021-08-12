.class Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19;Lcom/bytedance/sdk/openadsdk/preload/a/v;)V
    .registers 3

    .line 580
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/sql/Timestamp;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 583
    if-eqz p1, :cond_14

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/sql/Timestamp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 588
    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method
