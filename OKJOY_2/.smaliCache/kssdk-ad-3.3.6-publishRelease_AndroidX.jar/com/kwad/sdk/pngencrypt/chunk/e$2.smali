.class final Lcom/kwad/sdk/pngencrypt/chunk/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/pngencrypt/chunk/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/pngencrypt/chunk/e;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;)Z
    .registers 5

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    instance-of v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/ae;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/pngencrypt/chunk/ae;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/chunk/ae;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    :cond_20
    instance-of v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/x;

    if-eqz v0, :cond_33

    check-cast p1, Lcom/kwad/sdk/pngencrypt/chunk/x;

    invoke-virtual {p1}, Lcom/kwad/sdk/pngencrypt/chunk/x;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/e$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    return v1

    :cond_33
    const/4 p1, 0x1

    return p1
.end method
