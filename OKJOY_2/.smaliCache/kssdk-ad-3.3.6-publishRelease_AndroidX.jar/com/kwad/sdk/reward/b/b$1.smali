.class Lcom/kwad/sdk/reward/b/b$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b$1;->a:Lcom/kwad/sdk/reward/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/b/b$1;->b:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/kwad/sdk/reward/b/b$1;->c:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    iget p1, p0, Lcom/kwad/sdk/reward/b/b$1;->c:I

    if-gtz p1, :cond_a

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->r()I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/reward/b/b$1;->c:I

    :cond_a
    iget p1, p0, Lcom/kwad/sdk/reward/b/b$1;->c:I

    if-lez p1, :cond_21

    mul-int/lit16 p1, p1, 0x3e8

    iget-boolean p2, p0, Lcom/kwad/sdk/reward/b/b$1;->b:Z

    if-nez p2, :cond_21

    int-to-long p1, p1

    cmp-long p1, p3, p1

    if-lez p1, :cond_21

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b$1;->a:Lcom/kwad/sdk/reward/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b;->a(Lcom/kwad/sdk/reward/b/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/b/b$1;->b:Z

    :cond_21
    return-void
.end method
