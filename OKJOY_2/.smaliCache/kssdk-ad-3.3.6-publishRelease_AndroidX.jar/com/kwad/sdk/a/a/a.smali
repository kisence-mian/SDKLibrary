.class public Lcom/kwad/sdk/a/a/a;
.super Lcom/kwad/sdk/mvp/Presenter;


# instance fields
.field protected a:Lcom/kwad/sdk/a/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/a/a/a;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/a/a/b;

    iput-object v0, p0, Lcom/kwad/sdk/a/a/a;->a:Lcom/kwad/sdk/a/a/b;

    return-void
.end method
