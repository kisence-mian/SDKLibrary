.class Lcom/kwad/sdk/c/h/e/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/h/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b$d;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;II)Z
    .registers 6

    const/16 v1, -0x26

    const/high16 v0, -0x80000000

    if-eq p2, v1, :cond_43

    if-eq p2, v0, :cond_43

    if-eq p3, v1, :cond_43

    if-eq p3, v0, :cond_43

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$d;->a:Lcom/kwad/sdk/c/h/e/b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$d;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$d;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError \u2014\u2014> STATE_ERROR \u2014\u2014\u2014\u2014 what\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSVideoPlayerViewView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    const/4 v0, 0x1

    return v0
.end method
