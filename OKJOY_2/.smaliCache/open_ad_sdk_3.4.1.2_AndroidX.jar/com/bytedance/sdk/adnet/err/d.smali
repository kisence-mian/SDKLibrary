.class public Lcom/bytedance/sdk/adnet/err/d;
.super Lcom/bytedance/sdk/adnet/err/c;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/err/c;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/c;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
