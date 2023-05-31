.class final Lcom/kwad/sdk/b/f/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kwad/sdk/b/f/b$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/b/f/b$d;Lcom/kwad/sdk/b/f/b$d;)I
    .registers 5

    iget v0, p1, Lcom/kwad/sdk/b/f/b$d;->b:I

    iget v1, p2, Lcom/kwad/sdk/b/f/b$d;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/kwad/sdk/b/f/b$d;

    check-cast p2, Lcom/kwad/sdk/b/f/b$d;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/b/f/b$a;->a(Lcom/kwad/sdk/b/f/b$d;Lcom/kwad/sdk/b/f/b$d;)I

    move-result v0

    return v0
.end method
