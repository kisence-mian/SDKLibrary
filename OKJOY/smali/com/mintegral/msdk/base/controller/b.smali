.class public Lcom/mintegral/msdk/base/controller/b;
.super Ljava/lang/Object;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/controller/b$a;
    }
.end annotation


# static fields
.field private static j:Lcom/mintegral/msdk/base/controller/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field i:Landroid/os/Handler;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/mintegral/msdk/b/a;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Lcom/mintegral/msdk/MIntegralUser;

.field private u:Z

.field private v:Ljava/util/Timer;

.field private w:Lcom/mintegral/msdk/f/f;

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Lcom/mintegral/msdk/out/AdMobClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/controller/b;->j:Lcom/mintegral/msdk/base/controller/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/mintegral/msdk/base/controller/b;->p:Z

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->a:I

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->b:I

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->c:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->d:I

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->e:I

    .line 101
    const/4 v0, 0x6

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->f:I

    .line 102
    const/4 v0, 0x7

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->g:I

    .line 103
    const/16 v0, 0x8

    iput v0, p0, Lcom/mintegral/msdk/base/controller/b;->h:I

    .line 116
    iput-boolean v1, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z

    .line 693
    new-instance v0, Lcom/mintegral/msdk/base/controller/b$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/controller/b$3;-><init>(Lcom/mintegral/msdk/base/controller/b;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method public static a()Lcom/mintegral/msdk/base/controller/b;
    .registers 2

    .prologue
    .line 136
    sget-object v0, Lcom/mintegral/msdk/base/controller/b;->j:Lcom/mintegral/msdk/base/controller/b;

    if-nez v0, :cond_13

    .line 137
    const-class v1, Lcom/mintegral/msdk/base/controller/b;

    monitor-enter v1

    .line 138
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/controller/b;->j:Lcom/mintegral/msdk/base/controller/b;

    if-nez v0, :cond_12

    .line 139
    new-instance v0, Lcom/mintegral/msdk/base/controller/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/controller/b;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/controller/b;->j:Lcom/mintegral/msdk/base/controller/b;

    .line 141
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 143
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/controller/b;->j:Lcom/mintegral/msdk/base/controller/b;

    return-object v0

    .line 141
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/controller/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/controller/b;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 6894
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6897
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {p1}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6898
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6899
    new-instance v0, Lcom/mintegral/msdk/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/c;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6907
    :cond_26
    :goto_26
    return-void

    .line 6901
    :cond_27
    new-instance v0, Lcom/mintegral/msdk/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/c;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mintegral/msdk/c/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6902
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/b;->a()V

    .line 6903
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    move-result-object v0

    .line 6904
    if-eqz v0, :cond_26

    .line 6905
    invoke-static {p1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 6906
    if-eqz v0, :cond_50

    .line 6907
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->bh()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    goto :goto_26

    .line 6909
    :cond_50
    const-string v0, "https://cdn-adn-https.rayjump.com/cdn-adn/v2/portal/19/08/20/11/06/5d5b63cb457e2.js"

    sput-object v0, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    goto :goto_26
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/controller/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 14

    .prologue
    .line 84
    .line 8527
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 8528
    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/m;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8529
    const/16 v0, 0x8

    iput v0, v6, Landroid/os/Message;->what:I

    .line 8530
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8531
    const-string v0, "SDKController"

    const-string v1, "PBTask \u4e0a\u62a5\u6570\u636e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8532
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v1, "pb_first_report"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8533
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v1, "pb_pre_report_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 84
    .line 7559
    const/4 v0, 0x0

    .line 7560
    if-eqz p0, :cond_11

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7561
    const/4 v0, 0x1

    .line 7562
    const-string v1, "SDKController"

    const-string v2, "PBTask fulllist black pb \u8fc7\u6ee4\u6389"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_11
    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/mintegral/msdk/MIntegralUser;)V
    .registers 8

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    .line 1020
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_4f

    .line 1021
    invoke-static {p1}, Lcom/mintegral/msdk/MIntegralUser;->toJSON(Lcom/mintegral/msdk/MIntegralUser;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1023
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v2, "mintegral_user"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    .line 1025
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v2, "mintegral_user_expiretime"

    iget-wide v4, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    :goto_2f
    const-string v1, "com.mintegral.msdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeMintegralUser,json:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4c

    .line 1034
    :goto_46
    monitor-exit p0

    return-void

    .line 1027
    :cond_48
    :try_start_48
    invoke-direct {p0}, Lcom/mintegral/msdk/base/controller/b;->i()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_2f

    .line 1019
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1032
    :cond_4f
    :try_start_4f
    const-string v0, "com.mintegral.msdk"

    const-string v1, "can\'t write mintegralUser"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    goto :goto_46
.end method

.method static synthetic c(Lcom/mintegral/msdk/base/controller/b;)V
    .registers 6

    .prologue
    .line 8938
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->g(Landroid/content/Context;)I

    move-result v0

    .line 8939
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 8940
    const-string v2, "SDKController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appInstallNums:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " installIds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8941
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/entity/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8942
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 8943
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 8944
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8945
    const/4 v0, 0x6

    iput v0, v1, Landroid/os/Message;->what:I

    .line 8946
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 8950
    :cond_40
    :goto_40
    return-void

    .line 8949
    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method static synthetic d(Lcom/mintegral/msdk/base/controller/b;)V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 8961
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8962
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 8963
    if-nez v0, :cond_83

    .line 8964
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    move-object v1, v0

    .line 8966
    :goto_19
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v4, "mintegral_setting_campaign_time"

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v4, v5}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 8967
    cmp-long v0, v4, v8

    if-lez v0, :cond_3f

    .line 8969
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->Q()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_3f

    .line 8990
    :cond_3e
    :goto_3e
    return-void

    .line 8974
    :cond_3f
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->O()I

    move-result v0

    if-gtz v0, :cond_5e

    .line 8976
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/t;->d()I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    goto :goto_3e

    .line 8989
    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 8980
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/t;->e()Ljava/util/List;

    move-result-object v0

    .line 8981
    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 8982
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 8983
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8984
    const/4 v0, 0x7

    iput v0, v1, Landroid/os/Message;->what:I

    .line 8985
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_82} :catch_59

    goto :goto_3e

    :cond_83
    move-object v1, v0

    goto :goto_19
