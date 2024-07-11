.class public Lcom/efs/sdk/base/protocol/record/EfsJSONLog;
.super Lcom/efs/sdk/base/protocol/record/AbsRecordLog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public generate()[B
    .registers 3

    .line 45
    invoke-virtual {p0}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 1216
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/c/a;->g:Z

    .line 47
    if-eqz v1, :cond_12

    .line 48
    nop

    .line 2024
    const-string v1, "efs.base"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public generateString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    const-string v1, "w_frmid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 70
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkKey()Ljava/lang/String;
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    const-string v1, "w_linkKey"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 62
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertGlobal(Lcom/efs/sdk/base/a/c/b;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 36
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->dataMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 37
    return-void
.end method
