.class Lcom/kwad/sdk/contentalliance/detail/photo/c/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/contentalliance/widget/a;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/contentalliance/widget/a;->B:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/widget/a;->a(J)V

    return-void
.end method
