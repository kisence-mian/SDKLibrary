.class public final Lcom/mintegral/msdk/base/common/net/f$a;
.super Ljava/lang/Object;
.source "CommonHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final f:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:J

.field e:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 459
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 460
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/mintegral/msdk/base/common/net/f$a;->f:Ljava/text/SimpleDateFormat;

    .line 459
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$a;->a:Ljava/lang/String;

    .line 464
    iput-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->b:J

    .line 465
    iput-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->c:J

    .line 466
    iput-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->d:J

    .line 467
    iput-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->e:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 474
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    const-string v1, "url"

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string v1, "first_data_cost"

    iget-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 477
    const-string v1, "total_data"

    iget-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 478
    const-string v1, "read_cost"

    iget-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 479
    const-string v1, "total_cost"

    iget-wide v2, p0, Lcom/mintegral/msdk/base/common/net/f$a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 480
    const-string v1, "record_time"

    sget-object v2, Lcom/mintegral/msdk/base/common/net/f$a;->f:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_48

    move-result-object v0

    .line 485
    :goto_47
    return-object v0

    :catch_48
    move-exception v0

    :cond_49
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method
