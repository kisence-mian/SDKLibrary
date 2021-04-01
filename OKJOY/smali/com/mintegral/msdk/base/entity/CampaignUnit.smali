.class public Lcom/mintegral/msdk/base/entity/CampaignUnit;
.super Ljava/lang/Object;
.source "CampaignUnit.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field public static final JSON_KEY_ADS:Ljava/lang/String; = "ads"

.field public static final JSON_KEY_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final JSON_KEY_BANNER_HTML:Ljava/lang/String; = "banner_html"

.field public static final JSON_KEY_BANNER_URL:Ljava/lang/String; = "banner_url"

.field public static final JSON_KEY_CSP:Ljava/lang/String; = "csp"

.field public static final JSON_KEY_DO:Ljava/lang/String; = "do"

.field public static final JSON_KEY_END_SCREEN_URL:Ljava/lang/String; = "end_screen_url"

.field public static final JSON_KEY_FRAME_ADS:Ljava/lang/String; = "frames"

.field public static final JSON_KEY_HTML_URL:Ljava/lang/String; = "html_url"

.field public static final JSON_KEY_IA_EXT1:Ljava/lang/String; = "ia_all_ext1"

.field public static final JSON_KEY_IA_EXT2:Ljava/lang/String; = "ia_all_ext2"

.field public static final JSON_KEY_IA_ICON:Ljava/lang/String; = "ia_icon"

.field public static final JSON_KEY_IA_ORI:Ljava/lang/String; = "ia_ori"

.field public static final JSON_KEY_IA_RST:Ljava/lang/String; = "ia_rst"

.field public static final JSON_KEY_IA_URL:Ljava/lang/String; = "ia_url"

.field public static final JSON_KEY_JM_DO:Ljava/lang/String; = "jm_do"

.field public static final JSON_KEY_ONLY_IMPRESSION_URL:Ljava/lang/String; = "only_impression_url"

.field public static final JSON_KEY_PARENT_SESSION_ID:Ljava/lang/String; = "parent_session_id"

.field public static final JSON_KEY_RKS:Ljava/lang/String; = "rks"

.field public static final JSON_KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final JSON_KEY_SH:Ljava/lang/String; = "sh"

.field public static final JSON_KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JSON_KEY_UNIT_SIZE:Ljava/lang/String; = "unit_size"

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adType:I

.field public ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private bannerHtml:Ljava/lang/String;

.field private bannerUrl:Ljava/lang/String;

.field private cParams:Ljava/lang/StringBuffer;

.field private csp:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private htmlUrl:Ljava/lang/String;

.field private ia_all_ext1:Ljava/lang/String;

.field private ia_all_ext2:Ljava/lang/String;

.field private ia_icon:Ljava/lang/String;

.field private ia_ori:I

.field private ia_rst:I

.field private ia_url:Ljava/lang/String;

.field private jmDo:I

.field private listFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private onlyImpressionUrl:Ljava/lang/String;

.field private parentSessionId:Ljava/lang/String;

.field private rks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;

.field private sh:Ljava/lang/String;

.field private template:I

.field private unitSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    return-void
.end method

.method private nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 277
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method public static parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignUnit;
    .registers 2

    .prologue
    .line 323
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v0

    return-object v0
.end method

