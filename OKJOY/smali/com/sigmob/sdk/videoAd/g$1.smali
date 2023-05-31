.class Lcom/sigmob/sdk/videoAd/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/utils/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/sigmob/sdk/base/a;

.field final synthetic g:Lcom/sigmob/sdk/videoAd/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sigmob/sdk/base/a;)V
    .registers 8

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/g$1;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/base/a;

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

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    if-ne v0, p2, :cond_7d

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/g$1;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->b_()V

    :cond_7c
    return-void

    :cond_7d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    :cond_90
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    iget-object v7, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    if-ne v0, p2, :cond_60

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g$1;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/g$1;->f:Lcom/sigmob/sdk/base/a;

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/g$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    iget-object v7, p0, Lcom/sigmob/sdk/videoAd/g$1;->d:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$1;->g:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    goto :goto_5f
.end method
