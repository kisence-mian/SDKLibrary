.class Lcom/kwad/sdk/fullscreen/a/a/a$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/fullscreen/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/fullscreen/a/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/fullscreen/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/a$1;->a:Lcom/kwad/sdk/fullscreen/a/a/a;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    sub-long/2addr p1, p3

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/kwad/sdk/fullscreen/a/a/a$1;->a:Lcom/kwad/sdk/fullscreen/a/a/a;

    invoke-static {p2, p1}, Lcom/kwad/sdk/fullscreen/a/a/a;->a(Lcom/kwad/sdk/fullscreen/a/a/a;I)V

    return-void
.end method
