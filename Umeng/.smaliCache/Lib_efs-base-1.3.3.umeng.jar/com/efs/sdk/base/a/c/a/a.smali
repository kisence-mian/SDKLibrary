.class public final Lcom/efs/sdk/base/a/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/IConfigRefreshAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/c/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/c/a/a;
    .registers 1

    .line 38
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/a$a;->a()Lcom/efs/sdk/base/a/c/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final refresh()Ljava/lang/String;
    .registers 11

    .line 45
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 1072
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/e;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1074
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1075
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x1

    goto :goto_21

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    .line 1077
    :cond_20
    const/4 v0, 0x0

    .line 45
    :goto_21
    const-string v3, "efs.config"

    const-string v4, ""

    if-nez v0, :cond_2e

    .line 46
    nop

    .line 2024
    const-string v0, "Config refresh fail, network is disconnected."

    invoke-static {v3, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v4

    .line 51
    :cond_2e
    nop

    .line 52
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/efs/sdk/base/a/c/a/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/efs/sdk/base/a/a/c;->a()Lcom/efs/sdk/base/a/a/c;

    move-result-object v5

    .line 55
    nop

    :goto_3c
    const/4 v6, 0x3

    if-ge v1, v6, :cond_bc

    .line 56
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    move-result-object v6

    .line 2091
    invoke-virtual {v5}, Lcom/efs/sdk/base/a/a/c;->b()Ljava/lang/String;

    move-result-object v7

    .line 2095
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/apm_cc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2096
    iget-boolean v6, v6, Lcom/efs/sdk/base/a/a/a;->a:Z

    if-eqz v6, :cond_6d

    .line 2097
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "get config from server, url is "

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3024
    const-string v9, "efs.px.api"

    invoke-static {v9, v6}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :cond_6d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2100
    const-string v9, "wpk-header"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    new-instance v7, Lcom/efs/sdk/base/a/h/b/d;

    invoke-direct {v7, v8}, Lcom/efs/sdk/base/a/h/b/d;-><init>(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v7, v6}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v6

    .line 2103
    invoke-static {}, Lcom/efs/sdk/base/a/a/b;->a()Lcom/efs/sdk/base/a/a/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/efs/sdk/base/a/h/b/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v6

    .line 2104
    invoke-virtual {v6}, Lcom/efs/sdk/base/a/h/b/d;->a()Lcom/efs/sdk/base/a/h/b/c;

    move-result-object v6

    .line 2105
    nop

    .line 3029
    iget-object v7, v6, Lcom/efs/sdk/base/a/h/b/c;->a:Lcom/efs/sdk/base/a/h/b/b;

    const-string v8, "get"

    iput-object v8, v7, Lcom/efs/sdk/base/a/h/b/b;->e:Ljava/lang/String;

    .line 3030
    invoke-virtual {v6}, Lcom/efs/sdk/base/a/h/b/c;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/efs/sdk/base/http/HttpResponse;

    .line 56
    nop

    .line 59
    iget-boolean v7, v6, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    if-eqz v7, :cond_a1

    .line 60
    iget-object v4, v6, Lcom/efs/sdk/base/http/HttpResponse;->data:Ljava/lang/String;

    .line 61
    goto :goto_bc

    .line 66
    :cond_a1
    invoke-virtual {v6}, Lcom/efs/sdk/base/http/HttpResponse;->getBizCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 67
    invoke-virtual {v6}, Lcom/efs/sdk/base/http/HttpResponse;->getBizCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b8

    goto :goto_bb

    .line 55
    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 68
    :cond_bb
    :goto_bb
    return-object v4

    .line 71
    :cond_bc
    :goto_bc
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config request succ, config is:\n "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4024
    invoke-static {v3, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v4
.end method
