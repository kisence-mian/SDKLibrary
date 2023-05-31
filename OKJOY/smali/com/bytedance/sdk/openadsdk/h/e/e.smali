.class public Lcom/bytedance/sdk/openadsdk/h/e/e;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "VideoCacheRequest.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/h/e/e;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 4
    .param p3    # Lcom/bytedance/sdk/adnet/core/n$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 2

    .prologue
    .line 31
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
