.class Lcom/kwad/sdk/a/b/g$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/g;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/g;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/g$1;->a:Lcom/kwad/sdk/a/b/g;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/b/g$1;->a:Lcom/kwad/sdk/a/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/g;->a(Lcom/kwad/sdk/a/b/g;)V

    return-void
.end method
