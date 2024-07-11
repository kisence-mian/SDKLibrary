.class public final Lcom/efs/sdk/base/a/a/d;
.super Lcom/efs/sdk/base/http/AbsHttpListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/a/d$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/efs/sdk/base/http/AbsHttpListener;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/efs/sdk/base/a/a/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/a/d;
    .registers 1

    .line 36
    invoke-static {}, Lcom/efs/sdk/base/a/a/d$a;->a()Lcom/efs/sdk/base/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 3

    .line 104
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 4208
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->f:Z

    .line 104
    if-eqz v0, :cond_47

    .line 105
    const-string v0, "upload result : "

    .line 107
    if-nez p0, :cond_20

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_41

    .line 110
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resp is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    :goto_41
    nop

    .line 5024
    const-string v0, "efs.px.api"

    invoke-static {v0, p0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_47
    return-void
.end method

.method private static b(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 4

    .line 5053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 148
    nop

    .line 149
    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->getHttpCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->getBizCode()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->getReqUrl()Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-virtual {v0, v1, v2, p0}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private static c(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "cver"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 162
    return-void

    .line 165
    :cond_d
    iget-object p0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 168
    return-void

    .line 171
    :cond_1e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 174
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    .line 5155
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 6103
    iget v0, v0, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 174
    if-le p0, v0, :cond_33

    .line 175
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/efs/sdk/base/a/c/a/c;->a(I)V

    .line 177
    :cond_33
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/efs/sdk/base/a/h/a/c;Ljava/lang/Object;)V
    .registers 5

    .line 26
    check-cast p2, Lcom/efs/sdk/base/http/HttpResponse;

    .line 7046
    if-eqz p2, :cond_1a

    .line 7050
    check-cast p1, Lcom/efs/sdk/base/a/h/b/b;

    .line 7053
    iget-object v0, p2, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p1, Lcom/efs/sdk/base/a/h/b/b;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7054
    iget-object p1, p1, Lcom/efs/sdk/base/a/h/b/b;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 7057
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {p2}, Lcom/efs/sdk/base/a/a/a;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 26
    :cond_1a
    return-void
.end method

.method public final onError(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 2

    .line 82
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/d;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 85
    if-nez p1, :cond_6

    .line 86
    return-void

    .line 89
    :cond_6
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/d;->b(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 91
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/d;->c(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 92
    return-void
.end method

.method public final onSuccess(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 7

    .line 63
    nop

    .line 1122
    iget-object v0, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "flow_limit"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1127
    :cond_21
    nop

    .line 1129
    iget-object v0, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1130
    iget-object v0, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3b

    .line 1129
    :cond_39
    const-string v0, ""

    .line 1133
    :goto_3b
    nop

    .line 1135
    iget-object v1, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "size"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5e

    .line 1136
    iget-object v1, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1139
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5f

    .line 1143
    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    invoke-static {}, Lcom/efs/sdk/base/a/e/b;->a()Lcom/efs/sdk/base/a/e/b;

    move-result-object v2

    .line 1144
    nop

    .line 1362
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1363
    iput v3, v4, Landroid/os/Message;->what:I

    .line 1364
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1365
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 1366
    invoke-virtual {v2, v4}, Lcom/efs/sdk/base/a/e/b;->sendMessage(Landroid/os/Message;)Z

    .line 65
    :cond_71
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/d;->b(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 3053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 3145
    iget-object v0, v0, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    .line 4060
    iget-object v0, v0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 69
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/d;->c(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 71
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/d;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 72
    return-void
.end method
