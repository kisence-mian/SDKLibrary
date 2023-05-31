.class public Lcom/bytedance/sdk/openadsdk/core/h/k;
.super Ljava/lang/Object;
.source "TTDnsSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bytedance/sdk/openadsdk/core/h/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 88
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    :cond_6
    :goto_6
    return-object p1

    .line 92
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 93
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/c;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_20

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/d;

    .line 97
    :cond_20
    if-nez v0, :cond_32

    .line 98
    const-string v0, "is.snssdk.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a()V

    goto :goto_6

    .line 104
    :cond_32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->d()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 105
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a()V

    goto :goto_6

    .line 108
    :cond_40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->e()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 110
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a()V

    goto :goto_6

    .line 112
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 113
    sub-long v2, v4, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/k;->a(Lcom/bytedance/sdk/openadsdk/core/h/d;J)V

    goto :goto_6
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/h/d;J)V
    .registers 8

    .prologue
    .line 119
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/d;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    :cond_8
    :goto_8
    return-void

    .line 122
    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Z)V

    .line 126
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/a/a;-><init>()V

    .line 127
    const-string v1, "dns_resolution_time"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 128
    const-string v1, "dns_host"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/f/a/a;

    .line 129
    const-string v1, "dns_duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/f/a/a;

    .line 130
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    goto :goto_8
.end method

.method private c()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 61
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    .line 66
    :cond_15
    :goto_15
    return-void

    .line 63
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method private d()V
    .registers 4

    .prologue
    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 72
    const-string v0, "tt_dns_settings"

    const-string v1, "dnsinfo"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_17
    :goto_17
    return-void

    .line 77
    :cond_18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/k;->e()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 79
    const-string v1, "dnsinfo"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private e()Lcom/bytedance/sdk/openadsdk/utils/ad;
    .registers 3

    .prologue
    .line 84
    const-string v0, "tt_dns_settings"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    const-string v0, "tt_dns_settings"

    const-string v1, "dnsinfo"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/k;->c()V

    .line 46
    :goto_15
    return-void

    .line 43
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/k;->e()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    .line 44
    const-string v1, "dnsinfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/k;->c()V

    goto :goto_15
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    if-eqz v0, :cond_16

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->b:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k;->a:Ljava/lang/String;

    .line 55
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/k;->d()V

    .line 56
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/k$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/h/k$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/k;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Lcom/bytedance/sdk/adnet/core/o;)V

    .line 140
    return-void
.end method
