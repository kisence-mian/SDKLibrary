.class Lcom/sigmob/sdk/base/common/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/sigmob/sdk/base/common/f;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/f$3;->g:Lcom/sigmob/sdk/base/common/f;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/common/f$3;->b:Z

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/f$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/f$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/f$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/base/common/f$3;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/f/p;->name()Ljava/lang/String;

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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_37
    sget-object p1, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    if-ne p1, p2, :cond_53

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/common/f$3;->b:Z

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/f$3;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/f$3;->e:Ljava/lang/String;

    const-string v1, "click"

    const-string v3, "1"

    goto :goto_63

    :cond_53
    iget-boolean p1, p0, Lcom/sigmob/sdk/base/common/f$3;->b:Z

    if-eqz p1, :cond_66

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/f$3;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/f$3;->e:Ljava/lang/String;

    const-string v1, "click"

    const-string v3, "0"

    :goto_63
    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/f/p;->name()Ljava/lang/String;

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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_37
    sget-object v0, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    if-ne v0, p2, :cond_4b

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/f$3;->g:Lcom/sigmob/sdk/base/common/f;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/f$3;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/f$3;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/f$3;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sigmob/sdk/base/common/f$3;->b:Z

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/f;->a(Lcom/sigmob/sdk/base/common/f;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5d

    :cond_4b
    iget-boolean p2, p0, Lcom/sigmob/sdk/base/common/f$3;->b:Z

    if-eqz p2, :cond_5d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/f$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/f$3;->e:Ljava/lang/String;

    const-string v1, "click"

    const-string v3, "0"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method
