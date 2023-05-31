.class public Lcom/mintegral/msdk/c/c;
.super Ljava/lang/Object;
.source "SettingRequestController.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/mintegral/msdk/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mintegral/msdk/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 27
    .line 2214
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    move-result-object v0

    .line 2215
    if-eqz v0, :cond_12

    .line 2216
    invoke-static {p1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 2217
    if-eqz v0, :cond_12

    .line 2218
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->bh()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    .line 2221
    :cond_12
    invoke-static {p0}, Lcom/mintegral/msdk/a/b;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 155
    if-nez p1, :cond_3

    .line 194
    :goto_2
    return-void

    .line 158
    :cond_3
    new-instance v0, Lcom/mintegral/msdk/c/a/a;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/c/a/a;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 160
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->o:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/c/c$3;

    invoke-direct {v3, p0}, Lcom/mintegral/msdk/c/c$3;-><init>(Lcom/mintegral/msdk/c/c;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/c/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 34
    if-nez p1, :cond_3

    .line 95
    :goto_2
    return-void

    .line 37
    :cond_3
    new-instance v0, Lcom/mintegral/msdk/c/a/c;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/c/a/c;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 39
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "jm_a"

    invoke-static {p1}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/d/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "jm_n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/d/b;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "launcher"

    invoke-static {p1}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->n:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/c/c$1;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/mintegral/msdk/c/c$1;-><init>(Lcom/mintegral/msdk/c/c;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/c/a/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    goto :goto_2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 106
    :cond_d
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object p3

    .line 110
    :cond_1d
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 1194
    invoke-static {p2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 1196
    invoke-static {p2}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {p2, v0, p4}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1197
    new-instance v2, Lcom/mintegral/msdk/c/c;

    invoke-direct {v2}, Lcom/mintegral/msdk/c/c;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    .line 1198
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v4

    .line 1197
    invoke-virtual {v2, v3, p2, v4}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_48
    invoke-static {p2, p4}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 1202
    if-eqz v1, :cond_e3

    if-eqz v2, :cond_e3

    .line 1203
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->aC()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1205
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->z()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 1207
    cmp-long v1, v2, v6

    if-lez v1, :cond_e3

    .line 1208
    sget-object v0, Lcom/mintegral/msdk/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unit setting  nexttime is not ready  [settingNextRequestTime= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v0, 0x0

    .line 110
    :goto_89
    if-eqz v0, :cond_e2

    .line 111
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    const/4 v0, 0x2

    invoke-static {p2, v0, p4}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 112
    new-instance v0, Lcom/mintegral/msdk/c/a/c;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/c/a/c;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v3, "unit_ids"

    invoke-virtual {v1, v3, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->n:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/c/c$2;

    invoke-direct {v3, p0, p2, p4}, Lcom/mintegral/msdk/c/c$2;-><init>(Lcom/mintegral/msdk/c/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/c/a/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    .line 152
    :cond_e2
    return-void

    .line 1214
    :cond_e3
    sget-object v1, Lcom/mintegral/msdk/c/b;->a:Ljava/lang/String;

    const-string v2, "unit setting timeout or not exists"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 197
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_17

    .line 199
    invoke-static {p2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->bg()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_16
    :goto_16
    return-void

    .line 205
    :cond_17
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "sys_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sput-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method
