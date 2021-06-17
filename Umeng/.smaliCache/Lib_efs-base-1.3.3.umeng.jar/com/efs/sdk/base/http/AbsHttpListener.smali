.class public abstract Lcom/efs/sdk/base/http/AbsHttpListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/h/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/efs/sdk/base/a/h/a/b<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Lcom/efs/sdk/base/http/HttpResponse;)V
.end method

.method public abstract onSuccess(Lcom/efs/sdk/base/http/HttpResponse;)V
.end method

.method public result(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 3

    .line 21
    if-eqz p1, :cond_a

    iget-boolean v0, p1, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/http/AbsHttpListener;->onSuccess(Lcom/efs/sdk/base/http/HttpResponse;)V

    return-void

    .line 24
    :cond_a
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/http/AbsHttpListener;->onError(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 26
    return-void
.end method

.method public bridge synthetic result(Ljava/lang/Object;)V
    .registers 2

    .line 17
    check-cast p1, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/http/AbsHttpListener;->result(Lcom/efs/sdk/base/http/HttpResponse;)V

    return-void
.end method
