.class public final Lcom/mintegral/msdk/c/a;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/c/a$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/b;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private a:I

.field private aA:I

.field private aB:I

.field private aC:I

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:I

.field private aK:Ljava/lang/String;

.field private aL:I

.field private aM:I

.field private aN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Ljava/lang/String;

.field private ab:I

.field private ac:I

.field private ad:Ljava/lang/String;

.field private ae:I

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:J

.field private al:J

.field private am:I

.field private an:I

.field private ao:J

.field private ap:I

.field private aq:I

.field private ar:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:J

.field private f:I

.field private g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:J

.field private k:Z

.field private l:J

.field private m:J

.field private n:J

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v2, p0, Lcom/mintegral/msdk/c/a;->a:I

    .line 44
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->e:J

    .line 118
    iput v2, p0, Lcom/mintegral/msdk/c/a;->L:I

    .line 120
    const/16 v0, 0xe10

    iput v0, p0, Lcom/mintegral/msdk/c/a;->M:I

    .line 179
    iput v3, p0, Lcom/mintegral/msdk/c/a;->V:I

    .line 180
    iput v3, p0, Lcom/mintegral/msdk/c/a;->W:I

    .line 181
    iput v3, p0, Lcom/mintegral/msdk/c/a;->X:I

    .line 182
    iput v2, p0, Lcom/mintegral/msdk/c/a;->Y:I

    .line 183
    iput v3, p0, Lcom/mintegral/msdk/c/a;->Z:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aa:Ljava/lang/String;

    .line 185
    iput v2, p0, Lcom/mintegral/msdk/c/a;->ab:I

    .line 188
    iput v4, p0, Lcom/mintegral/msdk/c/a;->ac:I

    .line 190
    const v0, 0x15180

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ae:I

    .line 192
    const-string v0, "LdxThdi1WBK\\/WgfPhbxQYkeXHBPwHZKAJ7eXHM=="

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->af:Ljava/lang/String;

    .line 193
    const-string v0, "LdxThdi1WBK\\/WgfPhbxQYkeXHBPwHZKsYFh="

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->ag:Ljava/lang/String;

    .line 199
    iput v3, p0, Lcom/mintegral/msdk/c/a;->ah:I

    .line 324
    iput v3, p0, Lcom/mintegral/msdk/c/a;->aj:I

    .line 539
    const/4 v0, 0x3

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ap:I

    .line 1092
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    .line 1098
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    .line 1104
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 1110
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->au:Ljava/lang/String;

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->av:Ljava/lang/String;

    .line 1203
    iput v2, p0, Lcom/mintegral/msdk/c/a;->aw:I

    .line 1210
    const/16 v0, 0x5460

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ax:I

    .line 1219
    iput v4, p0, Lcom/mintegral/msdk/c/a;->ay:I

    .line 1226
    iput v2, p0, Lcom/mintegral/msdk/c/a;->az:I

    .line 1232
    iput v2, p0, Lcom/mintegral/msdk/c/a;->aA:I

    .line 1238
    const v0, 0x93a80

    iput v0, p0, Lcom/mintegral/msdk/c/a;->aB:I

    .line 1245
    iput v2, p0, Lcom/mintegral/msdk/c/a;->aC:I

    .line 1306
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aD:Ljava/lang/String;

    .line 1310
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aE:Ljava/lang/String;

    .line 1314
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aF:Ljava/lang/String;

    .line 1318
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aG:Ljava/lang/String;

    .line 1322
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aH:Ljava/lang/String;

    .line 1478
    iput v2, p0, Lcom/mintegral/msdk/c/a;->aJ:I

    .line 1488
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->aK:Ljava/lang/String;

    .line 1504
    iput v4, p0, Lcom/mintegral/msdk/c/a;->aL:I

    .line 1510
    const/16 v0, 0x1c20

    iput v0, p0, Lcom/mintegral/msdk/c/a;->aM:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 978
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 979
    if-eqz v2, :cond_15

    .line 40961
    iget-object v0, v2, Lcom/mintegral/msdk/c/a;->h:Ljava/util/Map;

    .line 979
    if-nez v0, :cond_18

    .line 980
    :cond_15
    const-string v0, ""

    .line 1021
    :cond_17
    :goto_17
    return-object v0

    .line 983
    :cond_18
    const-string v1, ""

    .line 985
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 41961
    iget-object v0, v2, Lcom/mintegral/msdk/c/a;->h:Ljava/util/Map;

    .line 987
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 988
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 990
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 42961
    iget-object v1, v2, Lcom/mintegral/msdk/c/a;->h:Ljava/util/Map;

    .line 993
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 994
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 995
    const-string v0, ""

    goto :goto_17

    .line 998
    :cond_5b
    const-string v1, "{gaid}"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string v1, "{android_id}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1001
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1002
    const-string v1, "{android_id}"

    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1005
    :cond_7e
    const-string v1, "{android_id_md5_upper}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1006
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1007
    const-string v1, "{android_id_md5_upper}"

    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_95} :catch_97

    move-result-object v0

    goto :goto_17

    .line 1021
    :catch_97
    move-exception v0

    const-string v0, ""

    goto/16 :goto_17

    :cond_9c
    move-object v0, v1

    goto/16 :goto_17
