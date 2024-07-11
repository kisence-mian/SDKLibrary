.class public final Lcom/efs/sdk/base/a/a/b;
.super Lcom/efs/sdk/base/http/AbsHttpListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/a/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/efs/sdk/base/http/AbsHttpListener;-><init>()V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/efs/sdk/base/a/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/a/b;
    .registers 1

    .line 30
    invoke-static {}, Lcom/efs/sdk/base/a/a/b$a;->a()Lcom/efs/sdk/base/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 4

    .line 3053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->getHttpCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->getBizCode()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/efs/sdk/base/http/HttpResponse;->getReqUrl()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-virtual {v0, v1, v2, p0}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/efs/sdk/base/a/h/a/c;Ljava/lang/Object;)V
    .registers 3

    .line 20
    check-cast p2, Lcom/efs/sdk/base/http/HttpResponse;

    .line 4040
    if-eqz p2, :cond_a

    .line 4044
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {p2}, Lcom/efs/sdk/base/a/a/a;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 20
    :cond_a
    return-void
.end method

.method public final onError(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 2

    .line 56
    if-nez p1, :cond_3

    .line 57
    return-void

    .line 59
    :cond_3
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/b;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 60
    return-void
.end method

.method public final onSuccess(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 8

    .line 49
    invoke-static {p1}, Lcom/efs/sdk/base/a/a/b;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 50
    nop

    .line 1084
    iget-object v0, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "cver"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1088
    iget-object p1, p1, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1091
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1095
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 1097
    nop

    .line 1098
    nop

    .line 2118
    iget-object v2, v0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-eqz v2, :cond_51

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 2186
    iget-boolean v2, v2, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 2118
    if-nez v2, :cond_37

    goto :goto_51

    .line 2122
    :cond_37
    new-instance v2, Lcom/efs/sdk/base/a/i/b;

    iget-object v3, v0, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    iget-object v3, v3, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    const-string v4, "efs_core"

    const-string v5, "config_coverage"

    invoke-direct {v2, v4, v5, v3}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2124
    iget-object p1, v0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    invoke-virtual {p1, v2}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    goto :goto_52

    .line 2119
    :cond_51
    :goto_51
    return-void

    .line 51
    :cond_52
    :goto_52
    return-void
.end method
