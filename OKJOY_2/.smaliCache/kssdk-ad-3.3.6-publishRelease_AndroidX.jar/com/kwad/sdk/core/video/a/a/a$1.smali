.class final Lcom/kwad/sdk/core/video/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/report/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/video/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/report/h<",
        "Lcom/kwad/sdk/core/video/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a/a$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/core/video/a/a/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/kwad/sdk/core/report/d;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/a/a/a$1;->b()Lcom/kwad/sdk/core/video/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/kwad/sdk/core/video/a/a/c;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/video/a/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/video/a/a/a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/video/a/a/a$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/video/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