.end method

.method public static aV()Z
    .registers 2

    .prologue
    .line 1057
    const/4 v0, 0x1

    .line 1059
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 1060
    if-eqz v1, :cond_14

    .line 42969
    iget-boolean v0, v1, Lcom/mintegral/msdk/c/a;->g:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    .line 1066
    :cond_14
    :goto_14
    return v0

    .line 1064
    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public static f(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 700
    .line 702
    :try_start_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e3

    .line 703
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 704
    new-instance v0, Lcom/mintegral/msdk/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/a;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_4dd

    .line 705
    :try_start_14
    const-string v2, "cc"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1648
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->b:Ljava/lang/String;

    .line 706
    const-string v2, "apk_toast"

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u53bb\u901a\u77e5\u680f\u67e5\u770b\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2435
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->F:Ljava/lang/String;

    .line 707
    const-string v2, "mv_wildcard"

    const-string v4, "mintegral"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3319
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->G:Ljava/lang/String;

    .line 708
    const-string v2, "upal"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3656
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->c:J

    .line 709
    const-string v2, "cfc"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3664
    iput v2, v0, Lcom/mintegral/msdk/c/a;->d:I

    .line 710
    const-string v2, "getpf"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3672
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->e:J

    .line 711
    const-string v2, "uplc"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3680
    iput v2, v0, Lcom/mintegral/msdk/c/a;->f:I

    .line 712
    const-string v2, "aa"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3973
    iput-boolean v2, v0, Lcom/mintegral/msdk/c/a;->g:Z

    .line 713
    const-string v2, "current_time"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4957
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->j:J

    .line 714
    const-string v2, "cfb"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 5031
    iput-boolean v2, v0, Lcom/mintegral/msdk/c/a;->i:Z

    .line 715
    const-string v2, "awct"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5635
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->m:J

    .line 716
    const-string v2, "plct"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_211

    const-wide/16 v4, 0xe10

    .line 6627
    :goto_7c
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->l:J

    .line 718
    const-string v2, "rurl"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 7619
    iput-boolean v2, v0, Lcom/mintegral/msdk/c/a;->k:Z

    .line 719
    const-string v2, "uct"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 8611
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->n:J

    .line 720
    const-string v2, "ujds"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 9603
    iput-boolean v2, v0, Lcom/mintegral/msdk/c/a;->o:Z

    .line 721
    const-string v2, "n2"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10039
    iput v2, v0, Lcom/mintegral/msdk/c/a;->p:I

    .line 722
    const-string v2, "n3"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10047
    iput v2, v0, Lcom/mintegral/msdk/c/a;->q:I

    .line 723
    const-string v2, "is_startup_crashsystem"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10311
    iput v2, v0, Lcom/mintegral/msdk/c/a;->H:I

    .line 724
    const-string v2, "n4"

    const/16 v4, 0x708

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 10475
    iput v2, v0, Lcom/mintegral/msdk/c/a;->r:I

    .line 725
    const-string v2, "pcrn"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10499
    iput v2, v0, Lcom/mintegral/msdk/c/a;->t:I

    .line 726
    const-string v2, "plctb"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_219

    const-wide/16 v4, 0x1c20

    .line 10523
    :goto_cc
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->s:J

    .line 728
    const-string v2, "upmi"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10571
    iput v2, v0, Lcom/mintegral/msdk/c/a;->am:I

    .line 729
    const-string v2, "upaid"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10579
    iput v2, v0, Lcom/mintegral/msdk/c/a;->an:I

    .line 730
    const-string v2, "pcrn"

    const/16 v4, 0x64

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 11499
    iput v2, v0, Lcom/mintegral/msdk/c/a;->t:I

    .line 731
    const-string v2, "wicon"

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 11507
    iput v2, v0, Lcom/mintegral/msdk/c/a;->u:I

    .line 732
    const-string v2, "wreq"

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 11515
    iput v2, v0, Lcom/mintegral/msdk/c/a;->v:I

    .line 733
    const-string v2, "opent"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 12491
    iput v2, v0, Lcom/mintegral/msdk/c/a;->w:I

    .line 734
    const-string v2, "sfct"

    const-wide/16 v4, 0x708

    invoke-virtual {v6, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 12563
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->ao:J

    .line 735
    const-string v2, "t_vba"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13483
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->x:Ljava/lang/String;

    .line 736
    const-string v2, "tcct"

    const-wide/32 v4, 0x1499700

    invoke-virtual {v6, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 14467
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->y:J

    .line 737
    const-string v2, "dlrf"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 15443
    iput v2, v0, Lcom/mintegral/msdk/c/a;->z:I

    .line 738
    const-string v2, "dlrfct"

    const v4, 0x93a80

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    .line 15451
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->A:J

    .line 739
    const-string v2, "pcct"

    const v4, 0xa8c0

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 15459
    int-to-long v4, v2

    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->B:J

    .line 740
    const-string v2, "pctn"

    const/4 v4, 0x3

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 15545
    iput v2, v0, Lcom/mintegral/msdk/c/a;->ap:I

    .line 741
    const-string v2, "ilrf"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 16331
    iput v2, v0, Lcom/mintegral/msdk/c/a;->aj:I

    .line 742
    const-string v2, "pw"

    const-string v4, ""

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16696
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->U:Ljava/lang/String;

    .line 743
    const-string v2, "dlapk"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 17339
    iput v2, v0, Lcom/mintegral/msdk/c/a;->ai:I

    .line 746
    const-string v2, "upgd"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 18263
    iput v2, v0, Lcom/mintegral/msdk/c/a;->W:I

    .line 747
    const-string v2, "upsrl"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 19255
    iput v2, v0, Lcom/mintegral/msdk/c/a;->V:I

    .line 748
    const-string v2, "updevid"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 19271
    iput v2, v0, Lcom/mintegral/msdk/c/a;->X:I

    .line 749
    const-string v2, "sc"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 19279
    iput v2, v0, Lcom/mintegral/msdk/c/a;->Y:I

    .line 750
    const-string v2, "up_tips"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 19287
    iput v2, v0, Lcom/mintegral/msdk/c/a;->Z:I

    .line 751
    const-string v2, "iseu"

    const/4 v4, -0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 19303
    iput v2, v0, Lcom/mintegral/msdk/c/a;->ab:I

    .line 752
    const-string v2, "up_tips_url"

    sget-object v4, Lcom/mintegral/msdk/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20295
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->aa:Ljava/lang/String;

    .line 755
    const-string v2, "jmc"

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 21238
    iput v2, v0, Lcom/mintegral/msdk/c/a;->ac:I

    .line 756
    const-string v2, "jmct"

    const v4, 0x15180

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 22230
    iput v2, v0, Lcom/mintegral/msdk/c/a;->ae:I

    .line 757
    const-string v2, "jm_unit"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22246
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->ad:Ljava/lang/String;

    .line 761
    const-string v2, "cdai"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23222
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->ag:Ljava/lang/String;

    .line 762
    const-string v2, "csdai"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24214
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->af:Ljava/lang/String;

    .line 764
    const-string v2, "ils"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 25206
    iput v2, v0, Lcom/mintegral/msdk/c/a;->ah:I

    .line 770
    const-string v2, "clptm"

    const/16 v4, 0xe10

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 26151
    iput v2, v0, Lcom/mintegral/msdk/c/a;->M:I

    .line 771
    const-string v2, "clptype"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 27143
    iput v2, v0, Lcom/mintegral/msdk/c/a;->L:I
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1ed} :catch_296

    .line 773
    :try_start_1ed
    const-string v2, "clpcode"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 774
    if-eqz v4, :cond_223

    .line 775
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_223

    .line 776
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move v2, v3

    .line 777
    :goto_201
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_221

    .line 778
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_20e
    .catch Ljava/lang/Throwable; {:try_start_1ed .. :try_end_20e} :catch_291
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_20e} :catch_296

    .line 777
    add-int/lit8 v2, v2, 0x1

    goto :goto_201

    .line 716
    :cond_211
    :try_start_211
    const-string v2, "plct"

    .line 717
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_7c

    .line 726
    :cond_219
    const-string v2, "plctb"

    .line 727
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_21e} :catch_296

    move-result-wide v4

    goto/16 :goto_cc

    .line 28135
    :cond_221
    :try_start_221
    iput-object v5, v0, Lcom/mintegral/msdk/c/a;->K:Ljava/util/LinkedList;
    :try_end_223
    .catch Ljava/lang/Throwable; {:try_start_221 .. :try_end_223} :catch_291
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_223} :catch_296

    .line 788
    :cond_223
    :goto_223
    :try_start_223
    const-string v2, "pcto"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 789
    cmp-long v2, v4, v8

    if-nez v2, :cond_29b

    .line 28587
    const-wide/16 v4, 0x14

    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->ak:J

    .line 794
    :goto_231
    const-string v2, "tcto"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 795
    cmp-long v2, v4, v8

    if-nez v2, :cond_29e

    .line 29595
    const-wide/16 v4, 0xa

    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->al:J

    .line 821
    :cond_23f
    :goto_23f
    const-string v2, "plc"

    const/4 v4, 0x3

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 31403
    iput v2, v0, Lcom/mintegral/msdk/c/a;->C:I

    .line 822
    const-string v2, "dut"

    const v4, 0x15180

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 31411
    iput v2, v0, Lcom/mintegral/msdk/c/a;->D:I

    .line 823
    const-string v2, "iex"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 31427
    iput v2, v0, Lcom/mintegral/msdk/c/a;->E:I

    .line 826
    const-string v2, "cal"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 827
    if-eqz v5, :cond_2d4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2d4

    .line 828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 829
    :goto_270
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_2d5

    .line 830
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 831
    invoke-static {v7}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28e

    .line 832
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseSettingCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v7

    .line 833
    if-eqz v7, :cond_28e

    .line 834
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_28e
    add-int/lit8 v4, v4, 0x1

    goto :goto_270

    .line 785
    :catch_291
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_295} :catch_296

    goto :goto_223

    .line 947
    :catch_296
    move-exception v1

    :goto_297
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 949
    :cond_29a
    :goto_29a
    return-object v0

    .line 29587
    :cond_29b
    :try_start_29b
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->ak:J

    goto :goto_231

    .line 30595
    :cond_29e
    iput-wide v4, v0, Lcom/mintegral/msdk/c/a;->al:J

    .line 800
    const-string v2, "jt"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 802
    if-eqz v4, :cond_23f

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_23f

    .line 803
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v2, v3

    .line 804
    :goto_2b4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2d0

    .line 812
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 814
    const-string v8, "domain"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "format"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b4

    .line 30965
    :cond_2d0
    iput-object v5, v0, Lcom/mintegral/msdk/c/a;->h:Ljava/util/Map;

    goto/16 :goto_23f

    :cond_2d4
    move-object v2, v1

    .line 839
    :cond_2d5
    if-eqz v2, :cond_2d9

    .line 32419
    iput-object v2, v0, Lcom/mintegral/msdk/c/a;->I:Ljava/util/List;
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_2d9} :catch_296

    .line 845
    :cond_2d9
    :try_start_2d9
    const-string v2, "atf"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 846
    if-eqz v4, :cond_319

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_319

    .line 847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 848
    :goto_2ed
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_319

    .line 849
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 850
    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_316

    .line 851
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 852
    new-instance v5, Lcom/mintegral/msdk/base/entity/b;

    const-string v8, "adtype"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "unitid"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v8, v7}, Lcom/mintegral/msdk/base/entity/b;-><init>(ILjava/lang/String;)V

    .line 853
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_316
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ed

    .line 857
    :cond_319
    if-eqz v1, :cond_31d

    .line 33155
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->J:Ljava/util/List;
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_31d} :catch_368

    .line 865
    :cond_31d
    :goto_31d
    :try_start_31d
    const-string v1, "adct"

    const v2, 0x3f480

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 33555
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aq:I

    .line 868
    const-string v1, "pf"

    const/16 v2, 0x384

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 34347
    iput v1, v0, Lcom/mintegral/msdk/c/a;->N:I

    .line 869
    const-string v1, "pmax"

    const/16 v2, 0x14

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 34363
    iput v1, v0, Lcom/mintegral/msdk/c/a;->P:I

    .line 870
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34395
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->T:Ljava/lang/String;

    .line 871
    const-string v1, "pb"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 872
    if-eqz v2, :cond_36f

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_36f

    .line 873
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 874
    :goto_358
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_36d

    .line 875
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_358

    .line 861
    :catch_368
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31d

    .line 35355
    :cond_36d
    iput-object v4, v0, Lcom/mintegral/msdk/c/a;->O:Ljava/util/List;

    .line 879
    :cond_36f
    const-string v1, "pctrl"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 880
    if-eqz v1, :cond_392

    .line 881
    const-string v2, "full"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 35371
    iput v2, v0, Lcom/mintegral/msdk/c/a;->Q:I

    .line 882
    const-string v2, "add"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 35379
    iput v2, v0, Lcom/mintegral/msdk/c/a;->R:I

    .line 883
    const-string v2, "delete"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 35387
    iput v1, v0, Lcom/mintegral/msdk/c/a;->S:I

    .line 887
    :cond_392
    const-string v1, "confirm_title"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36123
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    .line 888
    const-string v1, "confirm_description"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36131
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    .line 889
    const-string v1, "confirm_t"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36139
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 890
    const-string v1, "confirm_c_rv"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36147
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->au:Ljava/lang/String;

    .line 891
    const-string v1, "confirm_c_play"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36155
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->av:Ljava/lang/String;

    .line 893
    const-string v1, "offercacheRate"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36260
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aw:I

    .line 894
    const-string v1, "offercachepacing"

    const/16 v2, 0x5460

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36268
    iput v1, v0, Lcom/mintegral/msdk/c/a;->ax:I

    .line 895
    const-string v1, "useexpriedcacheoffer"

    const/4 v2, 0x2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36276
    iput v1, v0, Lcom/mintegral/msdk/c/a;->ay:I

    .line 896
    const-string v1, "retryoffer"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36284
    iput v1, v0, Lcom/mintegral/msdk/c/a;->az:I

    .line 897
    const-string v1, "mapping_cache_rate"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36292
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aA:I

    .line 898
    const-string v1, "tokencachetime"

    const v2, 0x93a80

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36300
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aB:I

    .line 899
    const-string v1, "protect"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 37248
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aC:I

    .line 901
    const-string v1, "adchoice_icon"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37333
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aD:Ljava/lang/String;

    .line 902
    const-string v1, "adchoice_link"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37349
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aF:Ljava/lang/String;

    .line 903
    const-string v1, "adchoice_size"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38341
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aE:Ljava/lang/String;

    .line 904
    const-string v1, "platform_logo"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38365
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aH:Ljava/lang/String;

    .line 905
    const-string v1, "platform_name"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39357
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aG:Ljava/lang/String;

    .line 906
    const-string v1, "cdnate_cfg"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/a;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 39373
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aI:Ljava/util/Map;

    .line 910
    const-string v1, "atrqt"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 40131
    iput v1, v0, Lcom/mintegral/msdk/c/a;->a:I

    .line 911
    const-string v1, "iupdid"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 40485
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aJ:I

    .line 913
    const-string v1, "omsdkjs_url"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40495
    iput-object v1, v0, Lcom/mintegral/msdk/c/a;->aK:Ljava/lang/String;

    .line 916
    const-string v1, "activeAppStatus"

    const/4 v2, 0x2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 40522
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aL:I

    .line 917
    const-string v1, "activeAppTime"

    const/16 v2, 0x1c20

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 40530
    iput v1, v0, Lcom/mintegral/msdk/c/a;->aM:I

    .line 919
    const-string v1, "activeAppConfig"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29a

    .line 922
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    .line 925
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_29a

    .line 928
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 929
    :goto_49e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4d9

    .line 930
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 931
    if-eqz v3, :cond_4d6

    .line 932
    new-instance v5, Lcom/mintegral/msdk/base/entity/a;

    invoke-direct {v5}, Lcom/mintegral/msdk/base/entity/a;-><init>()V

    .line 933
    const-string v6, "pn"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/base/entity/a;->a(Ljava/lang/String;)V

    .line 934
    const-string v6, "at"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/base/entity/a;->b(Ljava/lang/String;)V

    .line 935
    const-string v6, "ai"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/base/entity/a;->c(Ljava/lang/String;)V

    .line 936
    const-string v6, "ac"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/mintegral/msdk/base/entity/a;->d(Ljava/lang/String;)V

    .line 938
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_4d6
    add-int/lit8 v1, v1, 0x1

    goto :goto_49e

    .line 40538
    :cond_4d9
    iput-object v4, v0, Lcom/mintegral/msdk/c/a;->aN:Ljava/util/List;
    :try_end_4db
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_4db} :catch_296

    goto/16 :goto_29a

    .line 947
    :catch_4dd
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_297

    :cond_4e3
    move-object v0, v1

    goto/16 :goto_29a
