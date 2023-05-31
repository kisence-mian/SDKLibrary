.class interface abstract Lcom/kwad/sdk/core/request/i$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/request/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V
    .param p1    # Lcom/kwad/sdk/core/response/model/PhotoShareInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