.method public static parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignUnit;
    .registers 16

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 330
    if-eqz p0, :cond_1d7

    .line 331
    :try_start_3
    new-instance v5, Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-direct {v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_1d3

    .line 332
    :try_start_8
    const-string v0, "rks"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 334
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 336
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 337
    :goto_22
    if-eqz v2, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    goto :goto_22

    .line 403
    :catch_38
    move-exception v0

    :goto_39
    sget-object v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->TAG:Ljava/lang/String;

    const-string v1, "parse campaign unit exception"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_40
    :goto_40
    return-object v5

    .line 342
    :cond_41
    :try_start_41
    invoke-virtual {v5, v3}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setRks(Ljava/util/HashMap;)V

    .line 344
    :cond_44
    const-string v0, "session_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setSessionId(Ljava/lang/String;)V

    .line 345
    const-string v0, "parent_session_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setParentSessionId(Ljava/lang/String;)V

    .line 346
    const-string v0, "ad_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setAdType(I)V

    .line 347
    const-string v0, "unit_size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setUnitSize(Ljava/lang/String;)V

    .line 348
    const-string v0, "html_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setHtmlUrl(Ljava/lang/String;)V

    .line 349
    const-string v0, "only_impression_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setOnlyImpressionUrl(Ljava/lang/String;)V

    .line 350
    const-string v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setTemplate(I)V

    .line 351
    const-string v0, "jm_do"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setJmDo(I)V

    .line 352
    const-string v0, "ia_icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setIa_icon(Ljava/lang/String;)V

    .line 353
    const-string v0, "ia_rst"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setIa_rst(I)V

    .line 354
    const-string v0, "ia_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setIa_url(Ljava/lang/String;)V

    .line 355
    const-string v0, "ia_ori"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setIa_ori(I)V

    .line 356
    const-string v0, "ia_all_ext1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setIa_all_ext1(Ljava/lang/String;)V

    .line 357
    const-string v0, "ia_all_ext2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setIa_all_ext2(Ljava/lang/String;)V

    .line 358
    const-string v0, "banner_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setBannerUrl(Ljava/lang/String;)V

    .line 359
    const-string v0, "banner_html"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setBannerHtml(Ljava/lang/String;)V

    .line 360
    const-string v0, "ads"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 361
    const-string v0, "frames"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 362
    if-eqz v9, :cond_196

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_196

    .line 363
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 364
    const/4 v0, 0x0

    move v7, v0

    :goto_ef
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_191

    .line 365
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 366
    const-string v0, "ads"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 367
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 368
    const/4 v0, 0x0

    move v8, v0

    :goto_106
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_166

    .line 369
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 370
    const-string v1, "only_impression_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "html_url"

    .line 371
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end_screen_url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v6, p1

    .line 370
    invoke-static/range {v0 .. v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCampaign(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 372
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getIa_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getIa_ori()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 374
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getIa_rst()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 375
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getIa_icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 376
    const-string v1, "ad_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 377
    const-string v1, "ia_ext1"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 378
    const-string v1, "ia_ext2"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_106

    .line 381
    :cond_166
    new-instance v0, Lcom/mintegral/msdk/out/Frame;

    invoke-direct {v0}, Lcom/mintegral/msdk/out/Frame;-><init>()V

    .line 382
    const-string v1, "parent_session_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/Frame;->setParentSessionId(Ljava/lang/String;)V

    .line 383
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/Frame;->setSessionId(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v13}, Lcom/mintegral/msdk/out/Frame;->setCampaigns(Ljava/util/List;)V

    .line 385
    const-string v1, "template"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/Frame;->setTemplate(I)V

    .line 386
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_ef

    .line 389
    :cond_191
    invoke-virtual {v5, v10}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setListFrames(Ljava/util/List;)V

    goto/16 :goto_40

    .line 390
    :cond_196
    if-eqz v8, :cond_40

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 391
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 392
    const/4 v0, 0x0

    move v7, v0

    :goto_1a5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_1ce

    .line 393
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 394
    const-string v1, "only_impression_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "html_url"

    .line 395
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end_screen_url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v6, p1

    .line 394
    invoke-static/range {v0 .. v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCampaign(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 397
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1a5

    .line 399
    :cond_1ce
    invoke-virtual {v5, v9}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->setAds(Ljava/util/ArrayList;)V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_1d1} :catch_38

    goto/16 :goto_40

    .line 403
    :catch_1d3
    move-exception v1

    move-object v5, v0

    goto/16 :goto_39

    :cond_1d7
    move-object v5, v0

    goto/16 :goto_40
.end method


# virtual methods
.method public assembCParams()Ljava/lang/String;
    .registers 8

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 281
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_12
    return-object v0

    .line 284
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 287
    const-string v1, ""

    .line 288
    const-string v0, ""

    .line 289
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v5, "authority_general_data"

    invoke-static {v5}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 290
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_7a
    iget-object v5, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAdType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "1"

    .line 296
    invoke-direct {p0, v6}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 297
    invoke-direct {p0, v6}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "MAL_10.2.42"

    .line 298
    invoke-direct {p0, v6}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 299
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 300
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/c;->i(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 303
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 304
    invoke-direct {p0, v4}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 306
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 308
    invoke-direct {p0, v2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    .line 310
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    .line 313
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;
    :try_end_1e9
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1e9} :catch_1f1

    .line 319
    :goto_1e9
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 316
    :catch_1f1
    move-exception v0

    .line 317
    sget-object v1, Lcom/mintegral/msdk/base/entity/CampaignUnit;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e9
.end method

.method public getAdType()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->adType:I

    return v0
.end method

.method public getAds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBannerHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->bannerHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCsp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->csp:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_all_ext1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_all_ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_all_ext2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_all_ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_icon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_ori()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_ori:I

    return v0
.end method

.method public getIa_rst()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_rst:I

    return v0
.end method

.method public getIa_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_url:Ljava/lang/String;

    return-object v0
.end method

.method public getJmDo()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->jmDo:I

    return v0
.end method

.method public getListFrames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->listFrames:Ljava/util/List;

    return-object v0
.end method

.method public getOnlyImpressionUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->onlyImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRks()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->rks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSh()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->sh:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->template:I

    return v0
.end method

.method public getUnitSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->unitSize:Ljava/lang/String;

    return-object v0
.end method

.method public setAdType(I)V
    .registers 2

    .prologue
    .line 233
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->adType:I

    .line 234
    return-void
.end method

.method public setAds(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    .line 266
    return-void
.end method

.method public setBannerHtml(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->bannerHtml:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->bannerUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCsp(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->csp:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->domain:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setHtmlUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->htmlUrl:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setIa_all_ext1(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_all_ext1:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setIa_all_ext2(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_all_ext2:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setIa_icon(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_icon:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setIa_ori(I)V
    .registers 2

    .prologue
    .line 113
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_ori:I

    .line 114
    return-void
.end method

.method public setIa_rst(I)V
    .registers 2

    .prologue
    .line 97
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_rst:I

    .line 98
    return-void
.end method

.method public setIa_url(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ia_url:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setJmDo(I)V
    .registers 2

    .prologue
    .line 201
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->jmDo:I

    .line 202
    return-void
.end method

.method public setListFrames(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->listFrames:Ljava/util/List;

    .line 210
    return-void
.end method

.method public setOnlyImpressionUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->onlyImpressionUrl:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setParentSessionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->parentSessionId:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setRks(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->rks:Ljava/util/HashMap;

    .line 168
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->sessionId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setSh(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->sh:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setTemplate(I)V
    .registers 2

    .prologue
    .line 273
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->template:I

    .line 274
    return-void
.end method

.method public setUnitSize(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->unitSize:Ljava/lang/String;

    .line 242
    return-void
.end method
