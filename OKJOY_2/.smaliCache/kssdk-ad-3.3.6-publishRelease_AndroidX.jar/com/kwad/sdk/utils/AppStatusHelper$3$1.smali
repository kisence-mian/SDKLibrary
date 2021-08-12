.class Lcom/kwad/sdk/utils/AppStatusHelper$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/collector/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/AppStatusHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/utils/AppStatusHelper$3;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/utils/AppStatusHelper$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;->a:Lcom/kwad/sdk/utils/AppStatusHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchAppStatusConfig onFetchError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppStatusHelper"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/collector/AppStatusRules;)V
    .registers 6

    invoke-static {p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->a(Lcom/kwad/sdk/collector/AppStatusRules;)Lcom/kwad/sdk/collector/AppStatusRules;

    iget-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;->a:Lcom/kwad/sdk/utils/AppStatusHelper$3;

    iget-object p1, p1, Lcom/kwad/sdk/utils/AppStatusHelper$3;->a:Landroid/content/Context;

    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->b()Lcom/kwad/sdk/collector/AppStatusRules;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/AppStatusHelper;->a(Landroid/content/Context;Lcom/kwad/sdk/collector/AppStatusRules;)V

    iget-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;->a:Lcom/kwad/sdk/utils/AppStatusHelper$3;

    iget-object p1, p1, Lcom/kwad/sdk/utils/AppStatusHelper$3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->b()Lcom/kwad/sdk/collector/AppStatusRules;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/collector/AppStatusRules;->obtainScanInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2b

    iget-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;->a:Lcom/kwad/sdk/utils/AppStatusHelper$3;

    iget-object p1, p1, Lcom/kwad/sdk/utils/AppStatusHelper$3;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper;->b(Landroid/content/Context;J)V

    goto :goto_32

    :cond_2b
    iget-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;->a:Lcom/kwad/sdk/utils/AppStatusHelper$3;

    iget-object p1, p1, Lcom/kwad/sdk/utils/AppStatusHelper$3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->c(Landroid/content/Context;)V

    :goto_32
    return-void
.end method
