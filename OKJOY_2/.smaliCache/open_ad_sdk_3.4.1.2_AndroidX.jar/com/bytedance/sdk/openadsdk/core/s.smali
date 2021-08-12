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
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Z

    .line 19
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/t;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    .line 31
    return-void

    .line 33
    :cond_1a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_setParams(Ljava/lang/String;)V

    .line 37
    :cond_2e
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;
    .registers 3

    .line 61
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    if-nez v0, :cond_17

    .line 62
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/s;

    monitor-enter v0

    .line 63
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    if-nez v1, :cond_12

    .line 64
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/s;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    .line 66
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 68
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    return-object p0
.end method

.method private c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .registers 2

    .line 174
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->n()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 7

    .line 133
    nop

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 135
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 137
    if-eqz p1, :cond_29

    array-length v0, p1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_29

    .line 138
    array-length v0, p1

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_29

    aget-object v3, p1, v2

    .line 139
    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 140
    nop

    .line 141
    const/4 v1, 0x1

    goto :goto_29

    .line 138
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 146
    :cond_29
    :goto_29
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 91
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_11

    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/t;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_11

    .line 95
    return-object v0

    .line 97
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 40
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->a(Ljava/lang/String;)V

    .line 43
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    return-void

    .line 46
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Ljava/lang/String;

    .line 49
    :cond_18
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Z

    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_setParams(Ljava/lang/String;)V

    .line 53
    :cond_2c
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 106
    const-string v0, ""

    const/4 v1, 0x0

    .line 107
    :try_start_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 108
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_pullSg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 109
    :cond_12
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v2, :cond_1a

    .line 110
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/t;->b()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_1a
    :goto_1a
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/s;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/s;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_39

    return-object v0

    .line 119
    :cond_38
    return-object v0

    .line 121
    :catch_39
    move-exception v1

    .line 123
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 77
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_7

    .line 78
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->c(Ljava/lang/String;)V

    .line 80
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Z

    if-eqz v0, :cond_c

    .line 81
    return-void

    .line 82
    :cond_c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-nez v0, :cond_13

    .line 83
    return-void

    .line 85
    :cond_13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_reportNow(Ljava/lang/String;)V

    .line 87
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Z

    .line 88
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 159
    return-object v1

    .line 161
    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 163
    return-object v1

    .line 165
    :cond_14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 166
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_pullVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 167
    :cond_23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/t;

    if-eqz v0, :cond_2c

    .line 168
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_2c
    return-object v1
.end method
