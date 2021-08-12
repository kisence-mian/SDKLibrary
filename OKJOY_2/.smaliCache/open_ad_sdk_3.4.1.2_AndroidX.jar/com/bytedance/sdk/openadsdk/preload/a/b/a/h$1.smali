.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
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

    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_e

    .line 42
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;)V

    return-object p2

    .line 44
    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method
