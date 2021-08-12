.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/j$1;
.super Ljava/lang/Object;
.source "SqlDateTypeAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 3
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

    .line 44
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/sql/Date;

    if-ne p1, p2, :cond_e

    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/j;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/j;-><init>()V

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return-object p1
.end method
