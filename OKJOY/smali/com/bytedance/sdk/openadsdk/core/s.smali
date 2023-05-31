.class public Lcom/bytedance/sdk/openadsdk/core/s;
.super Ljava/lang/Object;
.source "SecSdkHelper.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/s;

.field private static b:Lcom/bytedance/sdk/openadsdk/core/t;


# instance fields
.field private volatile c:Z

.field private volatile d:Z

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Z

    .line 19
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/t;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    .line 37
    :cond_19
    :goto_19
    return-void

    .line 33
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_setParams(Ljava/lang/String;)V

    goto :goto_19
.end method

.method private b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .registers 2

    .prologue
    .line 164
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->n()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;
    .registers 3

    .prologue
    .line 61
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    if-nez v0, :cond_13

    .line 62
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/s;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    .line 66
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 68
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    return-object v0

    .line 66
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 123
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 125
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_23

    array-length v1, v2

    const/16 v3, 0x14

    if-lt v1, v3, :cond_23

    .line 128
    array-length v3, v2

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_23

    aget-object v4, v2, v1

    .line 129
    const-string v5, "00"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 130
    const/4 v0, 0x1

    .line 136
    :cond_23
    return v0

    .line 128
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_pullSg()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_f
    :goto_f
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/s;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_19
    return-object v0

    .line 99
    :cond_1a
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v1, :cond_f

    .line 100
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/t;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 105
    :cond_25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/s;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 109
    :cond_38
    const-string v0, ""
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_19

    .line 111
    :catch_3b
    move-exception v0

    .line 113
    const-string v0, ""

    goto :goto_19
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_9

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->a(Ljava/lang/String;)V

    .line 43
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    :cond_f
    :goto_f
    return-void

    .line 46
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    .line 49
    :cond_1a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_setParams(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_9

    .line 78
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->c(Ljava/lang/String;)V

    .line 80
    :cond_9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Z

    if-eqz v0, :cond_e

    .line 88
    :cond_d
    :goto_d
    return-void

    .line 82
    :cond_e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_reportNow(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Z

    goto :goto_d
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    const-string v0, ""

    .line 160
    :goto_8
    return-object v0

    .line 151
    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 153
    const-string v0, ""

    goto :goto_8

    .line 155
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 156
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_pullVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 157
    :cond_25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_30

    .line 158
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 160
    :cond_30
    const-string v0, ""

    goto :goto_8
.end method
