.class abstract Lcom/kwad/sdk/contentalliance/detail/photo/c/f$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$g;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$g;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$g;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    invoke-interface {p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;->b()V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method