.end method

.method static synthetic e()V
    .registers 0

    .prologue
    .line 84
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->f()V

    return-void
.end method

.method private static f()V
    .registers 4

    .prologue
    .line 569
    :try_start_0
    const-string v0, "com.mintegral.msdk.e.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 570
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 571
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    const-string v2, "start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 573
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 577
    :goto_26
    return-void

    .line 574
    :catch_27
    move-exception v0

    .line 575
    const-string v1, "SDKController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method private g()V
    .registers 7

    .prologue
    .line 624
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_75

    .line 626
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->a()Ljava/util/List;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_75

    .line 628
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/b;

    .line 629
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/b;->a()I

    move-result v2

    const/16 v3, 0x11f

    if-ne v2, v3, :cond_76

    .line 630
    const-string v2, "com.mintegral.msdk.interstitialvideo.out.MTGInterstitialVideoHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 631
    iget-object v3, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    if-eqz v3, :cond_21

    .line 632
    if-eqz v2, :cond_21

    .line 633
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 634
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/b;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_21

    .line 636
    const-string v3, "loadFormSelfFilling"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 637
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_21

    .line 656
    :catch_6d
    move-exception v0

    .line 657
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_75

    .line 658
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 661
    :cond_75
    return-void

    .line 641
    :cond_76
    :try_start_76
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/b;->a()I

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_21

    .line 642
    const-string v2, "com.mintegral.msdk.out.MTGRewardVideoHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 643
    if-eqz v2, :cond_21

    .line 644
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 645
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/b;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_21

    .line 647
    const-string v3, "loadFormSelfFilling"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 648
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_b1} :catch_6d

    goto/16 :goto_21
