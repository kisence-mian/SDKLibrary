.class public Lcom/bytedance/sdk/adnet/err/e;
.super Lcom/bytedance/sdk/adnet/err/VAdError;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/i;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
