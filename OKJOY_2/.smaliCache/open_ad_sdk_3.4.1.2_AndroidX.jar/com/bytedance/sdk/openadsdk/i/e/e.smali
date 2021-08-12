.class public Lcom/bytedance/sdk/openadsdk/i/e/e;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "VideoCacheRequest.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/i/e/e;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .line 25
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2

    .line 31
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 35
    const/4 p1, 0x0

    return p1
.end method
