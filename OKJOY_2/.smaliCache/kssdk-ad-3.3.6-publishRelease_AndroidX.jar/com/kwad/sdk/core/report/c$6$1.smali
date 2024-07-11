.class Lcom/kwad/sdk/core/report/c$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/report/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/c$6;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/report/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/report/c$6;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/c$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$6$1;->a:Lcom/kwad/sdk/core/report/c$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/core/report/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$6$1;->a:Lcom/kwad/sdk/core/report/c$6;

    iget-object v0, v0, Lcom/kwad/sdk/core/report/c$6;->a:Lcom/kwad/sdk/core/report/d;

    return-object v0
.end method
