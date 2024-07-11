.class public Lcom/kwad/sdk/internal/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsImage;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/internal/api/a;->a:I

    iput p2, p0, Lcom/kwad/sdk/internal/api/a;->b:I

    iput-object p3, p0, Lcom/kwad/sdk/internal/api/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/a;->b:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/internal/api/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/a;->a:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/a;->a:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/kwad/sdk/internal/api/a;->b:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/internal/api/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
