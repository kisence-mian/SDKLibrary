.class public Lcom/bytedance/sdk/openadsdk/core/h/l;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h/e;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:I

.field private K:J

.field private L:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:I

.field private P:J

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:I

.field private X:I

.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/m;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/h/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    .line 215
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    .line 223
    const v0, 0x3cfffdff

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->e:Ljava/util/Map;

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->g:Ljava/util/Set;

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->i:Ljava/util/Set;

    .line 231
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->j:Ljava/util/List;

    .line 255
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    .line 256
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    .line 257
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    .line 258
    const-string v0, "com.oppo.market"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    .line 259
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    .line 260
    const-string v0, "com.huawei.appmarket"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    .line 261
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    .line 262
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    .line 263
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    .line 264
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    .line 265
    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    .line 266
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    .line 267
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    .line 268
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    .line 269
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    .line 270
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    .line 274
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    .line 275
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    .line 280
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    .line 282
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    .line 283
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    .line 284
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    .line 285
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    .line 287
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    .line 288
    const/16 v0, 0x32

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    .line 289
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    .line 290
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    .line 291
    const/16 v0, 0xe10

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    .line 292
    const-string v0, "pangolin.snssdk.com"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    .line 293
    const-string v0, "extlog.snssdk.com/service/2/app_log/"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    .line 294
    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    .line 295
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    .line 298
    return-void
.end method

.method private U()V
    .registers 6

    .prologue
    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 797
    :try_start_8
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 799
    if-lez v3, :cond_2e

    .line 800
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 801
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, v3, :cond_2e

    .line 802
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->i:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2d

    .line 801
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 806
    :catch_2d
    move-exception v0

    .line 809
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->i:Ljava/util/Set;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/util/Set;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_34

    .line 813
    :cond_33
    :goto_33
    return-void

    .line 810
    :catch_34
    move-exception v0

    goto :goto_33
.end method

.method private V()V
    .registers 2

    .prologue
    .line 817
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->e()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 820
    :goto_3
    return-void

    .line 818
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private W()V
    .registers 7

    .prologue
    .line 823
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 825
    :try_start_8
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 827
    if-lez v2, :cond_32

    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 829
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_32

    .line 830
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 831
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v3

    .line 832
    if-eqz v3, :cond_2e

    .line 833
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->e:Ljava/util/Map;

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/h/m;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_31

    .line 829
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 837
    :catch_31
    move-exception v0

    .line 840
    :cond_32
    return-void
.end method

