.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 575
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_a

    .line 576
    const/4 p1, 0x0

    return-object p1

    .line 579
    :cond_a
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    .line 580
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$19;Lcom/bytedance/sdk/openadsdk/preload/a/v;)V

    return-object p2
.end method
