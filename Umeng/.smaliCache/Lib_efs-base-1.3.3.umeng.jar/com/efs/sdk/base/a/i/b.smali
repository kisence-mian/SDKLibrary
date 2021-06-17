.class public final Lcom/efs/sdk/base/a/i/b;
.super Lcom/efs/sdk/base/protocol/record/AbsRecordLog;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 40
    const-string v0, "wa"

    invoke-direct {p0, v0}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/efs/sdk/base/a/i/b;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/efs/sdk/base/a/i/b;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/efs/sdk/base/a/i/b;->d:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string p3, "yyyy-MM-dd HH:mm:SS"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/efs/sdk/base/a/i/b;->c:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public final generate()[B
    .registers 3

    .line 64
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/i/b;->generateString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 1216
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/c/a;->g:Z

    .line 66
    if-eqz v1, :cond_12

    .line 67
    nop

    .line 2024
    const-string v1, "efs.base"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final generateString()Ljava/lang/String;
    .registers 7

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v1, "lt=event`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "ev_ct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/efs/sdk/base/a/i/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "ev_ac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/efs/sdk/base/a/i/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "tm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/efs/sdk/base/a/i/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "dn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/efs/sdk/base/a/i/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/b;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_52

    .line 85
    :cond_7a
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkId()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, ""

    return-object v0
.end method

.method public final getLinkKey()Ljava/lang/String;
    .registers 2

    .line 90
    const-string v0, ""

    return-object v0
.end method

.method public final insertGlobal(Lcom/efs/sdk/base/a/c/b;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/b;->dataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 55
    iget-object p1, p0, Lcom/efs/sdk/base/a/i/b;->dataMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 56
    return-void
.end method
