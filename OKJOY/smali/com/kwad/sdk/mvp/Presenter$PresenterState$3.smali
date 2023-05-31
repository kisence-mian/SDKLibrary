.class final enum Lcom/kwad/sdk/mvp/Presenter$PresenterState$3;
.super Lcom/kwad/sdk/mvp/Presenter$PresenterState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/mvp/Presenter$PresenterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;-><init>(Ljava/lang/String;IILcom/kwad/sdk/mvp/Presenter$a;)V

    return-void
.end method


# virtual methods
.method performCallState(Lcom/kwad/sdk/mvp/Presenter;)V
    .registers 5

    invoke-static {p1}, Lcom/kwad/sdk/mvp/Presenter;->b(Lcom/kwad/sdk/mvp/Presenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-static {p1}, Lcom/kwad/sdk/mvp/Presenter;->d(Lcom/kwad/sdk/mvp/Presenter;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1c
    return-void
.end method
