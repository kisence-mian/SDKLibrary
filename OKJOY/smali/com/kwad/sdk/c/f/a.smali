.class public Lcom/kwad/sdk/c/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Lorg/json/JSONArray;

.field public n:Lorg/json/JSONArray;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/c/f/a;->h:I

    iput v0, p0, Lcom/kwad/sdk/c/f/a;->i:I

    iput v0, p0, Lcom/kwad/sdk/c/f/a;->l:I

    iput-wide p1, p0, Lcom/kwad/sdk/c/f/a;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method

.method public constructor <init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 5
    .param p3    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/c/f/a;->h:I

    iput v0, p0, Lcom/kwad/sdk/c/f/a;->i:I

    iput v0, p0, Lcom/kwad/sdk/c/f/a;->l:I

    iput-wide p1, p0, Lcom/kwad/sdk/c/f/a;->b:J

    iput-object p3, p0, Lcom/kwad/sdk/c/f/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method
