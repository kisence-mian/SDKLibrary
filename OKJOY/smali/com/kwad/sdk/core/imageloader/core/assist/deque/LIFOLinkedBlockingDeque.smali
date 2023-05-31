.class public Lcom/kwad/sdk/core/imageloader/core/assist/deque/LIFOLinkedBlockingDeque;
.super Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x391aa861e4d4f950L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
