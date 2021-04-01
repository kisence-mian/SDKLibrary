.class public abstract Lcom/mintegral/msdk/base/common/net/b;
.super Lcom/mintegral/msdk/base/common/net/c;
.source "CommonBaseAsyncHttpRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/c;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/b;->a()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/base/common/net/c;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/b;->a()V

    .line 60
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected final a(Lcom/mintegral/msdk/base/common/net/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/net/d;->e()V

    .line 65
    return-void
.end method
