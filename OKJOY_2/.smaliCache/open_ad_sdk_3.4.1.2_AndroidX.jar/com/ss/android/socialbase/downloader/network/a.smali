.class public abstract Lcom/ss/android/socialbase/downloader/network/a;
.super Ljava/lang/Object;
.source "AbsDownloadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    .line 17
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    .line 20
    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .registers 3

    .line 35
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, ""

    return-object v0
.end method
