.class final Lcom/kwad/sdk/c/f/f$c;
.super Lcom/kwad/sdk/c/f/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/f/f;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/f/d$a;Ljava/util/List;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/c/f/f$c;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/c/f/d;-><init>(Lcom/kwad/sdk/c/f/d$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/kwad/sdk/core/request/k/b;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/kwad/sdk/c/f/e;

    iget-object v1, p0, Lcom/kwad/sdk/c/f/f$c;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/c/f/e;-><init>(Ljava/util/List;)V

    return-object v0
.end method
