.class public abstract Lcom/mintegral/msdk/base/common/net/a/f;
.super Lcom/mintegral/msdk/base/common/net/d;
.source "CommonTextResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/common/net/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/d;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    return-void
.end method

.method public final synthetic b(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    .line 1039
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/f;->c(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    const-string v1, "TextResponseHandler"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    return-void
.end method
