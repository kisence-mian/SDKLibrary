.class public Lcom/kwad/sdk/draw/b/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/b/b/a$a;,
        Lcom/kwad/sdk/draw/b/b/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:Lcom/kwad/sdk/draw/b/b/a$a;

.field private c:Lcom/kwad/sdk/draw/b/b/a$b;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/draw/b/b/a;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/draw/b/b/a;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/draw/b/b/a;->d:Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v0, v1, :cond_2d

    goto :goto_3f

    :cond_2d
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/a;->c:Lcom/kwad/sdk/draw/b/b/a$b;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Lcom/kwad/sdk/draw/b/b/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    :cond_38
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/a;->b:Lcom/kwad/sdk/draw/b/b/a$a;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Lcom/kwad/sdk/draw/b/b/a$a;->a()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public a(Lcom/kwad/sdk/draw/b/b/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/a;->b:Lcom/kwad/sdk/draw/b/b/a$a;

    return-void
.end method

.method public a(Lcom/kwad/sdk/draw/b/b/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/a;->c:Lcom/kwad/sdk/draw/b/b/a$b;

    return-void
.end method
