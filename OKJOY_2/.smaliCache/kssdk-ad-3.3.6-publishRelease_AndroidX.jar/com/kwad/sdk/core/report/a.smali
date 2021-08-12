.class public Lcom/kwad/sdk/core/report/a;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:J

.field public D:Ljava/lang/String;

.field public E:I

.field public F:I

.field public G:I

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Lorg/json/JSONArray;

.field public K:Lorg/json/JSONArray;

.field public L:Lorg/json/JSONObject;

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:I

.field public Q:I

.field public R:J

.field public S:Ljava/lang/String;

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:Lorg/json/JSONArray;

.field public Y:Z

.field private Z:J

.field public a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public b:Lcom/kwad/sdk/internal/api/SceneImpl;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Lorg/json/JSONArray;

.field public u:Lorg/json/JSONArray;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/a;->Z:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kwad/sdk/core/report/a;->k:J

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/a;->n:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/kwad/sdk/core/report/a;->o:I

    iput v2, p0, Lcom/kwad/sdk/core/report/a;->p:I

    iput v2, p0, Lcom/kwad/sdk/core/report/a;->s:I

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/a;->C:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->E:I

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->V:I

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->W:I

    iput-wide p1, p0, Lcom/kwad/sdk/core/report/a;->c:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method

.method public constructor <init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/a;->Z:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kwad/sdk/core/report/a;->k:J

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/a;->n:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/kwad/sdk/core/report/a;->o:I

    iput v2, p0, Lcom/kwad/sdk/core/report/a;->p:I

    iput v2, p0, Lcom/kwad/sdk/core/report/a;->s:I

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/a;->C:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->E:I

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->V:I

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->W:I

    iput-wide p1, p0, Lcom/kwad/sdk/core/report/a;->c:J

    iput-object p3, p0, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p3}, Lcom/kwad/sdk/core/response/model/AdTemplate;->getShowPosition()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/report/a;->a(J)V

    return-void
.end method

.method private a(J)V
    .registers 5

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/kwad/sdk/core/report/a;->Z:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/report/a;->Z:J

    return-wide v0
.end method

.method public b()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/h/b;->a()Lcom/kwad/sdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/h/b;->b()Z

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/report/a;->U:I

    invoke-virtual {v0}, Lcom/kwad/sdk/core/h/b;->c()I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/report/a;->V:I

    invoke-virtual {v0}, Lcom/kwad/sdk/core/h/b;->d()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/a;->W:I

    return-void
.end method
