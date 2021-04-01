.class Lcom/sigmob/sdk/videoAd/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/utils/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/videoAd/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/o;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->b_()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    goto :goto_3f
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/g$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g$2;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/o;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->b_()V
    :try_end_43
    .catch Lcom/sigmob/sdk/base/b/a; {:try_start_23 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/b/a;->printStackTrace()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    goto :goto_43
.end method
