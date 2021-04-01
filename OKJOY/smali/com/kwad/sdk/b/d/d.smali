.class public abstract Lcom/kwad/sdk/b/d/d;
.super Lcom/kwad/sdk/mvp/Presenter;
.source ""


# instance fields
.field protected e:Lcom/kwad/sdk/b/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->g()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/d/e;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/d;->e:Lcom/kwad/sdk/b/d/e;

    return-void
.end method
