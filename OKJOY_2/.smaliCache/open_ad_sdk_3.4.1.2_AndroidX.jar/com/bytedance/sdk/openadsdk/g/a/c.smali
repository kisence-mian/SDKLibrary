.class public Lcom/bytedance/sdk/openadsdk/g/a/c;
.super Ljava/lang/Object;
.source "LogStatsBase.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bytedance/sdk/openadsdk/g/a/c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/g/a/a;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "3.4.1.2"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:J

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:I

    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/g/a/c<",
            "Lcom/bytedance/sdk/openadsdk/g/a/c;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;-><init>()V

    return-object v0
.end method

.method private p()Lorg/json/JSONObject;
    .registers 4

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    :try_start_5
    const-string v1, "os"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string v1, "imei"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "oaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    .line 108
    goto :goto_23

    .line 106
    :catch_22
    move-exception v1

    .line 109
    :goto_23
    return-object v0
.end method

.method private q()Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 113
    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 186
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    .line 187
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->a:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/json/JSONObject;
    .registers 6

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 40
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 44
    const-string v1, "rit"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_2b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 48
    const-string v1, "creative_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_3e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 52
    const-string v1, "ad_sdk_version"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_59} :catch_104

    const-string v2, "app_version"

    if-nez v1, :cond_65

    .line 56
    :try_start_5d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6c

    .line 58
    :cond_65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :goto_6c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->i()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7f

    .line 61
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    :cond_7f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->j()I

    move-result v1

    if-lez v1, :cond_8e

    .line 65
    const-string v1, "adtype"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    :cond_8e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 69
    const-string v1, "req_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_a1
    const-string v1, "error_code"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 74
    const-string v1, "error_msg"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_bd
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 78
    const-string v1, "extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_d0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 82
    const-string v1, "image_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_e3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 85
    const-string v1, "event_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_f6
    const-string v1, "conn_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_103} :catch_104

    .line 90
    goto :goto_108

    .line 88
    :catch_104
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :goto_108
    :try_start_108
    const-string v1, "device_info"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->p()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_112

    .line 95
    goto :goto_113

    .line 94
    :catchall_112
    move-exception v1

    .line 97
    :goto_113
    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 204
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:I

    .line 205
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->m:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 177
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:J

    .line 178
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->b:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->j:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->k:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:J

    return-wide v0
.end method

.method public i(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->l:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->q()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method public j()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    .line 200
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->l:Ljava/lang/String;

    return-object v0
.end method
