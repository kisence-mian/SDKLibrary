.class public Lcom/kwad/sdk/core/response/model/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/kwad/sdk/core/response/model/d;->b:I

    iput p3, p0, Lcom/kwad/sdk/core/response/model/d;->c:I

    iput-boolean p4, p0, Lcom/kwad/sdk/core/response/model/d;->d:Z

    iput-boolean p5, p0, Lcom/kwad/sdk/core/response/model/d;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/response/model/d;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/response/model/d;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/d;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/d;->e:Z

    return v0
.end method
