.class public Lcom/bytedance/sdk/openadsdk/core/h/h;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h/c;


# instance fields
.field private A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:J

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:I

.field private M:I

.field private N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field private P:I

.field private a:I

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lorg/json/JSONObject;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    .line 192
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->d:Ljava/util/Map;

    .line 197
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->f:Ljava/util/Set;

    .line 199
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->h:Ljava/util/Set;

    .line 200
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->i:Ljava/util/List;

    .line 224
    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    .line 225
    const/16 v2, 0x1e

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    .line 226
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    .line 227
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    .line 228
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->o:Lorg/json/JSONObject;

    .line 229
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    .line 233
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    .line 234
    const/4 v3, 0x5

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    .line 239
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    .line 240
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    .line 241
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    .line 242
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    .line 243
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->C:I

    .line 244
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    .line 246
    const-wide/16 v4, 0x2710

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    .line 247
    const/16 v1, 0x32

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    .line 248
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    .line 249
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    .line 250
    const/16 v1, 0xe10

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->I:I

    .line 251
    const-string v1, "pangolin.snssdk.com"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    .line 252
    const-string v1, "extlog.snssdk.com/service/2/app_log/"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    .line 253
    const/16 v1, 0x64

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    .line 254
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    .line 255
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    .line 260
    const-string v1, "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/package.json"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    .line 265
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    .line 272
    return-void
.end method