.end method

.method private static h()Ljava/lang/String;
    .registers 6

    .prologue
    .line 917
    const-string v1, ""

    .line 920
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 921
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 923
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 924
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_1a

    .line 931
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    move-object v0, v1

    .line 933
    :goto_33
    return-object v0

    .line 927
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 928
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_2e

    move-result-object v0

    goto :goto_33
.end method

.method private i()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    .line 1038
    iput-wide v4, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    .line 1039
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_2e

    .line 1040
    const-string v0, "com.mintegral.msdk"

    const-string v1, "clearMintegralUser"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v1, "mintegral_user"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    const-string v1, "mintegral_user_expiretime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z

    .line 1047
    :goto_2d
    return-void

    .line 1045
    :cond_2e
    const-string v0, "com.mintegral.msdk"

    const-string v1, "can\'t clear mintegralUser"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;
    .registers 6

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->w:Lcom/mintegral/msdk/f/f;

    if-nez v0, :cond_1f

    .line 6251
    new-instance v0, Lcom/mintegral/msdk/f/f$a;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/f/f$a;-><init>(Landroid/content/Context;)V

    .line 6261
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "video-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6252
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/f/f$a;->a(Ljava/io/File;)Lcom/mintegral/msdk/f/f$a;

    move-result-object v0

    .line 6253
    invoke-virtual {v0}, Lcom/mintegral/msdk/f/f$a;->a()Lcom/mintegral/msdk/f/f;

    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->w:Lcom/mintegral/msdk/f/f;

    .line 230
    :goto_1e
    return-object v0

    .line 225
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->w:Lcom/mintegral/msdk/f/f;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_1e

    :catch_22
    move-exception v0

    .line 230
    :goto_23
    const/4 v0, 0x0

    goto :goto_1e

    .line 229
    :catch_25
    move-exception v0

    goto :goto_23
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;
    .registers 4

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/MIntegralUser;)V
    .registers 5

    .prologue
    .line 994
    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    if-eq v0, p1, :cond_23

    .line 995
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z

    .line 996
    const-string v0, "com.mintegral.msdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update mintegralUser:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/MIntegralUser;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2b

    .line 1001
    :goto_21
    monitor-exit p0

    return-void

    .line 999
    :cond_23
    :try_start_23
    const-string v0, "com.mintegral.msdk"

    const-string v1, "can\'t update mintegralUser"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_21

    .line 994
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 2

    .prologue
    .line 871
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b;->z:Lcom/mintegral/msdk/out/AdMobClickListener;

    .line 872
    return-void
.end method

