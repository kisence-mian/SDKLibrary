.class public Lcom/kwad/sdk/c/f/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x8

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/c/f/a;-><init>(J)V

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0xb

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/c/f/a;-><init>(J)V

    invoke-static {}, Lcom/kwad/sdk/c/a/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/kwad/sdk/e/d;->b(Landroid/content/Context;Ljava/util/List;)[Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/kwad/sdk/c/f/a;->m:Lorg/json/JSONArray;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/kwad/sdk/c/f/a;->n:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .registers 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x63

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V
    .registers 9
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    iput p3, v0, Lcom/kwad/sdk/c/f/a;->h:I

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JII)V
    .registers 10
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    iput p3, v0, Lcom/kwad/sdk/c/f/a;->j:I

    iput p4, v0, Lcom/kwad/sdk/c/f/a;->k:I

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJ)V
    .registers 10
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x5

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    iput-wide p3, v0, Lcom/kwad/sdk/c/f/a;->d:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJIJJ)V
    .registers 14
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x4

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    iput-wide p3, v0, Lcom/kwad/sdk/c/f/a;->e:J

    iput p5, v0, Lcom/kwad/sdk/c/f/a;->i:I

    sub-long v2, p8, p6

    iput-wide v2, v0, Lcom/kwad/sdk/c/f/a;->g:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JLjava/lang/String;)V
    .registers 9
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x7

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    iput-object p3, v0, Lcom/kwad/sdk/c/f/a;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;JZ)V
    .registers 9
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v1, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0xa

    invoke-direct {v1, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v1, Lcom/kwad/sdk/c/f/a;->c:J

    if-eqz p3, :cond_12

    const/4 v0, 0x1

    :goto_c
    iput v0, v1, Lcom/kwad/sdk/c/f/a;->l:I

    invoke-static {v1}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void

    :cond_12
    const/4 v0, 0x2

    goto :goto_c
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .registers 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x62

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;JJ)V
    .registers 10
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x2

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    iput-wide p3, v0, Lcom/kwad/sdk/c/f/a;->f:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .registers 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x6

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .registers 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/c/f/a;

    const-wide/16 v2, 0x9

    invoke-direct {v0, v2, v3, p0}, Lcom/kwad/sdk/c/f/a;-><init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-wide p1, v0, Lcom/kwad/sdk/c/f/a;->c:J

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V

    return-void
.end method
