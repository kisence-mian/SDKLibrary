.class public Lcom/kwad/sdk/collector/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/collector/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/sdk/collector/a$a;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/kwad/sdk/collector/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/collector/a$1;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/kwad/sdk/collector/a$2;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/collector/a$2;-><init>(Lcom/kwad/sdk/collector/a$a;)V

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/h;)V

    return-void
.end method
