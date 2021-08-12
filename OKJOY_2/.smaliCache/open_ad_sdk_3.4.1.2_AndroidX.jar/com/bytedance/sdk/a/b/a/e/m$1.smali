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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 3

    .line 100
    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/a/e;IZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    int-to-long p3, p3

    invoke-interface {p2, p3, p4}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 95
    const/4 p1, 0x1

    return p1
.end method

.method public a(ILjava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)Z"
        }
    .end annotation

    .line 83
    const/4 p1, 0x1

    return p1
.end method

.method public a(ILjava/util/List;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)Z"
        }
    .end annotation

    .line 88
    const/4 p1, 0x1

    return p1
.end method
