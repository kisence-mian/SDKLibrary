.class Lcom/bytedance/sdk/openadsdk/preload/a/f$a;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1008
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-eqz v0, :cond_8

    .line 1029
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 1030
    return-void

    .line 1027
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;)V"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-nez v0, :cond_7

    .line 1015
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 1016
    return-void

    .line 1013
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-eqz v0, :cond_9

    .line 1022
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1020
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