.method private J()Lcom/bytedance/sdk/openadsdk/utils/ae;
    .registers 3

    .line 951
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)I
    .registers 2

    .line 1316
    if-eqz p1, :cond_5

    .line 1317
    const/16 p1, 0x14

    return p1

    .line 1319
    :cond_5
    const/4 p1, 0x5

    return p1
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1483
    if-nez p0, :cond_8

    .line 1484
    :try_start_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1486
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1487
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1488
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1489
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_28

    .line 1491
    :cond_26
    goto :goto_11

    .line 1492
    :cond_27
    return-object v0

    .line 1493
    :catchall_28
    move-exception p0

    .line 1494
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 27

    .line 833
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v3

    const-string v4, "fetch_tpl_timeout_ctrl"

    const-string v5, "max_tpl_cnts"

    const-string v6, "app_list_control"

    const-string v7, "support_tnc"

    const-string v8, "if_both_open"

    const-string v9, "splash_check_type"

    const-string v10, "splash_load_type"

    const-string v11, "playableLoadH5Url"

    const-string v12, "pyload_h5"

    const-string v13, "web_info_page_count"

    const-string v14, "web_info_wifi_enable"

    const-string v15, "fetch_template"

    const-string v1, "pos_cache_time"

    const-string v2, "download_config_storage_internal"

    move-object/from16 v16, v4

    const-string v4, "download_config_dl_size"

    move-object/from16 v17, v5

    const-string v5, "download_config_dl_network"

    move-object/from16 v18, v6

    const-string v6, "max"

    move-object/from16 v19, v11

    const-string v11, "duration"

    move-object/from16 v20, v12

    const-string v12, "xpath"

    move-object/from16 v21, v7

    const-string v7, "url_alog"

    move-object/from16 v22, v8

    const-string v8, "url_ads"

    if-eqz v3, :cond_1bd

    .line 835
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    move-object/from16 v23, v9

    const-string v9, "tt_sdk_settings"

    invoke-static {v9, v8, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    invoke-static {v9, v7, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->j:Ljava/lang/String;

    invoke-static {v9, v12, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9, v11, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v6, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v5, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v15, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v14, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v13, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-static {v9, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->u:Ljava/lang/String;

    move-object/from16 v2, v20

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->v:Ljava/lang/String;

    move-object/from16 v2, v19

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    const-string v2, "gecko_hosts"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 858
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "hit_app_list_time"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    const-string v2, "hit_app_list_data"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 860
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    const-string v2, "scheme_list_data"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 861
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "circle_splash_switch"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "circle_load_splash_time"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sp_key_if_sp_cache"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    const-string v2, "dyn_draw_engine_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    const-string v2, "download_sdk_config"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enable_download_opt"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 870
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_175

    .line 871
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    const-string v2, "ab_test_version"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_175
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_184

    .line 874
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    const-string v2, "ab_test_param"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_184
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_191

    .line 877
    const-string v1, "push_config"

    move-object/from16 v2, p2

    invoke-static {v9, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_191
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 880
    const-string v1, "ad_slot_conf"

    move-object/from16 v2, p1

    invoke-static {v9, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_19e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ad

    .line 883
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->g:Ljava/lang/String;

    const-string v2, "template_ids"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_1ad
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1bc

    .line 886
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->e:Ljava/lang/String;

    const-string v2, "tpl_infos"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_1bc
    return-void

    .line 891
    :cond_1bd
    move-object v3, v1

    move-object/from16 v23, v9

    move-object/from16 v1, v19

    move-object/from16 v9, v20

    move-object/from16 v19, v10

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->J()Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v10

    .line 892
    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    invoke-virtual {v10, v8, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    invoke-virtual {v10, v7, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->j:Ljava/lang/String;

    invoke-virtual {v10, v12, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    invoke-virtual {v10, v11, v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;J)V

    .line 896
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    invoke-virtual {v10, v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 897
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    invoke-virtual {v10, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 898
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    invoke-virtual {v10, v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 899
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 900
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    invoke-virtual {v10, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 901
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->I:I

    invoke-virtual {v10, v15, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 902
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    invoke-virtual {v10, v14, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 903
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    invoke-virtual {v10, v13, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 904
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->u:Ljava/lang/String;

    invoke-virtual {v10, v9, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->v:Ljava/lang/String;

    move-object/from16 v2, v20

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    move-object/from16 v2, v19

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 907
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    move-object/from16 v2, v23

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 908
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->C:I

    move-object/from16 v2, v22

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 909
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    move-object/from16 v2, v21

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 910
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    move-object/from16 v2, v18

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 911
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    move-object/from16 v2, v17

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 912
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    move-object/from16 v2, v16

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 913
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    const-string v2, "gecko_hosts"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 914
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    const-string v3, "hit_app_list_time"

    invoke-virtual {v10, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;J)V

    .line 915
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    const-string v2, "hit_app_list_data"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 916
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    const-string v2, "scheme_list_data"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 918
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    const-string v2, "circle_splash_switch"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 919
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    const-string v2, "circle_load_splash_time"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 920
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    const-string v2, "dyn_draw_engine_url"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    const-string v2, "sp_key_if_sp_cache"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 923
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    const-string v2, "download_sdk_config"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    const-string v2, "enable_download_opt"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 925
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29a

    .line 926
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    const-string v2, "ab_test_version"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_29a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a9

    .line 929
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    const-string v2, "ab_test_param"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_2a9
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    const-string v2, "vbtt"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V

    .line 933
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2bd

    .line 934
    const-string v1, "push_config"

    move-object/from16 v2, p2

    invoke-virtual {v10, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_2bd
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2ca

    .line 938
    const-string v1, "ad_slot_conf"

    move-object/from16 v2, p1

    invoke-virtual {v10, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_2ca
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d9

    .line 942
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->g:Ljava/lang/String;

    const-string v2, "template_ids"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_2d9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e8

    .line 946
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->e:Ljava/lang/String;

    const-string v2, "tpl_infos"

    invoke-virtual {v10, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_2e8
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 28

    .line 483
    move-object/from16 v0, p0

    if-nez v0, :cond_6

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_6
    const-string v1, "code_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string v2, "auto_play"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 489
    const-string v4, "voice_control"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 490
    const-string v6, "rv_preload"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 491
    const-string v8, "nv_preload"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 492
    const-string v9, "read_video_from_cache"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 493
    const/16 v10, 0x64

    const-string v11, "proportion_watching"

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 494
    const-string v11, "skip_time_displayed"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 495
    const-string v13, "video_skip_result"

    invoke-virtual {v0, v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 496
    const-string v14, "reg_creative_control"

    invoke-virtual {v0, v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 497
    const/4 v15, 0x3

    const-string v12, "play_bar_show_time"

    invoke-virtual {v0, v12, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 498
    const-string v15, "rv_skip_time"

    const/4 v3, -0x1

    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 499
    const-string v7, "endcard_close_time"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 500
    move/from16 v18, v7

    const-string v7, "playable_endcard_close_time"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 501
    const/4 v3, 0x2

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 502
    const-string v3, "if_show_win"

    move/from16 v20, v7

    const/4 v7, 0x1

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 503
    const-string v7, "sp_preload"

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 504
    const/16 v3, 0x5dc

    move/from16 v22, v7

    const-string v7, "stop_time"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 505
    const-string v7, "native_playable_delay"

    move/from16 v23, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 506
    const-string v7, "time_out_control"

    move/from16 v17, v3

    const/4 v3, -0x1

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 507
    const/16 v3, 0x14

    move/from16 v24, v7

    const-string v7, "playable_duration_time"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 508
    const-string v7, "playable_close_time"

    move/from16 v25, v3

    const/4 v3, -0x1

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 509
    const-string v7, "playable_reward_type"

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 510
    move/from16 v16, v7

    const-string v7, "reward_is_callback"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 511
    const/4 v7, 0x5

    move/from16 v26, v3

    const-string v3, "iv_skip_time"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 512
    const-string v7, "parent_tpl_ids"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 514
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h/h;->f(I)Z

    move-result v7

    if-nez v7, :cond_d0

    .line 515
    const/4 v5, 0x1

    .line 517
    :cond_d0
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->f(I)Z

    move-result v7

    if-nez v7, :cond_d7

    .line 518
    const/4 v4, 0x1

    .line 520
    :cond_d7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a()Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v7

    .line 521
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 522
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 523
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/h/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 524
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/h/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/h/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 526
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/h/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 527
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/h/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 528
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/h/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/h/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 530
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/core/h/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 531
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/h/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/core/h/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 533
    move/from16 v2, v18

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 534
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 535
    move/from16 v2, v20

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 536
    move/from16 v2, v21

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 537
    move/from16 v2, v22

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->f(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 538
    move/from16 v2, v23

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->g(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 539
    move/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->h(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 540
    move/from16 v2, v24

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 541
    move/from16 v2, v19

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 542
    move/from16 v2, v25

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 543
    move/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->b(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 544
    move/from16 v2, v26

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->c(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/h/a;->x(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 520
    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)I
    .registers 4

    .line 756
    const-string v0, "splash_load_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    .line 758
    packed-switch p1, :pswitch_data_e

    .line 765
    return v1

    .line 763
    :pswitch_d
    return p1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private d(Lorg/json/JSONObject;)I
    .registers 4

    .line 769
    const-string v0, "splash_check_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    .line 771
    packed-switch p1, :pswitch_data_e

    .line 776
    return v1

    .line 774
    :pswitch_d
    return p1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static f(I)Z
    .registers 3

    .line 551
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private t(Ljava/lang/String;)V
    .registers 7

    .line 461
    if-nez p1, :cond_3

    return-void

    .line 463
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 466
    const/4 v1, 0x0

    :goto_d
    if-ge v1, p1, :cond_40

    .line 467
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/h/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;-><init>()V

    .line 468
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 469
    const-string v4, "action"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->a:Ljava/lang/String;

    .line 470
    const-string v4, "service"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->b:Ljava/lang/String;

    .line 471
    const-string v4, "package"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    .line 472
    const-string v4, "wakeup_interval"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->d:I

    .line 473
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 476
    :cond_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Lcom/bytedance/sdk/openadsdk/core/h/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/d;->b()V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_48

    .line 479
    goto :goto_4c

    .line 477
    :catchall_48
    move-exception p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 480
    :goto_4c
    return-void
.end method

.method private u(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 6

    .line 1444
    nop

    .line 1445
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 1446
    move v0, v1

    goto :goto_e

    .line 1445
    :cond_d
    move v0, v2

    .line 1449
    :goto_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a()Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 1450
    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1451
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1452
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1453
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1454
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1455
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/16 v3, 0x64

    .line 1456
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/h/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1457
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1458
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v1, 0x3

    .line 1459
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1460
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1461
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1462
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1463
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1464
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1465
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1466
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/16 v0, 0x14

    .line 1467
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v0, 0x5

    .line 1468
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->x(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 1469
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1449
    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1354
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    .line 1355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 1356
    const/4 v0, 0x0

    return-object v0

    .line 1359
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1361
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    goto :goto_1b

    .line 1363
    :cond_2b
    return-object v0
.end method

.method public B()I
    .registers 2

    .line 1367
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    return v0
.end method

.method public C()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1375
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    .line 1376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 1377
    const/4 v0, 0x0

    return-object v0

    .line 1380
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1382
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    goto :goto_1b

    .line 1384
    :cond_2b
    return-object v0
.end method

.method public D()Z
    .registers 3

    .line 1395
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public E()I
    .registers 2

    .line 1399
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    return v0
.end method

.method public F()I
    .registers 2

    .line 1403
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    if-gtz v0, :cond_8

    .line 1404
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    .line 1406
    :cond_8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    return v0
.end method

.method public G()[Ljava/lang/String;
    .registers 4

    .line 1411
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_18

    .line 1414
    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    return-object v1

    .line 1412
    :cond_18
    :goto_18
    return-object v0

    .line 1415
    :catchall_19
    move-exception v1

    .line 1416
    return-object v0
.end method

.method public H()I
    .registers 2

    .line 1435
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    return v0
.end method

.method public I()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/h/e;",
            ">;"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->i:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)I
    .registers 5

    .line 1287
    if-nez p1, :cond_7

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Z)I

    move-result p1

    return p1

    .line 1288
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1289
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    goto :goto_1f

    :cond_1b
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Z)I

    move-result p1

    :goto_1f
    return p1
.end method

.method public declared-synchronized a()V
    .registers 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 276
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/16 v5, 0xbb8

    const/16 v6, 0x64

    const/16 v7, 0xe10

    const/16 v8, 0x32

    const-wide/16 v9, 0x2710

    const/4 v11, 0x5

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_238

    .line 278
    const-string v0, "tt_sdk_settings"

    const-string v2, "url_ads"

    const-string v3, "pangolin.snssdk.com"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    .line 279
    const-string v0, "tt_sdk_settings"

    const-string v2, "url_alog"

    const-string v3, "extlog.snssdk.com/service/2/app_log/"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    .line 280
    const-string v0, "tt_sdk_settings"

    const-string v2, "xpath"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->j:Ljava/lang/String;

    .line 281
    const-string v0, "tt_sdk_settings"

    const-string v2, "duration"

    invoke-static {v0, v2, v9, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    .line 282
    const-string v0, "tt_sdk_settings"

    const-string v2, "max"

    invoke-static {v0, v2, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    .line 283
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_dl_network"

    invoke-static {v0, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    .line 284
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_dl_size"

    invoke-static {v0, v2, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    .line 285
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_storage_internal"

    invoke-static {v0, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    .line 286
    const-string v0, "tt_sdk_settings"

    const-string v2, "pos_cache_time"

    invoke-static {v0, v2, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    .line 287
    const-string v0, "tt_sdk_settings"

    const-string v2, "vbtt"

    invoke-static {v0, v2, v11}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    .line 288
    const-string v0, "tt_sdk_settings"

    const-string v2, "fetch_template"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->I:I

    .line 289
    const-string v0, "tt_sdk_settings"

    const-string v2, "template_ids"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->g:Ljava/lang/String;

    .line 290
    const-string v0, "tt_sdk_settings"

    const-string v2, "ab_test_version"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    .line 291
    const-string v0, "tt_sdk_settings"

    const-string v2, "ab_test_param"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    .line 292
    const-string v0, "tt_sdk_settings"

    const-string v2, "web_info_wifi_enable"

    invoke-static {v0, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    .line 293
    const-string v0, "tt_sdk_settings"

    const-string v2, "web_info_page_count"

    invoke-static {v0, v2, v11}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    .line 294
    const-string v0, "tt_sdk_settings"

    const-string v2, "pyload_h5"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->u:Ljava/lang/String;

    .line 295
    const-string v0, "tt_sdk_settings"

    const-string v2, "playableLoadH5Url"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->v:Ljava/lang/String;

    .line 296
    const-string v0, "tt_sdk_settings"

    const-string v2, "splash_load_type"

    invoke-static {v0, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    .line 297
    const-string v0, "tt_sdk_settings"

    const-string v2, "splash_check_type"

    invoke-static {v0, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    .line 298
    const-string v0, "tt_sdk_settings"

    const-string v2, "if_both_open"

    invoke-static {v0, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->C:I

    .line 299
    const-string v0, "tt_sdk_settings"

    const-string v2, "support_tnc"

    invoke-static {v0, v2, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    .line 300
    const-string v0, "tt_sdk_settings"

    const-string v2, "tpl_infos"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->e:Ljava/lang/String;

    .line 301
    const-string v0, "tt_sdk_settings"

    const-string v2, "app_list_control"

    invoke-static {v0, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    .line 302
    const-string v0, "tt_sdk_settings"

    const-string v2, "max_tpl_cnts"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    .line 304
    const-string v0, "tt_sdk_settings"

    const-string v2, "fetch_tpl_timeout_ctrl"

    invoke-static {v0, v2, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    .line 305
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    if-eqz v0, :cond_12a

    .line 306
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 308
    :cond_12a
    const-string v0, "tt_sdk_settings"

    const-string v2, "gecko_hosts"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    .line 309
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    .line 310
    const-string v0, "tt_sdk_settings"

    const-string v2, "hit_app_list_time"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    .line 311
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 313
    const-string v0, "tt_sdk_settings"

    const-string v2, "circle_splash_switch"

    invoke-static {v0, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    .line 314
    const-string v0, "tt_sdk_settings"

    const-string v2, "circle_load_splash_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    .line 316
    const-string v0, "tt_sdk_settings"

    const-string v2, "sp_key_if_sp_cache"

    invoke-static {v0, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    .line 319
    const-string v0, "tt_sdk_settings"

    const-string v2, "dyn_draw_engine_url"

    const-string v3, "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/package.json"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    .line 320
    const-string v0, "tt_sdk_settings"

    const-string v2, "hit_app_list_data"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_19c

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19c

    .line 322
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    goto :goto_18a

    .line 326
    :cond_19c
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 327
    const-string v0, "tt_sdk_settings"

    const-string v2, "scheme_list_data"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1c7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 329
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    goto :goto_1b5

    .line 333
    :cond_1c7
    const-string v0, "tt_sdk_settings"

    const-string v2, "push_config"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->t(Ljava/lang/String;)V

    .line 337
    const-string v0, "tt_sdk_settings"

    const-string v2, "ad_slot_conf"

    invoke-static {v0, v2, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1de
    .catchall {:try_start_3 .. :try_end_1de} :catchall_40f

    if-nez v2, :cond_209

    .line 340
    :try_start_1e0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 342
    if-lez v0, :cond_207

    .line 343
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 344
    move v3, v13

    :goto_1f1
    if-ge v3, v0, :cond_207

    .line 345
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 346
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v4

    .line 347
    if-eqz v4, :cond_204

    .line 348
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_204} :catch_208
    .catchall {:try_start_1e0 .. :try_end_204} :catchall_40f

    .line 344
    :cond_204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f1

    .line 353
    :cond_207
    goto :goto_209

    .line 352
    :catch_208
    move-exception v0

    .line 356
    :cond_209
    :goto_209
    :try_start_209
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_sdk_config"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    .line 357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_219
    .catchall {:try_start_209 .. :try_end_219} :catchall_40f

    if-nez v0, :cond_229

    .line 359
    :try_start_21b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->o:Lorg/json/JSONObject;
    :try_end_224
    .catch Lorg/json/JSONException; {:try_start_21b .. :try_end_224} :catch_225
    .catchall {:try_start_21b .. :try_end_224} :catchall_40f

    .line 362
    goto :goto_229

    .line 360
    :catch_225
    move-exception v0

    .line 361
    :try_start_226
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 364
    :cond_229
    :goto_229
    const-string v0, "tt_sdk_settings"

    const-string v2, "enable_download_opt"

    invoke-static {v0, v2, v13}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    .line 365
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c()V
    :try_end_236
    .catchall {:try_start_226 .. :try_end_236} :catchall_40f

    .line 366
    monitor-exit p0

    return-void

    .line 369
    :cond_238
    :try_start_238
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->J()Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v2

    .line 370
    const-string v0, "url_ads"

    const-string v3, "pangolin.snssdk.com"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    .line 371
    const-string v0, "url_alog"

    const-string v3, "extlog.snssdk.com/service/2/app_log/"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    .line 372
    const-string v0, "xpath"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->j:Ljava/lang/String;

    .line 373
    const-string v0, "duration"

    invoke-virtual {v2, v0, v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    .line 374
    const-string v0, "max"

    invoke-virtual {v2, v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    .line 375
    const-string v0, "download_config_dl_network"

    invoke-virtual {v2, v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    .line 376
    const-string v0, "download_config_dl_size"

    invoke-virtual {v2, v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    .line 377
    const-string v0, "download_config_storage_internal"

    invoke-virtual {v2, v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    .line 378
    const-string v0, "pos_cache_time"

    invoke-virtual {v2, v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    .line 379
    const-string v0, "fetch_template"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->I:I

    .line 380
    const-string v0, "ab_test_version"

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    .line 381
    const-string v0, "ab_test_param"

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    .line 383
    const-string v0, "vbtt"

    invoke-virtual {v2, v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    .line 384
    const-string v0, "template_ids"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->g:Ljava/lang/String;

    .line 385
    const-string v0, "web_info_wifi_enable"

    invoke-virtual {v2, v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    .line 386
    const-string v0, "web_info_page_count"

    invoke-virtual {v2, v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    .line 387
    const-string v0, "pyload_h5"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->u:Ljava/lang/String;

    .line 388
    const-string v0, "playableLoadH5Url"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->v:Ljava/lang/String;

    .line 389
    const-string v0, "splash_load_type"

    invoke-virtual {v2, v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    .line 390
    const-string v0, "splash_check_type"

    invoke-virtual {v2, v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    .line 391
    const-string v0, "if_both_open"

    invoke-virtual {v2, v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->C:I

    .line 392
    const-string v0, "support_tnc"

    invoke-virtual {v2, v0, v14}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    .line 393
    const-string v0, "tpl_infos"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->e:Ljava/lang/String;

    .line 394
    const-string v0, "app_list_control"

    invoke-virtual {v2, v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    .line 395
    const-string v0, "max_tpl_cnts"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    .line 397
    const-string v0, "fetch_tpl_timeout_ctrl"

    invoke-virtual {v2, v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    .line 398
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    if-eqz v0, :cond_319

    .line 399
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 401
    :cond_319
    const-string v0, "gecko_hosts"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    .line 402
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    .line 403
    const-string v0, "hit_app_list_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    .line 404
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 406
    const-string v0, "circle_splash_switch"

    invoke-virtual {v2, v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    .line 407
    const-string v0, "circle_load_splash_time"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    .line 408
    const-string v0, "dyn_draw_engine_url"

    const-string v3, "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/package.json"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    .line 409
    const-string v0, "sp_key_if_sp_cache"

    invoke-virtual {v2, v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    .line 412
    const-string v0, "hit_app_list_data"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_37d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37d

    .line 414
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    goto :goto_36b

    .line 418
    :cond_37d
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 419
    const-string v0, "scheme_list_data"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_3a6

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a6

    .line 421
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_394
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    goto :goto_394

    .line 425
    :cond_3a6
    const-string v0, "push_config"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->t(Ljava/lang/String;)V

    .line 429
    const-string v0, "ad_slot_conf"

    invoke-virtual {v2, v0, v15}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3b9
    .catchall {:try_start_238 .. :try_end_3b9} :catchall_40f

    if-nez v3, :cond_3e4

    .line 432
    :try_start_3bb
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 434
    if-lez v0, :cond_3e2

    .line 435
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 436
    move v4, v13

    :goto_3cc
    if-ge v4, v0, :cond_3e2

    .line 437
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 438
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v5

    .line 439
    if-eqz v5, :cond_3df

    .line 440
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    iget-object v7, v5, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3df} :catch_3e3
    .catchall {:try_start_3bb .. :try_end_3df} :catchall_40f

    .line 436
    :cond_3df
    add-int/lit8 v4, v4, 0x1

    goto :goto_3cc

    .line 445
    :cond_3e2
    goto :goto_3e4

    .line 444
    :catch_3e3
    move-exception v0

    .line 448
    :cond_3e4
    :goto_3e4
    :try_start_3e4
    const-string v0, "download_sdk_config"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3f2
    .catchall {:try_start_3e4 .. :try_end_3f2} :catchall_40f

    if-nez v0, :cond_402

    .line 451
    :try_start_3f4
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->o:Lorg/json/JSONObject;
    :try_end_3fd
    .catch Lorg/json/JSONException; {:try_start_3f4 .. :try_end_3fd} :catch_3fe
    .catchall {:try_start_3f4 .. :try_end_3fd} :catchall_40f

    .line 454
    goto :goto_402

    .line 452
    :catch_3fe
    move-exception v0

    .line 453
    :try_start_3ff
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 456
    :cond_402
    :goto_402
    const-string v0, "enable_download_opt"

    invoke-virtual {v2, v0, v13}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    .line 457
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c()V
    :try_end_40d
    .catchall {:try_start_3ff .. :try_end_40d} :catchall_40f

    .line 458
    monitor-exit p0

    return-void

    .line 275
    :catchall_40f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 11

    .line 556
    const-string v0, "app_common_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 557
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 558
    const-string v3, "circle_splash"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    .line 559
    const/4 v3, -0x1

    const-string v4, "circle_time"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    .line 560
    const-string v3, "if_sp_cache"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->P:I

    .line 562
    :cond_22
    const-string v1, "dyn_draw_engine_url"

    const-string v3, "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/package.json"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    .line 563
    const-string v1, "ads_url"

    const-string v3, "pangolin.snssdk.com"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    .line 564
    const-string v1, "app_log_url"

    const-string v3, "extlog.snssdk.com/service/2/app_log/"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    .line 566
    const-string v1, "xpath"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->j:Ljava/lang/String;

    .line 567
    const-string v1, "pos_cache_time"

    const/16 v3, 0x1e

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    .line 568
    const-string v1, "feq_policy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_6d

    .line 570
    const-string v4, "duration"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    .line 571
    const-string v4, "max"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    .line 574
    :cond_6d
    const-string v1, "vbtt"

    const/4 v4, 0x5

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->H:I

    .line 575
    const/16 v1, 0xe10

    const-string v5, "fetch_tpl_interval"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->I:I

    .line 578
    const-string v1, "abtest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_99

    .line 582
    const-string v5, "version"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    .line 583
    const-string v5, "param"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    goto :goto_b6

    .line 586
    :cond_99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const-string v5, "ab_test_param"

    const-string v6, "ab_test_version"

    if-eqz v1, :cond_ac

    .line 587
    const-string v1, "tt_sdk_settings"

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    .line 590
    :cond_ac
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->J()Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v1

    .line 591
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;)V

    .line 597
    :goto_b6
    const-string v1, "web_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 598
    const/4 v5, 0x1

    if-eqz v1, :cond_cf

    .line 599
    const-string v6, "web_info_wifi_enable"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    .line 600
    const-string v6, "web_info_page_count"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    .line 603
    :cond_cf
    const-string v1, "pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->u:Ljava/lang/String;

    .line 604
    const-string v1, "pure_pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->v:Ljava/lang/String;

    .line 607
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting-\u300bmSplashLoadType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "splashLoad"

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->d(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting-\u300bmSplashCheckType="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v1, "if_both_open"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->C:I

    .line 613
    const-string v1, "support_tnc"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    .line 615
    const-string v1, "al"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->y:I

    .line 616
    const/16 v1, 0x64

    const-string v4, "max_tpl_cnts"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->L:I

    .line 618
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_195

    .line 620
    const/16 v1, 0xbb8

    const-string v4, "fetch_tpl_timeout_ctrl"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->M:I

    .line 624
    :try_start_14f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 625
    const-string v1, "gecko_hosts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_175

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_175

    .line 627
    move v1, v2

    :goto_163
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_175

    .line 628
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_163

    .line 631
    :cond_175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->N:Ljava/util/Set;
    :try_end_17d
    .catchall {:try_start_14f .. :try_end_17d} :catchall_17e

    .line 634
    goto :goto_195

    .line 632
    :catchall_17e
    move-exception v0

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeckoLog: settings json error "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 637
    :cond_195
    :goto_195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->z:J

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 639
    const-string v0, "spam_app_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_1c1

    .line 641
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 642
    move v4, v2

    :goto_1ad
    if-ge v4, v1, :cond_1c1

    .line 643
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 644
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1be

    .line 645
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->A:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1be
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ad

    .line 650
    :cond_1c1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 651
    const-string v0, "scheme_check_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_1e7

    .line 653
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 654
    move v4, v2

    :goto_1d3
    if-ge v4, v1, :cond_1e7

    .line 655
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 656
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1e4

    .line 657
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->B:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_1e4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d3

    .line 662
    :cond_1e7
    const-string v0, "download_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_20f

    .line 664
    const-string v1, "dl_network"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    .line 665
    const-string v1, "dl_size"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    .line 666
    const-string v1, "if_storage_internal"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    .line 667
    const-string v1, "enable_download_opt"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    .line 669
    :cond_20f
    const-string v0, "download_sdk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->o:Lorg/json/JSONObject;

    .line 670
    if-eqz v0, :cond_220

    .line 671
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    goto :goto_224

    .line 673
    :cond_220
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->p:Ljava/lang/String;

    .line 683
    :goto_224
    nop

    .line 687
    const/4 v0, 0x0

    :try_start_226
    const-string v1, "push_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 688
    if-eqz v1, :cond_26c

    .line 689
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_232
    .catchall {:try_start_226 .. :try_end_232} :catchall_277

    .line 691
    :try_start_232
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 692
    move v5, v2

    :goto_237
    if-ge v5, v4, :cond_26d

    .line 693
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/h/e;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/h/e;-><init>()V

    .line 694
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 695
    if-eqz v7, :cond_269

    .line 696
    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/e;->a:Ljava/lang/String;

    .line 697
    const-string v8, "service"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/e;->b:Ljava/lang/String;

    .line 698
    const-string v8, "package"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    .line 699
    const-string v8, "wakeup_interval"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bytedance/sdk/openadsdk/core/h/e;->d:I

    .line 700
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->i:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_269
    add-int/lit8 v5, v5, 0x1

    goto :goto_237

    .line 688
    :cond_26c
    move-object v3, v0

    .line 705
    :cond_26d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Lcom/bytedance/sdk/openadsdk/core/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/d;->b()V
    :try_end_274
    .catchall {:try_start_232 .. :try_end_274} :catchall_275

    .line 708
    goto :goto_27c

    .line 706
    :catchall_275
    move-exception v1

    goto :goto_279

    :catchall_277
    move-exception v1

    move-object v3, v0

    .line 707
    :goto_279
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 712
    :goto_27c
    nop

    .line 713
    const-string v1, "ad_slot_conf_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 714
    if-eqz p1, :cond_2ab

    .line 715
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 717
    if-lez v1, :cond_2ab

    .line 718
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 719
    nop

    :goto_295
    if-ge v2, v1, :cond_2ab

    .line 720
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 721
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v4

    .line 722
    if-eqz v4, :cond_2a8

    .line 723
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_2a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_295

    .line 751
    :cond_2ab
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c()V

    .line 752
    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public a(I)Z
    .registers 3

    .line 1117
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1118
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 1128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1130
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    .line 1141
    return v0

    .line 1139
    :pswitch_13
    return v0

    .line 1135
    :pswitch_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 1132
    :pswitch_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 962
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "pangolin.snssdk.com"

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->J:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public b(I)Z
    .registers 4

    .line 1338
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1339
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1340
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    move v0, v1

    :cond_16
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .line 1157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1158
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public c(I)I
    .registers 2

    .line 1421
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1422
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .registers 2

    .line 1168
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1169
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "extlog.snssdk.com/service/2/app_log/"

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->K:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public d(I)I
    .registers 2

    .line 1426
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1427
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    return p1
.end method

.method public d()Z
    .registers 3

    .line 986
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public d(Ljava/lang/String;)Z
    .registers 4

    .line 1173
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1174
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1175
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    if-ne p1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public e()I
    .registers 2

    .line 990
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->k:I

    return v0
.end method

.method public e(I)I
    .registers 2

    .line 1431
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1432
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:I

    return p1
.end method

.method public e(Ljava/lang/String;)Z
    .registers 4

    .line 1187
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1188
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1189
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public f()I
    .registers 2

    .line 995
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->l:I

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public f(Ljava/lang/String;)I
    .registers 3

    .line 1198
    if-nez p1, :cond_5

    const/16 p1, 0x5dc

    return p1

    .line 1199
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1200
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    return p1
.end method

.method public g(Ljava/lang/String;)I
    .registers 3

    .line 1210
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1211
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    return p1
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1003
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 8

    .line 1217
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1218
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_45

    .line 1221
    :cond_e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1222
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1223
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 1224
    if-eqz v2, :cond_43

    .line 1225
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1226
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1227
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_46

    .line 1230
    :cond_43
    goto :goto_17

    .line 1231
    :cond_44
    return-object v1

    .line 1219
    :cond_45
    :goto_45
    return-object v0

    .line 1232
    :catch_46
    move-exception p1

    .line 1235
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1007
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .registers 3

    .line 1240
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1241
    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->z:Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_15

    if-eqz p1, :cond_14

    .line 1242
    const/4 p1, 0x1

    return p1

    .line 1246
    :cond_14
    goto :goto_16

    .line 1244
    :catch_15
    move-exception p1

    .line 1247
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method public j(Ljava/lang/String;)I
    .registers 2

    .line 1257
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1258
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    return p1
.end method

.method public j()J
    .registers 3

    .line 1011
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->E:J

    return-wide v0
.end method

.method public k()I
    .registers 2

    .line 1015
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->F:I

    return v0
.end method

.method public k(Ljava/lang/String;)I
    .registers 2

    .line 1268
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1269
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    return p1
.end method

.method public l()I
    .registers 2

    .line 1019
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->G:I

    return v0
.end method

.method public l(Ljava/lang/String;)I
    .registers 3

    .line 1280
    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 1281
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1282
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    return p1
.end method

.method public m()I
    .registers 2

    .line 1027
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->t:I

    return v0
.end method

.method public m(Ljava/lang/String;)I
    .registers 3

    .line 1293
    if-nez p1, :cond_4

    .line 1295
    const/4 p1, 0x0

    return p1

    .line 1296
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1297
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    return p1
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1031
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Z
    .registers 2

    .line 1306
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public o(Ljava/lang/String;)I
    .registers 3

    .line 1310
    if-nez p1, :cond_5

    const/16 p1, 0x14

    return p1

    .line 1311
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1312
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    return p1
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1035
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)I
    .registers 3

    .line 1331
    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 1332
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1333
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    return p1
.end method

.method public p()Lorg/json/JSONObject;
    .registers 2

    .line 1042
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->o:Lorg/json/JSONObject;

    return-object v0
.end method

.method public q()Z
    .registers 3

    .line 1046
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public q(Ljava/lang/String;)Z
    .registers 4

    .line 1344
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1345
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1346
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    if-ne p1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public r()I
    .registers 2

    .line 1058
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->w:I

    return v0
.end method

.method public r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 3

    .line 1439
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/a;

    .line 1440
    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->u(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public s()I
    .registers 2

    .line 1062
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->x:I

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    .line 1478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1479
    return-void
.end method

.method public t()Z
    .registers 2

    .line 1077
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public u()Z
    .registers 3

    .line 1087
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public v()Z
    .registers 3

    .line 1091
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public w()Z
    .registers 3

    .line 1095
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public x()I
    .registers 2

    .line 1099
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:I

    return v0
.end method

.method public y()I
    .registers 2

    .line 1103
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    .line 1107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->O:Ljava/lang/String;

    return-object v0
.end method