.method public final a(Ljava/util/Map;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 875
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/system/a;->getStatus()Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    if-eq v0, v1, :cond_14

    .line 876
    const-string v0, "SDKController"

    const-string v1, "preloaad failed,sdk do not inited"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6292
    :cond_13
    :goto_13
    return-void

    .line 879
    :cond_14
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    .line 880
    iput p2, p0, Lcom/mintegral/msdk/base/controller/b;->y:I

    .line 881
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    .line 882
    if-eqz p1, :cond_13

    .line 6270
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->q:Lcom/mintegral/msdk/b/a;

    if-nez v0, :cond_2c

    .line 6271
    new-instance v0, Lcom/mintegral/msdk/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/b/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->q:Lcom/mintegral/msdk/b/a;

    .line 6274
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 6275
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    const-string v1, "layout_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6276
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    const-string v1, "layout_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6277
    if-nez v0, :cond_61

    .line 6278
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    iget v1, p0, Lcom/mintegral/msdk/base/controller/b;->y:I

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->z:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/b/a;->a(Ljava/util/Map;ILcom/mintegral/msdk/out/AdMobClickListener;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5b} :catch_5c

    goto :goto_13

    .line 6291
    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 6279
    :cond_61
    const/4 v1, 0x3

    if-ne v1, v0, :cond_6a

    .line 6280
    :try_start_64
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->x:Ljava/util/Map;

    invoke-static {v0}, Lcom/mintegral/msdk/b/a;->a(Ljava/util/Map;)V

    goto :goto_13

    .line 6281
    :cond_6a
    const/4 v1, 0x1

    if-ne v1, v0, :cond_71

    .line 6282
    invoke-static {}, Lcom/mintegral/msdk/b/a;->a()V

    goto :goto_13

    .line 6283
    :cond_71
    const/4 v1, 0x2

    if-ne v1, v0, :cond_78

    .line 6284
    invoke-static {}, Lcom/mintegral/msdk/b/a;->b()V

    goto :goto_13

    .line 6286
    :cond_78
    const-string v0, "SDKController"

    const-string v1, "unknow layout type in preload"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_5c

    goto :goto_13
.end method

.method public final a(Ljava/util/Map;Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 153
    if-eqz p2, :cond_61

    .line 154
    const-string v0, "mintegral_appid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 155
    const-string v0, "mintegral_appid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    .line 157
    :cond_16
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    .line 158
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 160
    :try_start_25
    const-string v0, "mintegral_appid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 162
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "sdk_app_id"

    invoke-virtual {v2, v3, v0}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3c} :catch_62
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_3c} :catch_67

    .line 169
    :cond_3c
    :goto_3c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_4b

    .line 170
    invoke-static {p2}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/d/b;->a(Ljava/lang/String;)V

    .line 172
    :cond_4b
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->p:Z

    if-ne v0, v7, :cond_6c

    .line 174
    invoke-static {}, Lcom/mintegral/msdk/rover/b;->a()Lcom/mintegral/msdk/rover/b;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/rover/b;->a(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v0}, Lcom/mintegral/msdk/rover/b;->b()V

    .line 177
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v0, p2}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/b;->a()V

    .line 217
    :cond_61
    :goto_61
    return-void

    .line 165
    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 167
    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    .line 180
    :cond_6c
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    if-nez v0, :cond_bc

    .line 2051
    const-string v0, "mintegral_user_expiretime"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    .line 2052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2053
    iget-wide v4, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v0, v2, v4

    if-gez v0, :cond_2b6

    .line 2054
    const-string v0, "mintegral_user"

    const-string v2, ""

    invoke-static {p2, v0, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2055
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 2056
    invoke-static {v0}, Lcom/mintegral/msdk/MIntegralUser;->getMintegralUser(Ljava/lang/String;)Lcom/mintegral/msdk/MIntegralUser;

    move-result-object v1

    .line 2058
    :cond_a6
    const-string v2, "com.mintegral.msdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load user,json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_ba
    iput-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    .line 185
    :cond_bc
    invoke-static {p2}, Lcom/mintegral/msdk/base/utils/c;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 188
    if-eqz p1, :cond_61

    .line 189
    const-string v0, "facebook_placementid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 190
    const-string v0, "facebook_placementid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->l:Ljava/lang/String;

    .line 192
    :cond_d3
    const-string v0, "mintegral_appid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 193
    const-string v0, "mintegral_appid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    .line 196
    :cond_e5
    const-string v0, "mintegral_appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 197
    const-string v0, "mintegral_appkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->o:Ljava/lang/String;

    .line 199
    :cond_f7
    const-string v0, "applicationID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 200
    const-string v0, "applicationID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->r:Ljava/lang/String;

    .line 202
    :cond_109
    const-string v0, "mintegral_appstartupcarsh"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 203
    const-string v0, "mintegral_appstartupcarsh"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->m:Ljava/lang/String;

    .line 205
    :cond_11b
    invoke-direct {p0}, Lcom/mintegral/msdk/base/controller/b;->g()V

    .line 2848
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->c(Ljava/lang/String;)V

    .line 2849
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->d(Ljava/lang/String;)V

    .line 2850
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->b(Ljava/lang/String;)V

    .line 2851
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->a(Ljava/lang/String;)V

    .line 2855
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/base/controller/b$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/controller/b$5;-><init>(Lcom/mintegral/msdk/base/controller/b;)V

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a$b;Landroid/os/Handler;)V

    .line 2299
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3358
    :try_start_156
    invoke-static {}, Lcom/iab/omid/library/mintegral/Omid;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/iab/omid/library/mintegral/Omid;->activateWithOmidApiVersion(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 3359
    if-nez v1, :cond_171

    .line 3360
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "activate om failed"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_171
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_171} :catch_2c2

    .line 2300
    :cond_171
    :goto_171
    const-string v0, "SDKController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "facebook = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    :try_start_19f
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->INIT_UA_IN:Z

    if-eqz v0, :cond_2ce

    .line 2304
    invoke-static {}, Lcom/mintegral/msdk/base/common/g/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 2306
    new-instance v1, Lcom/mintegral/msdk/base/controller/b$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/controller/b$1;-><init>(Lcom/mintegral/msdk/base/controller/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1af} :catch_2e6

    .line 2342
    :goto_1af
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/controller/b;->c()V

    .line 2345
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->INIT_UA_IN:Z

    if-eqz v0, :cond_1fe

    .line 3667
    :try_start_1b6
    const-string v0, "com.mintegral.msdk.appwall.service.HandlerProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3668
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3669
    const-string v2, "plugin_name"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MVWallPlugin"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3671
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 3672
    const-string v2, "getLayout"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3675
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1fe} :catch_2f5

    .line 2348
    :cond_1fe
    :goto_1fe
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/i;->a(Landroid/content/Context;)V

    .line 4581
    :try_start_203
    const-string v0, "com.alphab.AlphabFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4583
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_26c

    .line 4584
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2ff

    .line 4585
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4589
    :goto_219
    if-eqz v1, :cond_26c

    .line 4590
    const-string v1, "com.alphab.i.AlphabRelFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4591
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 4592
    if-eqz v2, :cond_26c

    .line 4593
    const-string v3, "createAlphab"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4594
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4595
    if-eqz v1, :cond_26c

    .line 4596
    const-string v2, "com.alphab.Operation"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 4597
    const-string v3, "process"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4598
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4599
    const-string v2, "com.alphab.Alphab"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 4600
    const-string v3, "init"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4601
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26c
    .catch Ljava/lang/Throwable; {:try_start_203 .. :try_end_26c} :catch_303

    .line 5369
    :cond_26c
    :goto_26c
    :try_start_26c
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 5370
    if-nez v0, :cond_28b

    .line 5371
    const-string v0, "SDKController"

    const-string v1, "initPB \u83b7\u53d6\u9ed8\u8ba4\u7684appsetting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5372
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 5374
    :cond_28b
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->G()I

    move-result v1

    if-lez v1, :cond_29c

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v1, "authority_app_progress"

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30d

    .line 5375
    :cond_29c
    const-string v0, "SDKController"

    const-string v1, "initPB pmax \u4e3a0 return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a3
    .catch Ljava/lang/Throwable; {:try_start_26c .. :try_end_2a3} :catch_353

    .line 2353
    :goto_2a3
    iput-boolean v7, p0, Lcom/mintegral/msdk/base/controller/b;->p:Z

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->n:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 212
    invoke-static {}, Lcom/mintegral/msdk/rover/b;->a()Lcom/mintegral/msdk/rover/b;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/rover/b;->a(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v0}, Lcom/mintegral/msdk/rover/b;->b()V

    goto/16 :goto_61

    .line 2060
    :cond_2b6
    const-string v0, "com.mintegral.msdk"

    const-string v2, "user expire,clear user"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    invoke-direct {p0}, Lcom/mintegral/msdk/base/controller/b;->i()V

    goto/16 :goto_ba

    .line 3362
    :catch_2c2
    move-exception v0

    .line 3363
    const-string v1, "SDKController"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_171

    .line 2319
    :cond_2ce
    :try_start_2ce
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2f0

    .line 2320
    invoke-static {}, Lcom/mintegral/msdk/base/common/g/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 2322
    new-instance v1, Lcom/mintegral/msdk/base/controller/b$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/controller/b$2;-><init>(Lcom/mintegral/msdk/base/controller/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2e4} :catch_2e6

    goto/16 :goto_1af

    .line 2338
    :catch_2e6
    move-exception v0

    const-string v0, "SDKController"

    const-string v1, "get app setting failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1af

    .line 2333
    :cond_2f0
    :try_start_2f0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->f()V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_2f3} :catch_2e6

    goto/16 :goto_1af

    .line 3679
    :catch_2f5
    move-exception v0

    const-string v0, "SDKController"

    const-string v1, "if you integrate the appwall ad style,please import appwall.aar or ignore it"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fe

    .line 4587
    :cond_2ff
    :try_start_2ff
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->k:Landroid/content/Context;
    :try_end_301
    .catch Ljava/lang/Throwable; {:try_start_2ff .. :try_end_301} :catch_303

    goto/16 :goto_219

    .line 4607
    :catch_303
    move-exception v0

    .line 4608
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_26c

    .line 4609
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_26c

    .line 5378
    :cond_30d
    :try_start_30d
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->D()I
    :try_end_310
    .catch Ljava/lang/Throwable; {:try_start_30d .. :try_end_310} :catch_353

    move-result v4

    .line 5538
    :try_start_311
    const-string v0, "SDKController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pf:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_325
    .catch Ljava/lang/Throwable; {:try_start_311 .. :try_end_325} :catch_347

    .line 5550
    :try_start_325
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->v:Ljava/util/Timer;

    if-eqz v0, :cond_32e

    .line 5551
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_32e
    .catch Ljava/lang/Throwable; {:try_start_325 .. :try_end_32e} :catch_35f

    .line 5540
    :cond_32e
    :goto_32e
    :try_start_32e
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->v:Ljava/util/Timer;

    .line 5541
    new-instance v1, Lcom/mintegral/msdk/base/controller/b$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/base/controller/b$a;-><init>(Lcom/mintegral/msdk/base/controller/b;B)V

    .line 5542
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->v:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_345
    .catch Ljava/lang/Throwable; {:try_start_32e .. :try_end_345} :catch_347

    goto/16 :goto_2a3

    .line 5543
    :catch_347
    move-exception v0

    .line 5544
    :try_start_348
    const-string v1, "SDKController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_351
    .catch Ljava/lang/Throwable; {:try_start_348 .. :try_end_351} :catch_353

    goto/16 :goto_2a3

    .line 5379
    :catch_353
    move-exception v0

    .line 5380
    const-string v1, "SDKController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a3

    .line 5553
    :catch_35f
    move-exception v0

    .line 5554
    :try_start_360
    const-string v1, "SDKController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_369
    .catch Ljava/lang/Throwable; {:try_start_360 .. :try_end_369} :catch_347

    goto :goto_32e
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 689
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 691
    :cond_a
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 792
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/controller/b$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/controller/b$4;-><init>(Lcom/mintegral/msdk/base/controller/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 844
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 845
    return-void
.end method

.method public final d()Lcom/mintegral/msdk/MIntegralUser;
    .registers 5

    .prologue
    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1006
    iget-wide v2, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    iget-wide v0, p0, Lcom/mintegral/msdk/base/controller/b;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    .line 1007
    :cond_16
    const-string v0, "com.mintegral.msdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMIntegralUser,user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/controller/b;->u:Z

    if-eqz v0, :cond_35

    .line 1009
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/MIntegralUser;)V

    .line 1015
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b;->t:Lcom/mintegral/msdk/MIntegralUser;

    return-object v0

    .line 1012
    :cond_38
    const-string v0, "com.mintegral.msdk"

    const-string v1, "getMIntegralUser,expire"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0}, Lcom/mintegral/msdk/base/controller/b;->i()V

    goto :goto_35
.end method
