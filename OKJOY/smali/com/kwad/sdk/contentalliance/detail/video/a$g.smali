.class Lcom/kwad/sdk/contentalliance/detail/video/a$g;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/a$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/d/c;

.field final synthetic b:Lcom/kwad/sdk/contentalliance/detail/video/a$i;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/a;Lcom/kwad/sdk/c/h/d/c;Lcom/kwad/sdk/contentalliance/detail/video/a$i;)V
    .registers 4

    iput-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$g;->a:Lcom/kwad/sdk/c/h/d/c;

    iput-object p3, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$g;->b:Lcom/kwad/sdk/contentalliance/detail/video/a$i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$g;->a:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$g;->b:Lcom/kwad/sdk/contentalliance/detail/video/a$i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a$i;->a()V

    :cond_c
    return-void
.end method
