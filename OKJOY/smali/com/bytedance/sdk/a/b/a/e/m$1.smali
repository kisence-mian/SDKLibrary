.class final Lcom/bytedance/sdk/a/b/a/e/m$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/e/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 3

    .prologue
    .line 100
    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/a/e;IZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method
