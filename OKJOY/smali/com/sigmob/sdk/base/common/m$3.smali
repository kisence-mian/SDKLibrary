.class Lcom/sigmob/sdk/base/common/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/utils/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/sigmob/sdk/base/common/m;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/m;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/m$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/m$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/m$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/m$3;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/utils/ab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    if-ne v0, p2, :cond_6c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/m$3;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/m$3;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    return-void

    :cond_6c
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/m$3;->d:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/utils/ab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    if-ne v0, p2, :cond_57

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/m$3;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/m$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/m$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/common/m;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void

    :cond_57
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m$3;->f:Lcom/sigmob/sdk/base/common/m;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/m$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/m$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/m$3;->d:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method
