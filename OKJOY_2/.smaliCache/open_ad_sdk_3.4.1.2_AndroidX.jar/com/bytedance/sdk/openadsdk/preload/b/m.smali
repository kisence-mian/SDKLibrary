.class final Lcom/bytedance/sdk/openadsdk/preload/b/m;
.super Ljava/lang/Object;
.source "UnProceedChain.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
        "TIN;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TIN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/b/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TIN;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/m;->a:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
            "TI;*>;>;)TI;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/m;->a:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
            "*TO;>;>;)TO;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/m;->a:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
