.class final Lcom/sigmob/sdk/base/c/z$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic c:Z

.field final synthetic d:Lcom/sigmob/sdk/base/common/j;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/common/j;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/z$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/c/z$1;->c:Z

    iput-object p4, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    iput-object p5, p0, Lcom/sigmob/sdk/base/c/z$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/sigmob/volley/ae;->a:Lcom/sigmob/volley/n;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_19

    new-instance v0, Lcom/sigmob/sdk/base/c/z$1$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/c/z$1$2;-><init>(Lcom/sigmob/sdk/base/c/z$1;)V

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/a/d;->a(Ljava/lang/Runnable;)V

    :cond_19
    if-eqz v1, :cond_b9

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "http_code"

    iget v4, v1, Lcom/sigmob/volley/n;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time_spend"

    iget-wide v6, v1, Lcom/sigmob/volley/n;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/z$1;->a:Ljava/lang/String;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v2, :cond_54

    sget-object v2, Lcom/sigmob/sdk/base/common/Constants;->AD_TYPE:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    const-string v2, "source"

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content-type"

    iget-object v4, v1, Lcom/sigmob/volley/n;->c:Ljava/util/Map;

    const-string v6, "Content-Type"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content-length"

    iget-object v1, v1, Lcom/sigmob/volley/n;->c:Ljava/util/Map;

    const-string v4, "Content-Length"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/c/z$1;->c:Z

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_95

    const-string v2, "request_id"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    const-string v1, "retry"

    const-string v2, "1"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->e()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_af

    const-string v1, "created_time"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "13"

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/z$1;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_b8
    return-void

    :cond_b9
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->a:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v1, :cond_dc

    sget-object v1, Lcom/sigmob/sdk/base/common/Constants;->AD_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dc
    iget-boolean v1, p0, Lcom/sigmob/sdk/base/c/z$1;->c:Z

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f1

    const-string v2, "request_id"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f1
    const-string v1, "retry"

    const-string v2, "1"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->e()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_10b

    const-string v1, "created_time"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10b
    const-string v1, "source"

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http_code"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time_spend"

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "13"

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/z$1;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto/16 :goto_b8
.end method

.method public a(Lcom/sigmob/volley/n;)V
    .registers 10

    const-string v0, ""

    iget-object v1, p1, Lcom/sigmob/volley/n;->b:[B

    if-eqz v1, :cond_d8

    iget-object v0, p1, Lcom/sigmob/volley/n;->b:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_e
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "response"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->a:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v1, :cond_36

    sget-object v1, Lcom/sigmob/sdk/base/common/Constants;->AD_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    iget-boolean v1, p0, Lcom/sigmob/sdk/base/c/z$1;->c:Z

    if-eqz v1, :cond_8b

    const-string v1, "adtracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry Send success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/c/z;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sigmob/sdk/base/c/z$1$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/c/z$1$1;-><init>(Lcom/sigmob/sdk/base/c/z$1;)V

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/a/d;->a(Ljava/lang/Runnable;)V

    const-string v1, "retry"

    const-string v2, "1"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "request_id"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->e()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_8b

    const-string v1, "created_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    const-string v1, "source"

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http_code"

    iget v2, p1, Lcom/sigmob/volley/n;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time_spend"

    iget-wide v2, p1, Lcom/sigmob/volley/n;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content-type"

    iget-object v2, p1, Lcom/sigmob/volley/n;->c:Ljava/util/Map;

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content-length"

    iget-object v2, p1, Lcom/sigmob/volley/n;->c:Ljava/util/Map;

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "13"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/z$1;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_d8
    move-object v1, v0

    goto/16 :goto_e
.end method
