.class public Lmobi/oneway/export/f/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/f/e$a;
    }
.end annotation


# static fields
.field private static f:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Lmobi/oneway/export/enums/AdType;

.field private d:Ljava/lang/String;

.field private e:Lmobi/oneway/export/f/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmobi/oneway/export/f/e;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/f/c;)V
    .registers 7

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/e;->b:Ljava/lang/Long;

    iput-object p1, p0, Lmobi/oneway/export/f/e;->c:Lmobi/oneway/export/enums/AdType;

    iput-object p2, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cid"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "v"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    invoke-virtual {v3}, Lmobi/oneway/export/f/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sv"

    const-string v3, "2.4.2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssv"

    invoke-static {}, Lmobi/oneway/export/h/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wv"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "did"

    invoke-static {}, Lmobi/oneway/export/h/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bdid"

    invoke-static {}, Lmobi/oneway/export/h/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dos"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ua"

    invoke-static {}, Lmobi/oneway/export/h/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ct"

    invoke-static {}, Lmobi/oneway/export/h/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nt"

    invoke-static {}, Lmobi/oneway/export/h/f;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "osv"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dmd"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dmk"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "aid"

    invoke-static {}, Lmobi/oneway/export/h/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bssid"

    invoke-static {}, Lmobi/oneway/export/h/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    invoke-static {}, Lmobi/oneway/export/h/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "simopt"

    invoke-static {}, Lmobi/oneway/export/h/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "simoptn"

    invoke-static {}, Lmobi/oneway/export/h/f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lng"

    invoke-static {}, Lmobi/oneway/export/h/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-static {}, Lmobi/oneway/export/h/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adp"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    invoke-virtual {v3}, Lmobi/oneway/export/f/c;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ip"

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmobi/oneway/export/h/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adts"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "crc"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    invoke-virtual {v3}, Lmobi/oneway/export/f/c;->b()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sc"

    invoke-static {}, Lmobi/oneway/export/d/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "slt"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    invoke-virtual {v3}, Lmobi/oneway/export/f/c;->c()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "dt"

    iget-object v3, p0, Lmobi/oneway/export/f/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pid"

    invoke-direct {p0}, Lmobi/oneway/export/f/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lmobi/oneway/export/d/b;->c()Z

    move-result v2

    if-eqz v2, :cond_126

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmobi/oneway/export/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/oneway/export/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmobi/oneway/export/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_125
    return-object v0

    :cond_126
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_129} :catch_12b

    move-result-object v0

    goto :goto_125

    :catch_12b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_125
.end method

.method static synthetic a(Lmobi/oneway/export/f/e;)Lmobi/oneway/export/enums/AdType;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/f/e;->c:Lmobi/oneway/export/enums/AdType;

    return-object v0
.end method

.method static synthetic b(Lmobi/oneway/export/f/e;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lmobi/oneway/export/f/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/e;->b:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/f/e;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v1}, Lmobi/oneway/export/enums/AdType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/f/e;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/e;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/e;->a:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Lmobi/oneway/export/f/e;->d:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    iget-object v1, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    invoke-virtual {v1}, Lmobi/oneway/export/f/c;->g()Lmobi/oneway/export/plugin/BaseAd;

    move-result-object v1

    if-eqz v1, :cond_1b

    sget-object v2, Lmobi/oneway/export/f/e$1;->b:[I

    iget-object v3, p0, Lmobi/oneway/export/f/e;->c:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v3}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    :cond_1b
    :goto_1b
    return-object v0

    :pswitch_1c
    invoke-virtual {v1}, Lmobi/oneway/export/plugin/BaseAd;->getRewardId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_21
    invoke-virtual {v1}, Lmobi/oneway/export/plugin/BaseAd;->getInterstitialId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_26
    invoke-virtual {v1}, Lmobi/oneway/export/plugin/BaseAd;->getInterstitialImageId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_2b
    invoke-virtual {v1}, Lmobi/oneway/export/plugin/BaseAd;->getSplashId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_30
    invoke-virtual {v1}, Lmobi/oneway/export/plugin/BaseAd;->getInteractiveId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_35
    invoke-virtual {v1}, Lmobi/oneway/export/plugin/BaseAd;->getFeedAdId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_30
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lmobi/oneway/export/f/e$1;->a:[I

    invoke-virtual {p1}, Lmobi/oneway/export/enums/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    :cond_b
    :goto_b
    :pswitch_b
    iget-object v0, p0, Lmobi/oneway/export/f/e;->e:Lmobi/oneway/export/f/c;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    sget-object v0, Lmobi/oneway/export/f/e;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmobi/oneway/export/f/e$a;

    invoke-direct {v1, p0, p1}, Lmobi/oneway/export/f/e$a;-><init>(Lmobi/oneway/export/f/e;Lmobi/oneway/export/enums/EventType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    return-void

    :pswitch_1f
    invoke-direct {p0}, Lmobi/oneway/export/f/e;->b()V

    goto :goto_b

    :pswitch_23
    iget-object v0, p0, Lmobi/oneway/export/f/e;->c:Lmobi/oneway/export/enums/AdType;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/enums/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lmobi/oneway/export/f/e;->b()V

    goto :goto_b

    :pswitch_31
    invoke-direct {p0}, Lmobi/oneway/export/f/e;->b()V

    iput-object p2, p0, Lmobi/oneway/export/f/e;->d:Ljava/lang/String;

    goto :goto_b

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_23
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_31
    .end packed-switch
.end method

.method public a(Lmobi/oneway/export/enums/EventType;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    return-void
.end method
