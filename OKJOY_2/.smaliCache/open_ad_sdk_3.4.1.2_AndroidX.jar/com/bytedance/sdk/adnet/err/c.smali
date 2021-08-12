.class public Lcom/bytedance/sdk/adnet/err/c;
.super Lcom/bytedance/sdk/adnet/err/VAdError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
