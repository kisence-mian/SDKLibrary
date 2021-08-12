.class Lcom/sigmob/sdk/videoAd/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/sigmob/sdk/base/a;

.field final synthetic f:Lcom/sigmob/sdk/videoAd/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sigmob/sdk/base/a;)V
    .registers 7

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/g$1;->e:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
    .registers 11

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

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_37
    sget-object v0, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    if-ne v0, p2, :cond_57

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;)I

    move-result v7

    const-string v2, "click"

    const-string v4, "1"

    :goto_52
    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7b

    :cond_57
    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6a

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    :cond_6a
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;)I

    move-result v7

    const-string v2, "click"

    const-string v4, "0"

    goto :goto_52

    :goto_7b
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    if-eqz p1, :cond_8c

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->b_()V

    :cond_8c
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
    .registers 16

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

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_37
    sget-object v0, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    if-ne v0, p2, :cond_52

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/g$1;->e:Lcom/sigmob/sdk/base/a;

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V

    goto :goto_77

    :cond_52
    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v11, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;)I

    move-result v12

    const-string v7, "click"

    const-string v9, "0"

    move-object v10, p1

    invoke-static/range {v6 .. v12}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->c_()V

    :cond_77
    :goto_77
    return-void
.end method
