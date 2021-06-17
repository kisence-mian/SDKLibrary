.class public abstract Lcom/loongcheer/admobsdk/sample/SampleAdListener;
.super Ljava/lang/Object;
.source "SampleAdListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 1

    .line 33
    return-void
.end method

.method public onAdFetchFailed(Lcom/loongcheer/admobsdk/sample/SampleErrorCode;)V
    .registers 2
    .param p1, "code"    # Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    .line 19
    return-void
.end method

.method public onAdFetchSucceeded()V
    .registers 1

    .line 10
    return-void
.end method

.method public onAdFullScreen()V
    .registers 1

    .line 26
    return-void
.end method