.method private X()Lcom/bytedance/sdk/openadsdk/utils/ad;
    .registers 3

    .prologue
    .line 982
    const-string v0, "tt_sdk_settings"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)I
    .registers 3

    .prologue
    .line 1407
    if-eqz p1, :cond_5

    .line 1408
    const/16 v0, 0x14

    .line 1410
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x5

    goto :goto_4
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/h/m;)V
    .registers 2

    .prologue
    .line 843
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/h/m;)V

    .line 844
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 847
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_256

    .line 849
    const-string v0, "tt_sdk_settings"

    const-string v1, "url_ads"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "tt_sdk_settings"

    const-string v1, "url_alog"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "tt_sdk_settings"

    const-string v1, "xpath"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v0, "tt_sdk_settings"

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 853
    const-string v0, "tt_sdk_settings"

    const-string v1, "max"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_back_dialog"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_progressbar"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_hook"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_hook_oppo_arg1"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_hook_oppo_arg4"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_hook_huawei_arg1"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_dl_network"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_dl_size"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_enable_install_again"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_install_again_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_install_again_time_next"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_storage_internal"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_resume_notify_switch"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_resume_notify_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_resume_notify_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_config_if_open_market_window"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 870
    const-string v0, "tt_sdk_settings"

    const-string v1, "pos_cache_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v0, "tt_sdk_settings"

    const-string v1, "vbtt"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v0, "tt_sdk_settings"

    const-string v1, "fetch_template"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v0, "tt_sdk_settings"

    const-string v1, "web_info_wifi_enable"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    const-string v0, "tt_sdk_settings"

    const-string v1, "web_info_page_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v0, "tt_sdk_settings"

    const-string v1, "splash_load_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v0, "tt_sdk_settings"

    const-string v1, "splash_check_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string v0, "tt_sdk_settings"

    const-string v1, "if_both_open"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v0, "tt_sdk_settings"

    const-string v1, "support_tnc"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    const-string v0, "tt_sdk_settings"

    const-string v1, "pyload_h5"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->F:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v0, "tt_sdk_settings"

    const-string v1, "playableLoadH5Url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->G:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v0, "tt_sdk_settings"

    const-string v1, "app_list_control"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    const-string v0, "tt_sdk_settings"

    const-string v1, "max_tpl_cnts"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    const-string v0, "tt_sdk_settings"

    const-string v1, "fetch_tpl_timeout_ctrl"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    const-string v0, "tt_sdk_settings"

    const-string v1, "hit_app_list_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 885
    const-string v0, "tt_sdk_settings"

    const-string v1, "hit_app_list_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 886
    const-string v0, "tt_sdk_settings"

    const-string v1, "scheme_list_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 887
    const-string v0, "tt_sdk_settings"

    const-string v1, "sp_ov_skip_key"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_xiaomi_silence_install"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v0, "tt_sdk_settings"

    const-string v1, "download_exp_switch_temp"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_208

    .line 891
    const-string v0, "tt_sdk_settings"

    const-string v1, "ab_test_version"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_219

    .line 894
    const-string v0, "tt_sdk_settings"

    const-string v1, "ab_test_param"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_226

    .line 898
    const-string v0, "tt_sdk_settings"

    const-string v1, "push_config"

    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_233

    .line 901
    const-string v0, "tt_sdk_settings"

    const-string v1, "ad_slot_conf"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_244

    .line 904
    const-string v0, "tt_sdk_settings"

    const-string v1, "template_ids"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_255

    .line 907
    const-string v0, "tt_sdk_settings"

    const-string v1, "tpl_infos"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_255
    :goto_255
    return-void

    .line 912
    :cond_256
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->X()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    .line 913
    const-string v1, "url_ads"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v1, "url_alog"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v1, "xpath"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;J)V

    .line 917
    const-string v1, "max"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 918
    const-string v1, "download_config_back_dialog"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 919
    const-string v1, "download_config_progressbar"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 920
    const-string v1, "download_config_hook"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 921
    const-string v1, "download_config_hook_oppo_arg1"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v1, "download_config_hook_oppo_arg4"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 923
    const-string v1, "download_config_hook_huawei_arg1"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v1, "download_config_dl_network"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 925
    const-string v1, "download_config_dl_size"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 926
    const-string v1, "download_config_enable_install_again"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 927
    const-string v1, "download_config_install_again_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 928
    const-string v1, "download_config_install_again_time_next"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 929
    const-string v1, "download_config_storage_internal"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 930
    const-string v1, "download_config_resume_notify_switch"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 931
    const-string v1, "download_config_resume_notify_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 932
    const-string v1, "download_config_resume_notify_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 933
    const-string v1, "download_config_if_open_market_window"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 934
    const-string v1, "pos_cache_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 935
    const-string v1, "fetch_template"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 936
    const-string v1, "web_info_wifi_enable"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 937
    const-string v1, "web_info_page_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 938
    const-string v1, "pyload_h5"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v1, "playableLoadH5Url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v1, "splash_load_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 941
    const-string v1, "splash_check_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 942
    const-string v1, "if_both_open"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 943
    const-string v1, "support_tnc"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 944
    const-string v1, "app_list_control"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 945
    const-string v1, "max_tpl_cnts"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 946
    const-string v1, "fetch_tpl_timeout_ctrl"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 947
    const-string v1, "hit_app_list_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;J)V

    .line 948
    const-string v1, "hit_app_list_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 949
    const-string v1, "scheme_list_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 951
    const-string v1, "sp_ov_skip_key"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 952
    const-string v1, "download_xiaomi_silence_install"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 953
    const-string v1, "download_exp_switch_temp"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 955
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_381

    .line 956
    const-string v1, "ab_test_version"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_381
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_390

    .line 959
    const-string v1, "ab_test_param"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_390
    const-string v1, "vbtt"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;I)V

    .line 964
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a2

    .line 965
    const-string v1, "push_config"

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_3a2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3ad

    .line 969
    const-string v1, "ad_slot_conf"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_3ad
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3bc

    .line 973
    const-string v1, "template_ids"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_3bc
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_255

    .line 977
    const-string v1, "tpl_infos"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_255
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 30

    .prologue
    .line 504
    if-nez p0, :cond_4

    .line 505
    const/4 v3, 0x0

    .line 534
    :goto_3
    return-object v3

    .line 508
    :cond_4
    const-string v3, "code_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 509
    const-string v4, "auto_play"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 510
    const-string v5, "voice_control"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 511
    const-string v6, "rv_preload"

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 512
    const-string v7, "nv_preload"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 513
    const-string v8, "read_video_from_cache"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 514
    const-string v9, "proportion_watching"

    const/16 v10, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 515
    const-string v10, "skip_time_displayed"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 516
    const-string v11, "video_skip_result"

    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 517
    const-string v12, "reg_creative_control"

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 518
    const-string v13, "play_bar_show_time"

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 519
    const-string v14, "rv_skip_time"

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 520
    const-string v15, "endcard_close_time"

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 521
    const-string v16, "playable_endcard_close_time"

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 522
    const-string v17, "voice_control"

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 523
    const-string v18, "if_show_win"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    .line 524
    const-string v19, "sp_preload"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 525
    const-string v20, "stop_time"

    const/16 v21, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 526
    const-string v21, "native_playable_delay"

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    .line 527
    const-string v22, "time_out_control"

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    .line 528
    const-string v23, "playable_duration_time"

    const/16 v24, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    .line 529
    const-string v24, "playable_close_time"

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    .line 530
    const-string v25, "playable_reward_type"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 531
    const-string v26, "reward_is_callback"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    .line 532
    const-string v27, "parent_tpl_ids"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 534
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a()Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v28

    .line 535
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 536
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 537
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/h/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 538
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/h/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 539
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/h/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 540
    invoke-virtual {v3, v8}, Lcom/bytedance/sdk/openadsdk/core/h/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 541
    invoke-virtual {v3, v9}, Lcom/bytedance/sdk/openadsdk/core/h/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 542
    invoke-virtual {v3, v10}, Lcom/bytedance/sdk/openadsdk/core/h/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 543
    invoke-virtual {v3, v11}, Lcom/bytedance/sdk/openadsdk/core/h/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 544
    invoke-virtual {v3, v12}, Lcom/bytedance/sdk/openadsdk/core/h/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 545
    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/openadsdk/core/h/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 546
    invoke-virtual {v3, v14}, Lcom/bytedance/sdk/openadsdk/core/h/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 547
    invoke-virtual {v3, v15}, Lcom/bytedance/sdk/openadsdk/core/h/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 548
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 549
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 550
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 551
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->f(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 552
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->g(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 553
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->h(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 554
    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 555
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 556
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 557
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->b(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 558
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->c(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 559
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    goto/16 :goto_3
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/m;
    .registers 5

    .prologue
    .line 564
    if-nez p0, :cond_4

    .line 565
    const/4 v0, 0x0

    .line 570
    :goto_3
    return-object v0

    .line 567
    :cond_4
    const-string v0, "tpl_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v1, "md5"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/m;->a()Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v3

    .line 571
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v0

    .line 573
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v0

    goto :goto_3
.end method

.method private d(Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 771
    const-string v1, "splash_load_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    .line 773
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    packed-switch v1, :pswitch_data_12

    .line 780
    :goto_e
    return v0

    .line 778
    :pswitch_f
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    goto :goto_e

    .line 773
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private e(Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 784
    const-string v1, "splash_check_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    .line 786
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    packed-switch v1, :pswitch_data_12

    .line 791
    :goto_e
    return v0

    .line 789
    :pswitch_f
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    goto :goto_e

    .line 786
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private t(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 482
    if-nez p1, :cond_3

    .line 501
    :goto_2
    return-void

    .line 484
    :cond_3
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 487
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_40

    .line 488
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/h/g;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/h/g;-><init>()V

    .line 489
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 490
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/lang/String;

    .line 491
    const-string v5, "service"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/h/g;->b:Ljava/lang/String;

    .line 492
    const-string v5, "package"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    .line 493
    const-string v5, "wakeup_interval"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/sdk/openadsdk/core/h/g;->d:I

    .line 494
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 497
    :cond_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a()Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->b()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_2

    .line 498
    :catch_48
    move-exception v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private u(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 1515
    .line 1516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    move v0, v1

    .line 1520
    :goto_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a()Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 1521
    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 1522
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 1523
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1524
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/h/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1525
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1526
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    const/16 v3, 0x64

    .line 1527
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1528
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1529
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    const/4 v1, 0x3

    .line 1530
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1531
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1532
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1533
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/h/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1534
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1535
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1536
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1537
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    const/16 v1, 0x14

    .line 1538
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1539
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1520
    return-object v0

    :cond_64
    move v0, v2

    goto :goto_d
.end method


# virtual methods
.method public A()I
    .registers 2

    .prologue
    .line 1147
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    return-object v0
.end method

.method public C()I
    .registers 2

    .prologue
    .line 1155
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    return v0
.end method

.method public D()I
    .registers 2

    .prologue
    .line 1159
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    return v0
.end method

.method public E()I
    .registers 2

    .prologue
    .line 1163
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    return v0
.end method

.method public F()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1167
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public G()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1171
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public H()I
    .registers 2

    .prologue
    .line 1175
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    return v0
.end method

.method public I()I
    .registers 2

    .prologue
    .line 1179
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    return v0
.end method

.method public J()I
    .registers 2

    .prologue
    .line 1183
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    return v0
.end method

.method public K()I
    .registers 2

    .prologue
    .line 1187
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    return v0
.end method

.method public L()I
    .registers 2

    .prologue
    .line 1191
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    return v0
.end method

.method public M()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1200
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public N()Ljava/util/List;
    .registers 5
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
    .line 1444
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 1446
    const/4 v0, 0x0

    .line 1453
    :goto_f
    return-object v0

    .line 1449
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1451
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2b
    move-object v0, v1

    .line 1453
    goto :goto_f
.end method

.method public O()Ljava/util/List;
    .registers 5
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
    .line 1461
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    .line 1462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 1463
    const/4 v0, 0x0

    .line 1470
    :goto_f
    return-object v0

    .line 1466
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1468
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2b
    move-object v0, v1

    .line 1470
    goto :goto_f
.end method

.method public P()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1481
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public Q()I
    .registers 2

    .prologue
    .line 1485
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    return v0
.end method

.method public R()I
    .registers 2

    .prologue
    .line 1489
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    if-gtz v0, :cond_8

    .line 1490
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    .line 1492
    :cond_8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    return v0
.end method

.method public S()I
    .registers 2

    .prologue
    .line 1506
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    return v0
.end method

.method public T()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/h/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->j:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)I
    .registers 6

    .prologue
    .line 1379
    if-nez p1, :cond_7

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Z)I

    move-result v0

    .line 1381
    :goto_6
    return v0

    .line 1380
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1381
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    goto :goto_6

    :cond_1b
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Z)I

    move-result v0

    goto :goto_6
.end method

.method public a()V
    .registers 11

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 302
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_279

    .line 304
    const-string v0, "tt_sdk_settings"

    const-string v2, "url_ads"

    const-string v3, "pangolin.snssdk.com"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    .line 305
    const-string v0, "tt_sdk_settings"

    const-string v2, "url_alog"

    const-string v3, "extlog.snssdk.com/service/2/app_log/"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    .line 306
    const-string v0, "tt_sdk_settings"

    const-string v2, "xpath"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->k:Ljava/lang/String;

    .line 307
    const-string v0, "tt_sdk_settings"

    const-string v2, "duration"

    const-wide/16 v4, 0x2710

    invoke-static {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    .line 308
    const-string v0, "tt_sdk_settings"

    const-string v2, "max"

    const/16 v3, 0x32

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    .line 309
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_back_dialog"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    .line 310
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_progressbar"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    .line 311
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_hook"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    .line 312
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_hook_oppo_arg1"

    const-string v3, "com.oppo.market"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    .line 313
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_hook_oppo_arg4"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    .line 314
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_hook_huawei_arg1"

    const-string v3, "com.huawei.appmarket"

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    .line 315
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_dl_network"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    .line 316
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_dl_size"

    invoke-static {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    .line 317
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_enable_install_again"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    .line 318
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_install_again_time"

    invoke-static {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    .line 319
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_install_again_time_next"

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    .line 320
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_storage_internal"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    .line 321
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_resume_notify_switch"

    .line 322
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    .line 323
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_resume_notify_time"

    invoke-static {v0, v2, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    .line 324
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_resume_notify_count"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    .line 325
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_config_if_open_market_window"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    .line 326
    const-string v0, "tt_sdk_settings"

    const-string v2, "pos_cache_time"

    invoke-static {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    .line 327
    const-string v0, "tt_sdk_settings"

    const-string v2, "vbtt"

    invoke-static {v0, v2, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    .line 328
    const-string v0, "tt_sdk_settings"

    const-string v2, "fetch_template"

    const/16 v3, 0xe10

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    .line 329
    const-string v0, "tt_sdk_settings"

    const-string v2, "template_ids"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    .line 330
    const-string v0, "tt_sdk_settings"

    const-string v2, "ab_test_version"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    .line 331
    const-string v0, "tt_sdk_settings"

    const-string v2, "ab_test_param"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    .line 332
    const-string v0, "tt_sdk_settings"

    const-string v2, "web_info_wifi_enable"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    .line 333
    const-string v0, "tt_sdk_settings"

    const-string v2, "web_info_page_count"

    invoke-static {v0, v2, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    .line 334
    const-string v0, "tt_sdk_settings"

    const-string v2, "pyload_h5"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->F:Ljava/lang/String;

    .line 335
    const-string v0, "tt_sdk_settings"

    const-string v2, "playableLoadH5Url"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->G:Ljava/lang/String;

    .line 336
    const-string v0, "tt_sdk_settings"

    const-string v2, "splash_load_type"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    .line 337
    const-string v0, "tt_sdk_settings"

    const-string v2, "splash_check_type"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    .line 338
    const-string v0, "tt_sdk_settings"

    const-string v2, "if_both_open"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    .line 339
    const-string v0, "tt_sdk_settings"

    const-string v2, "support_tnc"

    invoke-static {v0, v2, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    .line 340
    const-string v0, "tt_sdk_settings"

    const-string v2, "tpl_infos"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    .line 341
    const-string v0, "tt_sdk_settings"

    const-string v2, "app_list_control"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    .line 342
    const-string v0, "tt_sdk_settings"

    const-string v2, "max_tpl_cnts"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    .line 343
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->V()V

    .line 344
    const-string v0, "tt_sdk_settings"

    const-string v2, "fetch_tpl_timeout_ctrl"

    const/16 v3, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    .line 345
    const-string v0, "tt_sdk_settings"

    const-string v2, "hit_app_list_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 348
    const-string v0, "tt_sdk_settings"

    const-string v2, "sp_ov_skip_key"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    .line 349
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_xiaomi_silence_install"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    .line 350
    const-string v0, "tt_sdk_settings"

    const-string v2, "download_exp_switch_temp"

    const v3, 0x3cfffdff

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    .line 352
    const-string v0, "tt_sdk_settings"

    const-string v2, "hit_app_list_data"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_204

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_204

    .line 354
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_204

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f2

    .line 358
    :cond_204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 359
    const-string v0, "tt_sdk_settings"

    const-string v2, "scheme_list_data"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_22f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22f

    .line 361
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    .line 365
    :cond_22f
    const-string v0, "tt_sdk_settings"

    const-string v2, "push_config"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->t(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->U()V

    .line 368
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->W()V

    .line 369
    const-string v0, "tt_sdk_settings"

    const-string v2, "ad_slot_conf"

    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_275

    .line 372
    :try_start_24e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 374
    if-lez v0, :cond_275

    .line 375
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 376
    :goto_25e
    if-ge v1, v0, :cond_275

    .line 377
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v3

    .line 379
    if-eqz v3, :cond_271

    .line 380
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_271} :catch_274

    .line 376
    :cond_271
    add-int/lit8 v1, v1, 0x1

    goto :goto_25e

    .line 384
    :catch_274
    move-exception v0

    .line 388
    :cond_275
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c()V

    .line 479
    :goto_278
    return-void

    .line 393
    :cond_279
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->X()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v2

    .line 394
    const-string v0, "url_ads"

    const-string v3, "pangolin.snssdk.com"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    .line 395
    const-string v0, "url_alog"

    const-string v3, "extlog.snssdk.com/service/2/app_log/"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    .line 396
    const-string v0, "xpath"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->k:Ljava/lang/String;

    .line 397
    const-string v0, "duration"

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    .line 398
    const-string v0, "max"

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    .line 399
    const-string v0, "download_config_back_dialog"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    .line 400
    const-string v0, "download_config_progressbar"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    .line 401
    const-string v0, "download_config_hook"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    .line 402
    const-string v0, "download_config_hook_oppo_arg1"

    const-string v3, "com.oppo.market"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    .line 403
    const-string v0, "download_config_hook_oppo_arg4"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    .line 404
    const-string v0, "download_config_hook_huawei_arg1"

    const-string v3, "com.huawei.appmarket"

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    .line 405
    const-string v0, "download_config_dl_network"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    .line 406
    const-string v0, "download_config_dl_size"

    invoke-virtual {v2, v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    .line 407
    const-string v0, "download_config_enable_install_again"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    .line 408
    const-string v0, "download_config_install_again_time"

    invoke-virtual {v2, v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    .line 409
    const-string v0, "download_config_install_again_time_next"

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    .line 410
    const-string v0, "download_config_storage_internal"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    .line 411
    const-string v0, "download_config_resume_notify_switch"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    .line 412
    const-string v0, "download_config_resume_notify_count"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    .line 413
    const-string v0, "download_config_if_open_market_window"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    .line 414
    const-string v0, "download_config_resume_notify_time"

    invoke-virtual {v2, v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    .line 415
    const-string v0, "pos_cache_time"

    invoke-virtual {v2, v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    .line 416
    const-string v0, "fetch_template"

    const/16 v3, 0xe10

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    .line 417
    const-string v0, "ab_test_version"

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    .line 418
    const-string v0, "ab_test_param"

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    .line 420
    const-string v0, "vbtt"

    invoke-virtual {v2, v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    .line 421
    const-string v0, "template_ids"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    .line 422
    const-string v0, "web_info_wifi_enable"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    .line 423
    const-string v0, "web_info_page_count"

    invoke-virtual {v2, v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    .line 424
    const-string v0, "pyload_h5"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->F:Ljava/lang/String;

    .line 425
    const-string v0, "playableLoadH5Url"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->G:Ljava/lang/String;

    .line 426
    const-string v0, "splash_load_type"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    .line 427
    const-string v0, "splash_check_type"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    .line 428
    const-string v0, "if_both_open"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    .line 429
    const-string v0, "support_tnc"

    invoke-virtual {v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    .line 430
    const-string v0, "tpl_infos"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    .line 431
    const-string v0, "app_list_control"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    .line 432
    const-string v0, "max_tpl_cnts"

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    .line 433
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->V()V

    .line 434
    const-string v0, "fetch_tpl_timeout_ctrl"

    const/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    .line 435
    const-string v0, "hit_app_list_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 438
    const-string v0, "sp_ov_skip_key"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    .line 439
    const-string v0, "download_xiaomi_silence_install"

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    .line 440
    const-string v0, "download_exp_switch_temp"

    const v3, 0x3cfffdff

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    .line 442
    const-string v0, "hit_app_list_data"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_41d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41d

    .line 444
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_40b

    .line 448
    :cond_41d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 449
    const-string v0, "scheme_list_data"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_446

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_446

    .line 451
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_434
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_446

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_434

    .line 455
    :cond_446
    const-string v0, "push_config"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->t(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->U()V

    .line 458
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->W()V

    .line 459
    const-string v0, "ad_slot_conf"

    invoke-virtual {v2, v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_489

    .line 462
    :try_start_461
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 464
    if-lez v3, :cond_489

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v1

    .line 466
    :goto_472
    if-ge v0, v3, :cond_489

    .line 467
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_485

    .line 470
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_485
    .catch Ljava/lang/Exception; {:try_start_461 .. :try_end_485} :catch_488

    .line 466
    :cond_485
    add-int/lit8 v0, v0, 0x1

    goto :goto_472

    .line 474
    :catch_488
    move-exception v0

    .line 478
    :cond_489
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c()V

    goto/16 :goto_278
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 14
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x1e

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 578
    const-string v0, "app_common_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_31

    .line 581
    const-string v2, "if_open_market_window"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->A:I

    .line 583
    const-string v2, "skip_key"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->a:I

    .line 584
    const-string v2, "xiaomi_install"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->b:I

    .line 585
    const-string v2, "download_exp_switch_temp"

    const v4, 0x3cfffdff

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->c:I

    .line 588
    :cond_31
    const-string v0, "ads_url"

    const-string v2, "pangolin.snssdk.com"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    .line 589
    const-string v0, "app_log_url"

    const-string v2, "extlog.snssdk.com/service/2/app_log/"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    .line 591
    const-string v0, "xpath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->k:Ljava/lang/String;

    .line 592
    const-string v0, "pos_cache_time"

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    .line 593
    const-string v0, "feq_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_70

    .line 595
    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    .line 596
    const-string v2, "max"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    .line 599
    :cond_70
    const-string v0, "vbtt"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->S:I

    .line 600
    const-string v0, "fetch_tpl_interval"

    const/16 v2, 0xe10

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    .line 603
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->c()V

    .line 606
    const-string v0, "abtest"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_168

    .line 610
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    .line 611
    const-string v2, "param"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    .line 626
    :goto_9d
    const-string v0, "web_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_b5

    .line 628
    const-string v2, "web_info_wifi_enable"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    .line 629
    const-string v2, "web_info_page_count"

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    .line 632
    :cond_b5
    const-string v0, "pyload_h5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->F:Ljava/lang/String;

    .line 633
    const-string v0, "pure_pyload_h5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->G:Ljava/lang/String;

    .line 636
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    .line 637
    const-string v0, "splashLoad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting-\u300bmSplashLoadType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->e(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    .line 639
    const-string v0, "splashLoad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting-\u300bmSplashCheckType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "if_both_open"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    .line 642
    const-string v0, "support_tnc"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    .line 644
    const-string v0, "al"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->J:I

    .line 645
    const-string v0, "max_tpl_cnts"

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->W:I

    .line 646
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->V()V

    .line 647
    const-string v0, "app_common_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_13c

    .line 649
    const-string v2, "fetch_tpl_timeout_ctrl"

    const/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->X:I

    .line 652
    :cond_13c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->K:J

    .line 653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 654
    const-string v0, "spam_app_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 655
    if-eqz v2, :cond_192

    .line 656
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v3

    .line 657
    :goto_154
    if-ge v0, v4, :cond_192

    .line 658
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 659
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_165

    .line 660
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->L:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_165
    add-int/lit8 v0, v0, 0x1

    goto :goto_154

    .line 614
    :cond_168
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    .line 615
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 616
    const-string v0, "tt_sdk_settings"

    const-string v2, "ab_test_version"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "tt_sdk_settings"

    const-string v2, "ab_test_param"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 619
    :cond_182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->X()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    .line 620
    const-string v2, "ab_test_version"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;)V

    .line 621
    const-string v2, "ab_test_param"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 665
    :cond_192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 666
    const-string v0, "scheme_check_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 667
    if-eqz v2, :cond_1b8

    .line 668
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v3

    .line 669
    :goto_1a4
    if-ge v0, v4, :cond_1b8

    .line 670
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 671
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b5

    .line 672
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->M:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_1b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    .line 677
    :cond_1b8
    const-string v0, "download_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_23f

    .line 679
    const-string v2, "is_enable_back_dialog"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    .line 680
    const-string v2, "landing_page_progressbar_visible"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    .line 681
    const-string v2, "hook"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    .line 682
    const-string v2, "hook_oppo_arg1"

    const-string v4, "com.oppo.market"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    .line 683
    const-string v2, "hook_oppo_arg4"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->p:I

    .line 684
    const-string v2, "hook_huawei_arg1"

    const-string v4, "com.huawei.appmarket"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->q:Ljava/lang/String;

    .line 685
    const-string v2, "dl_network"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    .line 686
    const-string v2, "dl_size"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    .line 687
    const-string v2, "is_enable_start_install_again"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->t:I

    .line 688
    const-string v2, "start_install_time"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->u:I

    .line 689
    const-string v2, "next_install_min_time"

    const/16 v4, 0xa

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->v:I

    .line 690
    const-string v2, "if_storage_internal"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->w:I

    .line 691
    const-string v2, "if_tips"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->x:I

    .line 692
    const-string v2, "min_failed_time"

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->y:I

    .line 693
    const-string v2, "max_failes_count"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->z:I

    .line 697
    :cond_23f
    const-string v0, "tpl_ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_250

    .line 699
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->h:Ljava/lang/String;

    .line 700
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->U()V

    .line 706
    :cond_250
    :try_start_250
    const-string v0, "push_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 707
    if-eqz v4, :cond_314

    .line 708
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_25b
    .catch Ljava/lang/Throwable; {:try_start_250 .. :try_end_25b} :catch_2cc

    move-result-object v2

    .line 710
    :try_start_25c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v3

    .line 711
    :goto_261
    if-ge v0, v5, :cond_296

    .line 712
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/h/g;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/h/g;-><init>()V

    .line 713
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 714
    if-eqz v7, :cond_293

    .line 715
    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/lang/String;

    .line 716
    const-string v8, "service"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/g;->b:Ljava/lang/String;

    .line 717
    const-string v8, "package"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    .line 718
    const-string v8, "wakeup_interval"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bytedance/sdk/openadsdk/core/h/g;->d:I

    .line 719
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_293
    .catch Ljava/lang/Throwable; {:try_start_25c .. :try_end_293} :catch_30d

    .line 711
    :cond_293
    add-int/lit8 v0, v0, 0x1

    goto :goto_261

    :cond_296
    move-object v0, v2

    .line 724
    :goto_297
    :try_start_297
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a()Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/f;->b()V
    :try_end_29e
    .catch Ljava/lang/Throwable; {:try_start_297 .. :try_end_29e} :catch_312

    .line 732
    :goto_29e
    const-string v2, "ad_slot_conf_list"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 733
    if-eqz v4, :cond_2d3

    .line 734
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 736
    if-lez v5, :cond_2d3

    .line 737
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    move v2, v3

    .line 738
    :goto_2b6
    if-ge v2, v5, :cond_2d3

    .line 739
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 740
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v6

    .line 741
    if-eqz v6, :cond_2c9

    .line 742
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    iget-object v8, v6, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_2c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b6

    .line 725
    :catch_2cc
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 726
    :goto_2cf
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29e

    .line 749
    :cond_2d3
    const-string v2, "tpl_infos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 750
    if-eqz v4, :cond_306

    .line 751
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->f:Ljava/lang/String;

    .line 752
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 753
    if-lez v5, :cond_306

    .line 754
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    move v2, v3

    .line 755
    :goto_2ed
    if-ge v2, v5, :cond_306

    .line 756
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 757
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v3

    .line 758
    if-eqz v3, :cond_303

    .line 759
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->e:Ljava/util/Map;

    iget-object v7, v3, Lcom/bytedance/sdk/openadsdk/core/h/m;->a:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Lcom/bytedance/sdk/openadsdk/core/h/m;)V

    .line 755
    :cond_303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ed

    .line 766
    :cond_306
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c()V

    .line 767
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void

    .line 725
    :catch_30d
    move-exception v0

    move-object v11, v0

    move-object v0, v2

    move-object v2, v11

    goto :goto_2cf

    :catch_312
    move-exception v2

    goto :goto_2cf

    :cond_314
    move-object v0, v1

    goto :goto_297
.end method

.method public a(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1210
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1211
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1221
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1223
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    packed-switch v1, :pswitch_data_28

    .line 1234
    :cond_12
    :goto_12
    :pswitch_12
    return v0

    .line 1225
    :pswitch_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v0

    goto :goto_12

    .line 1228
    :pswitch_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    .line 1223
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
        :pswitch_12
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "pangolin.snssdk.com"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->U:Ljava/lang/String;

    goto :goto_a
.end method

.method public b(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1428
    if-nez p1, :cond_5

    .line 1430
    :goto_4
    return v1

    .line 1429
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v2

    .line 1430
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    if-ne v2, v0, :cond_17

    :goto_15
    move v1, v0

    goto :goto_4

    :cond_17
    move v0, v1

    goto :goto_15
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1250
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1251
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(I)I
    .registers 3

    .prologue
    .line 1496
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1497
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1261
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1262
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "extlog.snssdk.com/service/2/app_log/"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->V:Ljava/lang/String;

    goto :goto_a
.end method

.method public d(I)I
    .registers 3

    .prologue
    .line 1501
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1502
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1013
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->N:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1266
    if-nez p1, :cond_4

    .line 1268
    :cond_3
    :goto_3
    return v0

    .line 1267
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1268
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    if-eq v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public e()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1017
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->O:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1280
    if-nez p1, :cond_4

    .line 1282
    :cond_3
    :goto_3
    return v0

    .line 1281
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1282
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()I
    .registers 2

    .prologue
    .line 1021
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->r:I

    return v0
.end method

.method public f(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 1291
    if-nez p1, :cond_5

    const/16 v0, 0x5dc

    .line 1293
    :goto_4
    return v0

    .line 1292
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1293
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    goto :goto_4
.end method

.method public g()I
    .registers 2

    .prologue
    .line 1026
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->s:I

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public g(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 1303
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1304
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->B:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1309
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;

    if-nez v1, :cond_15

    :cond_13
    move-object v0, v2

    .line 1327
    :goto_14
    return-object v0

    .line 1313
    :cond_15
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1314
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1315
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 1316
    if-eqz v0, :cond_20

    .line 1317
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1318
    const-string v5, "id"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    const-string v5, "md5"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1320
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4d

    goto :goto_20

    .line 1324
    :catch_4d
    move-exception v0

    move-object v0, v2

    .line 1327
    goto :goto_14

    :cond_50
    move-object v0, v1

    .line 1323
    goto :goto_14
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->C:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1332
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1333
    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    if-eqz v0, :cond_15

    .line 1334
    const/4 v0, 0x1

    .line 1339
    :goto_13
    return v0

    .line 1336
    :catch_14
    move-exception v0

    .line 1339
    :cond_15
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public j(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1349
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1350
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1360
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1361
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    return v0
.end method

.method public k()J
    .registers 3

    .prologue
    .line 1042
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->P:J

    return-wide v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 1046
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q:I

    return v0
.end method

.method public l(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 1372
    if-nez p1, :cond_4

    const/4 v0, -0x1

    .line 1374
    :goto_3
    return v0

    .line 1373
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1374
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    goto :goto_3
.end method

.method public m()I
    .registers 2

    .prologue
    .line 1050
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->R:I

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1385
    if-nez p1, :cond_4

    .line 1388
    :cond_3
    :goto_3
    return v0

    .line 1387
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1388
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public n()I
    .registers 2

    .prologue
    .line 1054
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->T:I

    return v0
.end method

.method public n(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1397
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public o()I
    .registers 2

    .prologue
    .line 1058
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->E:I

    return v0
.end method

.method public o(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 1401
    if-nez p1, :cond_5

    const/16 v0, 0x14

    .line 1403
    :goto_4
    return v0

    .line 1402
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1403
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    goto :goto_4
.end method

.method public p(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 1422
    if-nez p1, :cond_4

    const/4 v0, -0x1

    .line 1424
    :goto_3
    return v0

    .line 1423
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    .line 1424
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    goto :goto_3
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->F:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->G:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1434
    if-nez p1, :cond_4

    .line 1436
    :cond_3
    :goto_3
    return v0

    .line 1435
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 1436
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    if-eq v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public r()I
    .registers 2

    .prologue
    .line 1079
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->H:I

    return v0
.end method

.method public r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 3

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/a;

    .line 1511
    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->u(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 1083
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->I:I

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1549
    return-void
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public u()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1108
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->s()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public v()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1112
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->D:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public w()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1121
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->l:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public x()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1130
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->m:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public y()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1139
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->n:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/l;->o:Ljava/lang/String;

    return-object v0
.end method