.end method

.method private static h(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/c/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1383
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 1408
    :goto_8
    return-object v0

    .line 1386
    :cond_9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1387
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1389
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1390
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1391
    new-instance v5, Lcom/mintegral/msdk/c/a$a;

    invoke-direct {v5}, Lcom/mintegral/msdk/c/a$a;-><init>()V

    .line 1392
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1393
    if-eqz v6, :cond_31

    .line 1394
    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/c/a$a;->a(Lorg/json/JSONObject;)V

    .line 1396
    :cond_31
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_41

    goto :goto_17

    .line 1399
    :catch_35
    move-exception v0

    .line 1400
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_3d

    .line 1401
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3d
    :goto_3d
    move-object v0, v1

    .line 1408
    goto :goto_8

    :cond_3f
    move-object v0, v2

    .line 1398
    goto :goto_8

    .line 1403
    :catch_41
    move-exception v0

    .line 1404
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_3d

    .line 1405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method


# virtual methods
.method public final A()V
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->aj:I

    .line 332
    return-void
.end method

.method public final B()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Lcom/mintegral/msdk/c/a;->ai:I

    return v0
.end method

.method public final C()V
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ai:I

    .line 340
    return-void
.end method

.method public final D()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/mintegral/msdk/c/a;->N:I

    return v0
.end method

.method public final E()V
    .registers 2

    .prologue
    .line 347
    const/16 v0, 0x384

    iput v0, p0, Lcom/mintegral/msdk/c/a;->N:I

    .line 348
    return-void
.end method

.method public final F()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->O:Ljava/util/List;

    return-object v0
.end method

.method public final G()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/mintegral/msdk/c/a;->P:I

    return v0
.end method

.method public final H()V
    .registers 2

    .prologue
    .line 363
    const/16 v0, 0x14

    iput v0, p0, Lcom/mintegral/msdk/c/a;->P:I

    .line 364
    return-void
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcom/mintegral/msdk/c/a;->Q:I

    return v0
.end method

.method public final J()V
    .registers 2

    .prologue
    .line 371
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->Q:I

    .line 372
    return-void
.end method

.method public final K()I
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/mintegral/msdk/c/a;->R:I

    return v0
.end method

.method public final L()V
    .registers 2

    .prologue
    .line 379
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->R:I

    .line 380
    return-void
.end method

.method public final M()I
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/mintegral/msdk/c/a;->S:I

    return v0
.end method

.method public final N()V
    .registers 2

    .prologue
    .line 387
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->S:I

    .line 388
    return-void
.end method

.method public final O()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/mintegral/msdk/c/a;->C:I

    return v0
.end method

.method public final P()V
    .registers 2

    .prologue
    .line 403
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->C:I

    .line 404
    return-void
.end method

.method public final Q()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/mintegral/msdk/c/a;->D:I

    return v0
.end method

.method public final R()V
    .registers 2

    .prologue
    .line 411
    const v0, 0x15180

    iput v0, p0, Lcom/mintegral/msdk/c/a;->D:I

    .line 412
    return-void
.end method

.method public final S()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->I:Ljava/util/List;

    return-object v0
.end method

.method public final T()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Lcom/mintegral/msdk/c/a;->E:I

    return v0
.end method

.method public final U()V
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->E:I

    .line 428
    return-void
.end method

.method public final V()Ljava/lang/String;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final W()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lcom/mintegral/msdk/c/a;->z:I

    return v0
.end method

.method public final X()V
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->z:I

    .line 444
    return-void
.end method

.method public final Y()J
    .registers 3

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->A:J

    return-wide v0
.end method

.method public final Z()V
    .registers 3

    .prologue
    .line 451
    const-wide/32 v0, 0x93a80

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->A:J

    .line 452
    return-void
.end method

.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->J:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mintegral/msdk/c/a;->aa:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public final aA()Z
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/mintegral/msdk/c/a;->o:Z

    return v0
.end method

.method public final aB()V
    .registers 2

    .prologue
    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/c/a;->o:Z

    .line 604
    return-void
.end method

.method public final aC()J
    .registers 3

    .prologue
    .line 607
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->n:J

    return-wide v0
.end method

.method public final aD()Z
    .registers 2

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/mintegral/msdk/c/a;->k:Z

    return v0
.end method

.method public final aE()V
    .registers 2

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/c/a;->k:Z

    .line 620
    return-void
.end method

.method public final aF()J
    .registers 3

    .prologue
    .line 623
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->l:J

    return-wide v0
.end method

.method public final aG()V
    .registers 3

    .prologue
    .line 627
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->l:J

    .line 628
    return-void
.end method

.method public final aH()J
    .registers 3

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->m:J

    return-wide v0
.end method

.method public final aI()V
    .registers 3

    .prologue
    .line 635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->m:J

    .line 636
    return-void
.end method

.method public final aJ()V
    .registers 3

    .prologue
    .line 656
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->c:J

    .line 657
    return-void
.end method

.method public final aK()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/mintegral/msdk/c/a;->d:I

    return v0
.end method

.method public final aL()V
    .registers 2

    .prologue
    .line 664
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->d:I

    .line 665
    return-void
.end method

.method public final aM()J
    .registers 3

    .prologue
    .line 668
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->e:J

    return-wide v0
.end method

.method public final aN()I
    .registers 2

    .prologue
    .line 676
    iget v0, p0, Lcom/mintegral/msdk/c/a;->f:I

    return v0
.end method

.method public final aO()V
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->f:I

    .line 681
    return-void
.end method

.method public final aP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final aQ()J
    .registers 3

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->j:J

    return-wide v0
.end method

.method public final aR()V
    .registers 2

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/c/a;->g:Z

    .line 974
    return-void
.end method

.method public final aS()V
    .registers 2

    .prologue
    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/c/a;->i:Z

    .line 1032
    return-void
.end method

.method public final aT()I
    .registers 2

    .prologue
    .line 1035
    iget v0, p0, Lcom/mintegral/msdk/c/a;->p:I

    return v0
.end method

.method public final aU()I
    .registers 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/mintegral/msdk/c/a;->q:I

    return v0
.end method

.method public final aW()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public final aX()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    return-object v0
.end method

.method public final aY()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    return-object v0
.end method

.method public final aZ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->au:Ljava/lang/String;

    return-object v0
.end method

.method public final aa()J
    .registers 3

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->B:J

    return-wide v0
.end method

.method public final ab()V
    .registers 3

    .prologue
    .line 459
    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->B:J

    .line 460
    return-void
.end method

.method public final ac()J
    .registers 5

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->y:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final ad()I
    .registers 2

    .prologue
    .line 487
    iget v0, p0, Lcom/mintegral/msdk/c/a;->w:I

    return v0
.end method

.method public final ae()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Lcom/mintegral/msdk/c/a;->t:I

    return v0
.end method

.method public final af()V
    .registers 2

    .prologue
    .line 499
    const/16 v0, 0x64

    iput v0, p0, Lcom/mintegral/msdk/c/a;->t:I

    .line 500
    return-void
.end method

.method public final ag()I
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/mintegral/msdk/c/a;->u:I

    return v0
.end method

.method public final ah()V
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->u:I

    .line 508
    return-void
.end method

.method public final ai()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/mintegral/msdk/c/a;->v:I

    return v0
.end method

.method public final aj()V
    .registers 2

    .prologue
    .line 515
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->v:I

    .line 516
    return-void
.end method

.method public final ak()J
    .registers 3

    .prologue
    .line 519
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->s:J

    return-wide v0
.end method

.method public final al()V
    .registers 3

    .prologue
    .line 523
    const-wide/16 v0, 0x1c20

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->s:J

    .line 524
    return-void
.end method

.method public final am()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Lcom/mintegral/msdk/c/a;->ap:I

    return v0
.end method

.method public final an()V
    .registers 2

    .prologue
    .line 545
    const/4 v0, 0x3

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ap:I

    .line 546
    return-void
.end method

.method public final ao()I
    .registers 2

    .prologue
    .line 551
    iget v0, p0, Lcom/mintegral/msdk/c/a;->aq:I

    return v0
.end method

.method public final ap()V
    .registers 2

    .prologue
    .line 555
    const v0, 0x3f480

    iput v0, p0, Lcom/mintegral/msdk/c/a;->aq:I

    .line 556
    return-void
.end method

.method public final aq()J
    .registers 3

    .prologue
    .line 559
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->ao:J

    return-wide v0
.end method

.method public final ar()V
    .registers 3

    .prologue
    .line 563
    const-wide/16 v0, 0x708

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->ao:J

    .line 564
    return-void
.end method

.method public final as()I
    .registers 2

    .prologue
    .line 567
    iget v0, p0, Lcom/mintegral/msdk/c/a;->am:I

    return v0
.end method

.method public final at()V
    .registers 2

    .prologue
    .line 571
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->am:I

    .line 572
    return-void
.end method

.method public final au()I
    .registers 2

    .prologue
    .line 575
    iget v0, p0, Lcom/mintegral/msdk/c/a;->an:I

    return v0
.end method

.method public final av()V
    .registers 2

    .prologue
    .line 579
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->an:I

    .line 580
    return-void
.end method

.method public final aw()J
    .registers 5

    .prologue
    .line 583
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->ak:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final ax()V
    .registers 3

    .prologue
    .line 587
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->ak:J

    .line 588
    return-void
.end method

.method public final ay()J
    .registers 5

    .prologue
    .line 591
    iget-wide v0, p0, Lcom/mintegral/msdk/c/a;->al:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final az()V
    .registers 3

    .prologue
    .line 595
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/mintegral/msdk/c/a;->al:J

    .line 596
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/mintegral/msdk/c/a;->a:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mintegral/msdk/c/a;->G:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public final ba()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->av:Ljava/lang/String;

    return-object v0
.end method

.method public final bb()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 43189
    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 43190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->au:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    move v2, v0

    .line 1160
    :goto_2b
    if-nez v2, :cond_4b

    .line 1161
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1162
    const-string v2, "\u786e\u8ba4\u5173\u95ed\uff1f"

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    .line 1163
    const-string v2, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    .line 1164
    const-string v2, "\u786e\u8ba4\u5173\u95ed"

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 1165
    const-string v2, "\u7ee7\u7eed\u89c2\u770b"

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->au:Ljava/lang/String;

    .line 43194
    :cond_4b
    :goto_4b
    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 43195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/mintegral/msdk/c/a;->av:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 1173
    :goto_6b
    if-nez v0, :cond_8b

    .line 1174
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "zh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1175
    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    .line 1176
    const-string v0, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    .line 1177
    const-string v0, "\u786e\u8ba4\u5173\u95ed"

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 1178
    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->av:Ljava/lang/String;

    .line 1186
    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    move v2, v1

    .line 43190
    goto :goto_2b

    .line 1167
    :cond_8e
    const-string v2, "Confirm to close? "

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    .line 1168
    const-string v2, "You will not be rewarded after closing the window"

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    .line 1169
    const-string v2, "Close it"

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 1170
    const-string v2, "Continue"

    iput-object v2, p0, Lcom/mintegral/msdk/c/a;->au:Ljava/lang/String;

    goto :goto_4b

    :cond_9f
    move v0, v1

    .line 43195
    goto :goto_6b

    .line 1180
    :cond_a1
    const-string v0, "Confirm to close? "

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->ar:Ljava/lang/String;

    .line 1181
    const-string v0, "You will not be rewarded after closing the window"

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->as:Ljava/lang/String;

    .line 1182
    const-string v0, "Close it"

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->at:Ljava/lang/String;

    .line 1183
    const-string v0, "Continue"

    iput-object v0, p0, Lcom/mintegral/msdk/c/a;->av:Ljava/lang/String;

    goto :goto_8b
.end method

.method public final bc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aD:Ljava/lang/String;

    return-object v0
.end method

.method public final bd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public final be()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aF:Ljava/lang/String;

    return-object v0
.end method

.method public final bf()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/c/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aI:Ljava/util/Map;

    return-object v0
.end method

.method public final bg()I
    .registers 2

    .prologue
    .line 1481
    iget v0, p0, Lcom/mintegral/msdk/c/a;->aJ:I

    return v0
.end method

.method public final bh()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aK:Ljava/lang/String;

    return-object v0
.end method

.method public final bi()I
    .registers 2

    .prologue
    .line 1518
    iget v0, p0, Lcom/mintegral/msdk/c/a;->aL:I

    return v0
.end method

.method public final bj()I
    .registers 2

    .prologue
    .line 1526
    iget v0, p0, Lcom/mintegral/msdk/c/a;->aM:I

    return v0
.end method

.method public final bk()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aN:Ljava/util/List;

    return-object v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/c/a;->a:I

    .line 132
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mintegral/msdk/c/a;->T:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->af:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mintegral/msdk/c/a;->F:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 648
    iput-object p1, p0, Lcom/mintegral/msdk/c/a;->b:Ljava/lang/String;

    .line 649
    return-void
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Lcom/mintegral/msdk/c/a;->ae:I

    return v0
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 230
    const v0, 0x15180

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ae:I

    .line 231
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/mintegral/msdk/c/a;->aK:Ljava/lang/String;

    .line 1496
    return-void
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/mintegral/msdk/c/a;->ac:I

    return v0
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ac:I

    .line 239
    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/mintegral/msdk/c/a;->V:I

    return v0
.end method

.method public final l()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->V:I

    .line 256
    return-void
.end method

.method public final m()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/mintegral/msdk/c/a;->W:I

    return v0
.end method

.method public final n()V
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->W:I

    .line 264
    return-void
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/mintegral/msdk/c/a;->X:I

    return v0
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->X:I

    .line 272
    return-void
.end method

.method public final q()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/mintegral/msdk/c/a;->Y:I

    return v0
.end method

.method public final r()V
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/c/a;->Y:I

    .line 280
    return-void
.end method

.method public final s()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/mintegral/msdk/c/a;->Z:I

    return v0
.end method

.method public final t()V
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->Z:I

    .line 288
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " upal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mintegral/msdk/c/a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cfc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/c/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mintegral/msdk/c/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uplc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/c/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mintegral/msdk/c/a;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public final v()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Lcom/mintegral/msdk/c/a;->ab:I

    return v0
.end method

.method public final w()V
    .registers 2

    .prologue
    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->ab:I

    .line 304
    return-void
.end method

.method public final x()I
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lcom/mintegral/msdk/c/a;->H:I

    return v0
.end method

.method public final y()V
    .registers 2

    .prologue
    .line 311
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/a;->H:I

    .line 312
    return-void
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mintegral/msdk/c/a;->G:Ljava/lang/String;

    return-object v0
.end method
