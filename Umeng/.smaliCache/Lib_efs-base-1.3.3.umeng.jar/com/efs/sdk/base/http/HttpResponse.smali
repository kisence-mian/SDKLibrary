.class public Lcom/efs/sdk/base/http/HttpResponse;
.super Lcom/efs/sdk/base/a/f/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/efs/sdk/base/a/f/d<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final KEY_BIZ_CODE:Ljava/lang/String; = "biz_code"

.field private static final KEY_REQUEST_URL:Ljava/lang/String; = "req_url"

.field public static final REQUEST_ERROR_DEFAULT:I = -0x1

.field public static final REQUEST_ERROR_NETWORK_DISCONNECT:I = -0x2

.field public static final REQUEST_ERROR_SOCKET_TIMEOUT:I = -0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/efs/sdk/base/a/f/d;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public getBizCode()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "biz_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 84
    const-string v0, ""

    return-object v0

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->code:I

    return v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "req_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 112
    const-string v0, ""

    return-object v0

    .line 115
    :cond_f
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setBizCode(Ljava/lang/String;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "biz_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public setHttpCode(I)V
    .registers 3

    .line 53
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_8

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_c

    :cond_8
    const/16 v0, 0x130

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    .line 57
    iput p1, p0, Lcom/efs/sdk/base/a/f/d;->code:I

    .line 58
    return-void
.end method

.method public setReqUrl(Ljava/lang/String;)V
    .registers 4

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    const-string p1, ""

    .line 100
    :cond_8
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_19
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "req_url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpResponse {succ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
