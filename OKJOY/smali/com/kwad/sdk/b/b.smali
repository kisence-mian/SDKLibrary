.class public Lcom/kwad/sdk/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/i/KsContentAllianceAd;


# instance fields
.field private a:Lcom/kwad/sdk/protocol/model/AdScene;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/protocol/model/AdScene;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/b/b;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    return-void
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/b/b;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/f;->a(Lcom/kwad/sdk/protocol/model/AdScene;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
