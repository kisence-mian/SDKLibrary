.class public final Lcom/efs/sdk/base/a/h/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/efs/sdk/base/a/h/a/c<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:[B

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/h/b/b;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 5

    .line 22
    nop

    .line 1070
    iget-object v0, p0, Lcom/efs/sdk/base/a/h/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_98

    :cond_a
    goto :goto_1f

    :sswitch_b
    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_20

    :sswitch_15
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_20

    :goto_1f
    const/4 v0, -0x1

    :goto_20
    packed-switch v0, :pswitch_data_a2

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request not support method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2026
    const-string v1, "efs.util.http"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1078
    nop

    .line 22
    return-object v2

    .line 1074
    :pswitch_42
    nop

    .line 1090
    iget-object v0, p0, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    if-eqz v0, :cond_74

    array-length v0, v0

    if-lez v0, :cond_74

    .line 1092
    iget-boolean v0, p0, Lcom/efs/sdk/base/a/h/b/b;->g:Z

    if-eqz v0, :cond_61

    .line 1093
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    .line 1094
    invoke-interface {v0, v1, v2, v3}, Lcom/efs/sdk/base/http/IHttpUtil;->postAsFile(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 1093
    return-object v0

    .line 1098
    :cond_61
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    .line 1099
    invoke-interface {v0, v1, v2, v3}, Lcom/efs/sdk/base/http/IHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 1098
    return-object v0

    .line 1104
    :cond_74
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/efs/sdk/base/a/h/b/b;->d:Ljava/io/File;

    .line 1105
    invoke-interface {v0, v1, v2, v3}, Lcom/efs/sdk/base/http/IHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 1074
    return-object v0

    .line 1083
    :pswitch_87
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    .line 1084
    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/base/http/IHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 1072
    return-object v0

    :sswitch_data_98
    .sparse-switch
        0x18f56 -> :sswitch_15
        0x3498a0 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_87
        :pswitch_42
    .end packed-switch
.end method
