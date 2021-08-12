.class final Lcom/kwad/sdk/collector/a$2;
.super Lcom/kwad/sdk/core/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/collector/a;->a(Landroid/content/Context;Lcom/kwad/sdk/collector/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/j<",
        "Lcom/kwad/sdk/collector/a/a;",
        "Lcom/kwad/sdk/collector/AppStatusRules;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/collector/a$a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/collector/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/collector/a$2;->a:Lcom/kwad/sdk/collector/a$a;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/collector/a/a;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/j;->a(Lcom/kwad/sdk/core/network/g;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/collector/a/a;ILjava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/j;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/collector/a$2;->a:Lcom/kwad/sdk/collector/a$a;

    if-eqz p1, :cond_a

    invoke-interface {p1, p2, p3}, Lcom/kwad/sdk/collector/a$a;->a(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public a(Lcom/kwad/sdk/collector/a/a;Lcom/kwad/sdk/collector/AppStatusRules;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/collector/a$2;->a:Lcom/kwad/sdk/collector/a$a;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Lcom/kwad/sdk/collector/a$a;->a(Lcom/kwad/sdk/collector/AppStatusRules;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/collector/a/a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/collector/a$2;->a(Lcom/kwad/sdk/collector/a/a;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V
    .registers 4

    check-cast p1, Lcom/kwad/sdk/collector/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/collector/a$2;->a(Lcom/kwad/sdk/collector/a/a;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/BaseResultData;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/collector/a/a;

    check-cast p2, Lcom/kwad/sdk/collector/AppStatusRules;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/collector/a$2;->a(Lcom/kwad/sdk/collector/a/a;Lcom/kwad/sdk/collector/AppStatusRules;)V

    return-void
.end method
