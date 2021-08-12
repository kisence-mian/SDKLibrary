.class public Lcom/kwad/sdk/core/report/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/core/report/e;->a:Z

    return-void
.end method

.method public static a()V
    .registers 3

    sget-boolean v0, Lcom/kwad/sdk/core/report/e;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/core/report/e;->a:Z

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(I)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2778

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput p0, v0, Lcom/kwad/sdk/core/report/a;->P:I

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(JJ)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_d

    iput-wide p2, v0, Lcom/kwad/sdk/core/report/a;->R:J

    :cond_d
    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/Context;Ljava/util/List;)[Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/kwad/sdk/core/report/a;->t:Lorg/json/JSONArray;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->u:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2717

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x277c

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput p1, v0, Lcom/kwad/sdk/core/report/a;->Q:I

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2712

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/a;->b()V

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    :try_start_1f
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "what"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "extra"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->I:Ljava/lang/String;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_39
    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x277d

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p1, v0, Lcom/kwad/sdk/core/report/a;->Q:I

    iput-object p2, v0, Lcom/kwad/sdk/core/report/a;->S:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27da

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/core/report/a;->k:J

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJI)V
    .registers 9

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27db

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/core/report/a;->e:J

    iput-wide p3, v0, Lcom/kwad/sdk/core/report/a;->i:J

    int-to-long p0, p5

    iput-wide p0, v0, Lcom/kwad/sdk/core/report/a;->j:J

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2711

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p1, v0, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    iput-object p2, v0, Lcom/kwad/sdk/core/report/a;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2716

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    iput-object p1, v0, Lcom/kwad/sdk/core/report/a;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27d8

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->K:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;I)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27d9

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    const-string v1, "appChangeType"

    invoke-static {p0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->L:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static a(ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27dc

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput-boolean p0, v0, Lcom/kwad/sdk/core/report/a;->Y:Z

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2c

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a

    :cond_2a
    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->X:Lorg/json/JSONArray;

    :cond_2c
    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static b()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2775

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static b(I)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x277b

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    iput p0, v0, Lcom/kwad/sdk/core/report/a;->Q:I

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27e0

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2713

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p1, v0, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    iput-object p2, v0, Lcom/kwad/sdk/core/report/a;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static c()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x277a

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/a;-><init>(J)V

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x27e1

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/a;

    const-wide/16 v1, 0x2715

    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/core/report/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    :cond_16
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    iput-object p0, v0, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    iput-object p1, v0, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    iput-object p2, v0, Lcom/kwad/sdk/core/report/a;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/a;)V

    return-void
.end method
