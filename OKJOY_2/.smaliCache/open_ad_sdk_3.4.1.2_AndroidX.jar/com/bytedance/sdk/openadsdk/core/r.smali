.class public Lcom/bytedance/sdk/openadsdk/core/r;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r$b;,
        Lcom/bytedance/sdk/openadsdk/core/r$c;,
        Lcom/bytedance/sdk/openadsdk/core/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/q<",
        "Lcom/bytedance/sdk/openadsdk/c/a;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    .line 1145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/r;->g:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r;->g()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    .line 137
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private a(I)I
    .registers 2

    .line 523
    const/16 p1, 0x2710

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/r;)Landroid/content/Context;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1047
    const-string v0, ""

    :try_start_2
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1048
    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    :goto_11
    return-object v0

    .line 1049
    :catchall_12
    move-exception p0

    .line 1050
    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/m;)Lorg/json/JSONObject;
    .registers 13

    .line 866
    const-string v0, "smart_look"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 868
    :try_start_7
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    const-string v2, "prime_rit"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPrimeRit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string v2, "show_seq"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdloadSeq()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    const-string v2, "adtype"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 875
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 876
    :cond_3b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 877
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 878
    const-string v3, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    :cond_53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 881
    const-string v3, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    :cond_66
    const-string v3, "preview_ads"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6b} :catch_166

    .line 885
    :cond_6b
    const-string v2, "render_method"

    const-string v3, "accepted_size"

    const/4 v4, 0x1

    if-eqz p3, :cond_bd

    .line 886
    const/4 v5, 0x3

    if-eq p2, v5, :cond_78

    const/4 v5, 0x4

    if-ne p2, v5, :cond_97

    .line 887
    :cond_78
    :try_start_78
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 888
    const-string v6, "publisher_timeout_control"

    iget-wide v7, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->g:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 889
    const-string v6, "time_out_control"

    iget-wide v7, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->h:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 890
    const-string v6, "time_out"

    iget-wide v7, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->i:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 891
    const-string v6, "tmax"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    :cond_97
    iget v5, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 895
    iget v2, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    if-ne v2, v4, :cond_ac

    .line 896
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v5

    invoke-direct {p0, v1, v3, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_cb

    .line 897
    :cond_ac
    iget v2, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_cb

    .line 898
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v5

    invoke-direct {p0, v1, v3, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Ljava/lang/String;FF)V

    goto :goto_cb

    .line 901
    :cond_bd
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 902
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v5

    invoke-direct {p0, v1, v3, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 904
    :cond_cb
    :goto_cb
    const-string v2, "ptpl_ids"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/h/h;->h(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    const-string v2, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 906
    const-string v2, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 907
    const-string v2, "if_support_render_control"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportRenderConrol()Z

    move-result v3

    if-eqz v3, :cond_f8

    move v3, v4

    goto :goto_f9

    :cond_f8
    const/4 v3, 0x0

    :goto_f9
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 908
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v2

    if-gtz v2, :cond_109

    const/16 v2, 0x9

    if-eq p2, v2, :cond_109

    const/4 v2, 0x5

    if-ne p2, v2, :cond_10e

    .line 909
    :cond_109
    const-string v2, "is_origin_ad"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 911
    :cond_10e
    if-eqz p3, :cond_11b

    iget-object v2, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->j:Lorg/json/JSONObject;

    if-eqz v2, :cond_11b

    .line 912
    const-string v2, "session_params"

    iget-object v3, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->j:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 914
    :cond_11b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v2

    .line 922
    const/4 v3, 0x7

    if-eq p2, v3, :cond_129

    const/16 v3, 0x8

    if-ne p2, v3, :cond_127

    goto :goto_129

    :cond_127
    move v4, v2

    goto :goto_12a

    .line 923
    :cond_129
    :goto_129
    nop

    .line 926
    :goto_12a
    if-eqz p3, :cond_134

    iget-object p2, p3, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    if-eqz p2, :cond_134

    .line 927
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v4

    .line 929
    :cond_134
    const-string p2, "ad_count"

    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 932
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExtraSmartLookParam()Ljava/lang/String;

    move-result-object p1

    .line 934
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 935
    const/4 p2, 0x0

    .line 936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_14d

    .line 937
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 939
    :cond_14d
    if-eqz p2, :cond_165

    .line 940
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 941
    if-eqz p1, :cond_164

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_160

    goto :goto_164

    .line 944
    :cond_160
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_163} :catch_166

    goto :goto_165

    .line 942
    :cond_164
    :goto_164
    return-object v1

    .line 947
    :cond_165
    :goto_165
    goto :goto_167

    .line 946
    :catch_166
    move-exception p1

    .line 948
    :goto_167
    return-object v1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;IZ)Lorg/json/JSONObject;
    .registers 22

    .line 141
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, ""

    const-string v6, "app"

    const-string v7, "3.4.1.2"

    const-string v8, "ad_sdk_version"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_15
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 145
    if-eqz v3, :cond_28

    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_28

    :cond_25
    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/m;->a:Ljava/lang/String;

    goto :goto_2c

    :cond_28
    :goto_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2c} :catch_1cc

    :goto_2c
    move-object v11, v0

    .line 146
    const/4 v0, 0x7

    const-string v12, "req_type"

    if-ne v4, v0, :cond_3e

    .line 147
    if-eqz v3, :cond_4d

    :try_start_34
    iget v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    if-lez v0, :cond_4d

    .line 148
    iget v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4d

    .line 150
    :cond_3e
    const/16 v0, 0x8

    if-ne v4, v0, :cond_4d

    .line 151
    if-eqz v3, :cond_4d

    iget v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/m;->c:I

    if-lez v0, :cond_4d

    .line 152
    iget v0, v3, Lcom/bytedance/sdk/openadsdk/core/d/m;->c:I

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4d} :catch_1cc

    .line 157
    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/h/h;->h()Ljava/lang/String;

    move-result-object v12

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/i;->u()Ljava/lang/String;

    move-result-object v13

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c1

    .line 161
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v15, "version"

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    if-eqz v2, :cond_ad

    .line 164
    const-string v0, "external_ab_vid"

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExternalABVid()[I

    move-result-object v15

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v0, "NetApiImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_91
    .catchall {:try_start_4d .. :try_end_91} :catchall_c4

    move-object/from16 v16, v9

    :try_start_93
    const-string v9, "external_ab_vid "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExternalABVid()[I

    move-result-object v15

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 163
    :cond_ad
    move-object/from16 v16, v9

    .line 167
    :goto_af
    const-string v0, "param"

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v0, "tob_ab_sdk_version"

    invoke-virtual {v14, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v0, "abtest"

    invoke-virtual {v10, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_be
    .catchall {:try_start_93 .. :try_end_be} :catchall_bf

    goto :goto_c3

    .line 171
    :catchall_bf
    move-exception v0

    goto :goto_c7

    .line 160
    :cond_c1
    move-object/from16 v16, v9

    .line 172
    :goto_c3
    goto :goto_c7

    .line 171
    :catchall_c4
    move-exception v0

    move-object/from16 v16, v9

    .line 174
    :goto_c7
    :try_start_c7
    const-string v0, "request_id"

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "source_type"

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v0, "logsdk_version"

    const-string v9, "sdk_version_name"

    invoke-static {v9, v5}, Lcom/bytedance/embedapplog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_114

    .line 183
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/h/h;->w()Z

    move-result v6

    if-nez v6, :cond_103

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b()Z

    move-result v6

    if-nez v6, :cond_103

    .line 186
    const-string v6, "free_space"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    :cond_103
    if-eqz v2, :cond_114

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v6

    if-lez v6, :cond_114

    .line 189
    const-string v6, "orientation"

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v9

    invoke-virtual {v0, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    :cond_114
    const-string v6, "device"

    invoke-virtual {v10, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v0, "user"

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/r;->d()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "ip"

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/r;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 197
    invoke-direct {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/m;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 198
    const-string v4, "adslots"

    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-direct {v1, v10, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v12, 0x3e8

    div-long/2addr v3, v12

    .line 201
    const-string v0, "ts"

    invoke-virtual {v10, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    nop

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16d

    if-eqz v11, :cond_16d

    .line 204
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    :cond_16d
    const-string v0, "req_sign"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    if-eqz p4, :cond_17c

    .line 209
    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    return-object v10

    .line 213
    :cond_17c
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/r;->k()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    const/4 v3, 0x2

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Ljava/lang/String;)Z

    move-result v2
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_1a6} :catch_1c8

    const-string v4, "cypher"

    const-string v5, "message"

    if-eqz v2, :cond_1b5

    .line 219
    move-object/from16 v2, v16

    :try_start_1ae
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1c2

    .line 222
    :cond_1b5
    move-object/from16 v2, v16

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    :goto_1c2
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1c5} :catch_1c6

    .line 227
    goto :goto_1ce

    .line 226
    :catch_1c6
    move-exception v0

    goto :goto_1ce

    :catch_1c8
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_1ce

    :catch_1cc
    move-exception v0

    move-object v2, v9

    .line 228
    :goto_1ce
    return-object v2
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/r;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    .line 1511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1513
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1521
    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1522
    const-string p1, "timestamp"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1523
    const-string p1, "sign"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1524
    const-string p1, "ext"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_51} :catch_52

    .line 1526
    goto :goto_53

    .line 1525
    :catch_52
    move-exception p1

    .line 1527
    :goto_53
    return-object v0
.end method

.method private a(JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/r$a;ILjava/lang/String;)V
    .registers 11

    .line 534
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 535
    return-void

    .line 538
    :cond_7
    const/4 v0, 0x4

    if-eq p4, v0, :cond_e

    const/4 v0, 0x3

    if-eq p4, v0, :cond_e

    .line 539
    return-void

    .line 541
    :cond_e
    nop

    .line 542
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p6}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object p7

    .line 543
    :cond_19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;-><init>()V

    .line 544
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p4

    check-cast p4, Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 545
    invoke-virtual {p4, p6}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p4

    check-cast p4, Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 546
    invoke-virtual {p4, p7}, Lcom/bytedance/sdk/openadsdk/g/a/b;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p4

    check-cast p4, Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 549
    const/4 p6, 0x0

    .line 550
    nop

    .line 551
    nop

    .line 552
    const-string p7, ""

    if-eqz p5, :cond_75

    :try_start_37
    iget-object v0, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v0, :cond_75

    iget-object v0, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 553
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v0, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 554
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_75

    .line 555
    iget-object p6, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p6

    const/4 v0, 0x0

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 556
    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_b9

    if-nez v1, :cond_73

    .line 559
    :try_start_66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 560
    const-string v2, "req_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_72

    .line 562
    goto :goto_77

    .line 561
    :catchall_72
    move-exception v1

    .line 566
    :cond_73
    move-object v1, p7

    goto :goto_77

    :cond_75
    move-object v0, p7

    move-object v1, v0

    :goto_77
    :try_start_77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    if-eqz p5, :cond_89

    iget-object v2, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v2, :cond_89

    .line 567
    iget-object v1, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 570
    :cond_89
    invoke-virtual {p4, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/g/a/b;

    if-eqz p6, :cond_96

    .line 571
    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p7

    goto :goto_97

    :cond_96
    nop

    :goto_97
    invoke-virtual {v1, p7}, Lcom/bytedance/sdk/openadsdk/g/a/b;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p6

    check-cast p6, Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 572
    invoke-virtual {p6, v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p6

    check-cast p6, Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 573
    invoke-virtual {p6, p3}, Lcom/bytedance/sdk/openadsdk/g/a/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 574
    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(J)Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object p1

    if-eqz p5, :cond_b3

    iget p2, p5, Lcom/bytedance/sdk/openadsdk/core/r$a;->a:I

    int-to-long p2, p2

    goto :goto_b5

    :cond_b3
    const-wide/16 p2, 0x0

    .line 575
    :goto_b5
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(J)Lcom/bytedance/sdk/openadsdk/g/a/b;
    :try_end_b8
    .catchall {:try_start_77 .. :try_end_b8} :catchall_b9

    .line 578
    goto :goto_c1

    .line 576
    :catchall_b9
    move-exception p1

    .line 577
    const-string p2, "NetApiImpl"

    const-string p3, "uploadAdTypeTimeOutEvent throws exception "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    :goto_c1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/g/a;->e(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 581
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/a;)V
    .registers 6

    .line 981
    if-eqz p1, :cond_2a

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    goto :goto_2a

    .line 984
    :cond_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    const-string v0, "log_extra"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 985
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 986
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->f(Ljava/lang/String;)I

    move-result p1

    .line 988
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_21

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:J

    :cond_21
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:J

    .line 989
    if-nez p1, :cond_27

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->f:I

    :cond_27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->f:I

    .line 990
    return-void

    .line 982
    :cond_2a
    :goto_2a
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/q$b;)V
    .registers 4

    .line 778
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(ILjava/lang/String;)V

    .line 779
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/q$c;)V
    .registers 4

    .line 782
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$c;->a(ILjava/lang/String;)V

    .line 783
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/r;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/r$a;ILjava/lang/String;)V
    .registers 8

    .line 78
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/r;->a(JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/r$a;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$b;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/q$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$c;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/q$c;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 4

    .line 238
    if-eqz p2, :cond_11

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    if-nez v0, :cond_7

    goto :goto_11

    .line 242
    :cond_7
    :try_start_7
    const-string v0, "source_temai_product_ids"

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 244
    goto :goto_10

    .line 243
    :catch_f
    move-exception p1

    .line 245
    :goto_10
    return-void

    .line 239
    :cond_11
    :goto_11
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;FF)V
    .registers 8

    .line 967
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_27

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_27

    .line 968
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 969
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 971
    :try_start_13
    const-string v2, "width"

    float-to-int p3, p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 972
    const-string p3, "height"

    float-to-int p4, p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 973
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 974
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_26

    .line 976
    goto :goto_27

    .line 975
    :catch_26
    move-exception p1

    .line 978
    :cond_27
    :goto_27
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .registers 8

    .line 953
    if-lez p3, :cond_20

    if-lez p4, :cond_20

    .line 954
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 955
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 957
    :try_start_e
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 958
    const-string p3, "height"

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 959
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 960
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    .line 962
    goto :goto_20

    .line 961
    :catch_1f
    move-exception p1

    .line 964
    :cond_20
    :goto_20
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 824
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 825
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    .line 253
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 254
    return v1

    .line 257
    :cond_8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 258
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/b;->b()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 262
    :cond_21
    return v1

    .line 264
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    .line 1081
    const-string v0, "mdpi"

    sparse-switch p0, :sswitch_data_1c

    .line 1101
    goto :goto_1b

    .line 1098
    :sswitch_6
    nop

    .line 1099
    const-string v0, "xxxhdpi"

    goto :goto_1b

    .line 1095
    :sswitch_a
    nop

    .line 1096
    const-string v0, "xxhdpi"

    goto :goto_1b

    .line 1092
    :sswitch_e
    nop

    .line 1093
    const-string v0, "xhdpi"

    goto :goto_1b

    .line 1086
    :sswitch_12
    nop

    .line 1087
    const-string v0, "hdpi"

    goto :goto_1b

    .line 1089
    :sswitch_16
    nop

    .line 1090
    goto :goto_1b

    .line 1083
    :sswitch_18
    nop

    .line 1084
    const-string v0, "ldpi"

    .line 1104
    :goto_1b
    return-object v0

    :sswitch_data_1c
    .sparse-switch
        0x78 -> :sswitch_18
        0xa0 -> :sswitch_16
        0xf0 -> :sswitch_12
        0x140 -> :sswitch_e
        0x1e0 -> :sswitch_a
        0x280 -> :sswitch_6
    .end sparse-switch
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 736
    nop

    .line 737
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v1

    .line 738
    const-string v2, "0:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 739
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 738
    :cond_1f
    const/4 p1, 0x0

    .line 741
    :goto_20
    return-object p1
.end method

.method private b()Lorg/json/JSONObject;
    .registers 4

    .line 791
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 793
    :try_start_5
    const-string v1, "appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v1, "name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Lorg/json/JSONObject;)V

    .line 796
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->d(Lorg/json/JSONObject;)V

    .line 797
    const-string v1, "is_paid_app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->h()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 798
    const-string v1, "apk_sign"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_45} :catch_46

    .line 800
    goto :goto_47

    .line 799
    :catch_46
    move-exception v1

    .line 801
    :goto_47
    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 696
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 697
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    .line 699
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 700
    const-string v3, "action"

    const-string v4, "dislike"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 702
    const-string v3, "ad_sdk_version"

    const-string v4, "3.4.1.2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    if-eqz v1, :cond_39

    .line 704
    const-string v3, "latitude"

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 705
    const-string v3, "longitude"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 707
    :cond_39
    if-eqz p1, :cond_58

    .line 708
    const-string v1, "extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->y()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 710
    const-string v1, "other"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Ljava/lang/String;)V

    .line 712
    :cond_4f
    const-string v1, "dislike_source"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    :cond_58
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/r;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5c} :catch_91

    .line 716
    const-string v3, "comment"

    if-eqz v1, :cond_67

    .line 717
    :try_start_60
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_6b

    .line 720
    :cond_67
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    :goto_6b
    const-string v1, "filter_words"

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 724
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 725
    const-string v1, "actions"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object p1

    .line 727
    if-eqz p1, :cond_90

    .line 728
    const-string p2, "personalization_prompts"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_90} :catch_91

    .line 731
    :cond_90
    goto :goto_92

    .line 730
    :catch_91
    move-exception p1

    .line 732
    :goto_92
    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    .line 502
    const-string v0, "smart_look_url"

    .line 505
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 508
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_13

    .line 507
    :cond_12
    const/4 v1, 0x0

    .line 510
    :goto_13
    if-eqz v1, :cond_2f

    const-string p1, "smart_look"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 511
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_30

    .line 513
    const/4 p1, 0x1

    return p1

    .line 517
    :cond_2f
    goto :goto_4d

    .line 515
    :catch_30
    move-exception p1

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetApiImpl-->\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_4d
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lorg/json/JSONObject;)Z
    .registers 3

    .line 767
    if-eqz p1, :cond_10

    .line 769
    :try_start_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    return p1

    .line 770
    :catchall_f
    move-exception p1

    .line 773
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .line 805
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 745
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    .line 748
    :cond_9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 749
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 750
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 751
    goto :goto_12

    .line 752
    :cond_26
    return-object v0

    .line 746
    :cond_27
    :goto_27
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4

    .line 836
    :try_start_0
    const-string v0, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    const-string v0, "version_code"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    const-string v0, "version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 840
    goto :goto_1d

    .line 839
    :catch_1c
    move-exception p1

    .line 841
    :goto_1d
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 2

    .line 527
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private d()Lorg/json/JSONObject;
    .registers 4

    .line 809
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 811
    :try_start_5
    const-string v1, "keywords"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 813
    if-eqz v1, :cond_1f

    .line 814
    const-string v2, "app_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    :cond_1f
    const-string v1, "data"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    .line 818
    goto :goto_2e

    .line 817
    :catch_2d
    move-exception v1

    .line 819
    :goto_2e
    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 10

    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 659
    return-void

    .line 662
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v0

    if-nez v0, :cond_12

    .line 663
    return-void

    .line 665
    :cond_12
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 666
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v6

    .line 667
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r$4;

    const/4 v3, 0x1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/r$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;Ljava/util/Map;)V

    .line 672
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r$4;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 673
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 674
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 676
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 7

    .line 849
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_24

    .line 852
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 853
    const-string v2, "latitude"

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 854
    const-string v2, "longitude"

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 855
    const-string v0, "geo"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    .line 857
    goto :goto_24

    .line 856
    :catch_23
    move-exception p1

    .line 859
    :cond_24
    :goto_24
    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .line 862
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 759
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 761
    const-string p1, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :cond_19
    return-object v0
.end method

.method private e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .line 1148
    nop

    .line 1149
    if-nez p1, :cond_4

    .line 1150
    return-object p1

    .line 1153
    :cond_4
    :try_start_4
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/r;->g:Z

    if-eqz v0, :cond_51

    .line 1154
    const-string v0, "cypher"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1155
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    nop

    .line 1157
    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 1159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 1157
    :cond_22
    move-object v3, v1

    .line 1161
    :goto_23
    const/4 v4, 0x2

    if-ne v0, v4, :cond_44

    .line 1162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x11

    if-lt v0, v4, :cond_44

    .line 1163
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1167
    :cond_44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_53

    if-nez v0, :cond_51

    .line 1169
    :try_start_4a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_50

    .line 1172
    goto :goto_52

    .line 1170
    :catchall_50
    move-exception v0

    .line 1177
    :cond_51
    move-object v0, p1

    :goto_52
    goto :goto_55

    .line 1175
    :catch_53
    move-exception v0

    move-object v0, p1

    .line 1178
    :goto_55
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/r;->g:Z

    if-eqz v1, :cond_5a

    move-object p1, v0

    :cond_5a
    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1136
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    if-nez p1, :cond_17

    .line 1138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 1139
    invoke-virtual {p1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1141
    :cond_17
    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .registers 5

    .line 994
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 996
    :try_start_5
    const-string v1, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    const-string v1, "udid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    const-string v1, "openudid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    const-string v1, "oaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    const-string v1, "ad_sdk_version"

    const-string v2, "3.4.1.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    const-string v1, "sim_op"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const-string v1, "root"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    :goto_48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1003
    const-string v1, "timezone"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1004
    const-string v1, "access"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    const-string v1, "os_api"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1008
    const-string v1, "device_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1009
    const-string v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    const-string v1, "device_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    const-string v1, "device_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1012
    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1013
    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    const-string v1, "display_density"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1015
    const-string v1, "density_dpi"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1016
    const-string v1, "mc"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    const-string v1, "aid"

    const-string v2, "1371"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1019
    const-string v1, "rom"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1020
    const-string v1, "cpu_abi"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1021
    const-string v1, "build_serial"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    const-string v1, "ut"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1023
    const-string v1, "uid"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_123} :catch_124

    .line 1025
    goto :goto_125

    .line 1024
    :catch_124
    move-exception v1

    .line 1026
    :goto_125
    return-object v0
.end method

.method private static g()Z
    .registers 3

    .line 1035
    nop

    .line 1037
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1e

    if-eqz v1, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    .line 1040
    :cond_1d
    goto :goto_1f

    .line 1038
    :catch_1e
    move-exception v1

    .line 1041
    :goto_1f
    return v0
.end method

.method private static h()Ljava/lang/String;
    .registers 3

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1061
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 1062
    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1063
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 1065
    :cond_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->n()Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1067
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    :cond_3b
    :goto_3b
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    .line 1075
    goto :goto_42

    .line 1074
    :catchall_41
    move-exception v1

    .line 1076
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i()I
    .registers 2

    .line 1108
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    .line 1110
    const/16 v1, -0xc

    if-ge v0, v1, :cond_11

    .line 1111
    move v0, v1

    .line 1112
    :cond_11
    const/16 v1, 0xc

    if-le v0, v1, :cond_16

    .line 1113
    move v0, v1

    .line 1114
    :cond_16
    return v0
.end method

.method private j()Ljava/lang/String;
    .registers 2

    .line 1118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1119
    const-string v0, "tv"

    return-object v0

    .line 1120
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1121
    const-string v0, "android_pad"

    return-object v0

    .line 1123
    :cond_16
    const-string v0, "android"

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    .line 1128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 1129
    if-nez v0, :cond_a

    .line 1130
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 1132
    :cond_a
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation

    .line 588
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 589
    return-object v2

    .line 592
    :cond_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_ff

    .line 594
    :try_start_e
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/c/a;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/c/a;)V

    .line 595
    const-string v3, "header"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 597
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/c/a;

    .line 598
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 599
    goto :goto_29

    .line 600
    :cond_3b
    const-string p1, "event"

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string p1, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_49} :catch_4a
    .catchall {:try_start_e .. :try_end_49} :catchall_ff

    .line 603
    goto :goto_4b

    .line 602
    :catch_4a
    move-exception p1

    .line 605
    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 609
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 612
    :cond_61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v3

    if-eqz v3, :cond_83

    const-string v3, "adevent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adevent is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_83
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 617
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v1

    .line 618
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/r$3;

    const/4 v5, 0x1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h()Ljava/lang/String;

    move-result-object v6

    move-object v3, v10

    move-object v4, p0

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/r$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;Ljava/util/Map;)V

    .line 623
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/r$3;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v3

    .line 624
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 625
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V
    :try_end_bc
    .catchall {:try_start_4b .. :try_end_bc} :catchall_ff

    .line 627
    nop

    .line 629
    :try_start_bd
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v2
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c2

    .line 631
    goto :goto_c3

    .line 630
    :catchall_c2
    move-exception v1

    .line 633
    :goto_c3
    nop

    .line 634
    const/4 v1, 0x1

    if-eqz v2, :cond_d3

    :try_start_c7
    iget-object v3, v2, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->b(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_d3

    move v3, v1

    goto :goto_d4

    :cond_d3
    move v3, v0

    .line 635
    :goto_d4
    nop

    .line 636
    const-string v4, "error unknown"

    .line 637
    if-eqz v2, :cond_dd

    .line 638
    iget-wide v5, v2, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v5, v5

    goto :goto_de

    .line 637
    :cond_dd
    move v5, v0

    .line 640
    :goto_de
    if-nez v3, :cond_e7

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_e7

    .line 641
    const-string v4, "server say not success"

    .line 642
    goto :goto_f6

    .line 644
    :cond_e7
    if-eqz v2, :cond_f5

    iget-object v1, v2, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v1, :cond_f5

    .line 645
    iget-object v1, v2, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v1, v0

    goto :goto_f6

    .line 648
    :cond_f5
    move v1, v0

    :goto_f6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->d(Ljava/lang/String;)V

    .line 649
    new-instance p1, Lcom/bytedance/sdk/openadsdk/c/h;

    invoke-direct {p1, v3, v5, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V
    :try_end_fe
    .catchall {:try_start_c7 .. :try_end_fe} :catchall_ff

    return-object p1

    .line 650
    :catchall_ff
    move-exception p1

    .line 651
    const-string v1, "NetApiImpl"

    const-string v2, "uploadEvent error"

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    new-instance p1, Lcom/bytedance/sdk/openadsdk/c/h;

    const/16 v1, 0x1fd

    const-string v2, "service_busy"

    invoke-direct {p1, v0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 9

    .line 1605
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1606
    return-object v1

    .line 1608
    :cond_8
    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_12

    goto/16 :goto_a4

    .line 1611
    :cond_12
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 1612
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1613
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const-string v2, "/api/ad/union/sdk/stats/batch/"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1614
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v2, 0x2710

    .line 1615
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    .line 1614
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 1616
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 1617
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 1619
    nop

    .line 1620
    nop

    .line 1621
    const-string p1, "error unknown"

    .line 1622
    nop

    .line 1624
    const/4 v1, 0x0

    :try_start_4f
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    .line 1625
    if-nez v0, :cond_5b

    .line 1626
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/h;

    invoke-direct {v0, v1, v1, p1, v1}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V

    return-object v0

    .line 1628
    :cond_5b
    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_85

    .line 1629
    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1630
    iget-object v4, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "data"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_76
    .catchall {:try_start_4f .. :try_end_76} :catchall_99

    .line 1631
    const/16 v4, 0x4e20

    if-ne v2, v4, :cond_7c

    move v4, v3

    goto :goto_7d

    :cond_7c
    move v4, v1

    .line 1633
    :goto_7d
    const v5, 0xea65

    if-ne v2, v5, :cond_83

    .line 1635
    goto :goto_87

    .line 1633
    :cond_83
    move v3, v1

    goto :goto_87

    .line 1628
    :cond_85
    move v3, v1

    move v4, v3

    .line 1638
    :goto_87
    :try_start_87
    iget-wide v1, v0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v1, v1

    .line 1639
    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_94

    .line 1640
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_95

    .line 1643
    :cond_94
    goto :goto_9e

    .line 1642
    :catchall_95
    move-exception v0

    move v0, v1

    move v1, v4

    goto :goto_9c

    :catchall_99
    move-exception v0

    move v0, v1

    move v3, v0

    :goto_9c
    move v4, v1

    move v1, v0

    .line 1644
    :goto_9e
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/h;

    invoke-direct {v0, v4, v1, p1, v3}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V

    return-object v0

    .line 1609
    :cond_a4
    :goto_a4
    return-object v1
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/d/q;
    .registers 7

    .line 1677
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1678
    return-object v1

    .line 1680
    :cond_8
    nop

    .line 1681
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 1682
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->z()Ljava/lang/String;

    move-result-object v2

    .line 1683
    new-instance v3, Lcom/bytedance/sdk/adnet/b/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v0}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1684
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v2

    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/adnet/b/j;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v2

    .line 1685
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 1686
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 1688
    nop

    .line 1690
    :try_start_3f
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_44

    .line 1692
    goto :goto_46

    .line 1691
    :catch_44
    move-exception v0

    move-object v0, v1

    .line 1693
    :goto_46
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1694
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v1

    .line 1697
    :cond_56
    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;
    .registers 4

    .line 1481
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZI)Ljava/lang/String;
    .registers 10

    .line 1405
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1406
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    .line 1408
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-ne v4, v2, :cond_15

    .line 1409
    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    goto :goto_2d

    .line 1410
    :cond_15
    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdType()I

    move-result v4

    if-ne v2, v4, :cond_20

    .line 1411
    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->c:I

    goto :goto_2d

    .line 1412
    :cond_20
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdType()I

    move-result v4

    if-ne v2, v4, :cond_2d

    .line 1413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->f:J

    .line 1417
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_3e

    .line 1418
    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 1421
    :cond_3e
    if-eqz p2, :cond_49

    .line 1422
    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 1424
    if-eq p3, v3, :cond_46

    if-ne p3, v4, :cond_49

    .line 1425
    :cond_46
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setNativeAdType(I)V

    .line 1429
    :cond_49
    const/4 p2, 0x5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v2

    if-eq p2, v2, :cond_5c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p2

    if-eq v3, p2, :cond_5c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p2

    if-ne v4, p2, :cond_5e

    .line 1430
    :cond_5c
    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 1433
    :cond_5e
    const/4 p2, 0x0

    .line 1434
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdType()I

    move-result v2

    if-lez v2, :cond_6a

    .line 1435
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdType()I

    move-result p3

    goto :goto_6e

    .line 1436
    :cond_6a
    if-lez p3, :cond_6d

    .line 1437
    goto :goto_6e

    .line 1436
    :cond_6d
    move p3, p2

    .line 1440
    :goto_6e
    invoke-direct {p0, p1, v1, p3, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;IZ)Lorg/json/JSONObject;

    move-result-object p1

    .line 1441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestBody="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "token"

    invoke-static {p3, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 1445
    :try_start_8f
    const-string v1, "ss-sign"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1446
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1447
    const-string v1, "header"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1448
    const-string p2, "bid_request"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b9} :catch_ba

    .line 1451
    goto :goto_be

    .line 1449
    :catch_ba
    move-exception p1

    .line 1450
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1453
    :goto_be
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "message="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->k()Ljava/lang/String;

    move-result-object p1

    .line 1456
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1457
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1458
    nop

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1461
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 1463
    :try_start_ff
    const-string v0, "message"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1464
    const-string v0, "cypher"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Lorg/json/JSONException; {:try_start_ff .. :try_end_123} :catch_124

    .line 1468
    goto :goto_128

    .line 1466
    :catch_124
    move-exception p2

    .line 1467
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1470
    :goto_128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "0000000002"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V
    .registers 19

    .line 270
    move-object v8, p0

    move-object v4, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move-object/from16 v3, p4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_18

    .line 271
    if-eqz v3, :cond_17

    .line 272
    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(ILjava/lang/String;)V

    .line 274
    :cond_17
    return-void

    .line 279
    :cond_18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->c()V

    .line 280
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Lcom/bytedance/sdk/openadsdk/core/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->b()V

    .line 281
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b()V

    .line 282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->c()V

    .line 286
    nop

    .line 288
    if-nez v3, :cond_39

    .line 290
    return-void

    .line 294
    :cond_39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 295
    const/4 v0, -0x8

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(ILjava/lang/String;)V

    .line 296
    return-void

    .line 300
    :cond_4c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAd bidAdm\u6709\u6548\uff0c\u5219\u76f4\u63a5\u89e3\u6790\u8fd4\u56de\u5e7f\u544a\uff1aBidAdm->MD5->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bidding"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :try_start_76
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 306
    if-nez v0, :cond_89

    .line 307
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 308
    return-void

    .line 310
    :cond_89
    invoke-static {v0, p1, v6}, Lcom/bytedance/sdk/openadsdk/core/r$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/r$a;

    move-result-object v1

    .line 311
    iget-object v2, v8, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->i:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->d:I

    const/16 v4, 0x4e20

    if-eq v2, v4, :cond_a2

    .line 313
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->d:I

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->e:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(ILjava/lang/String;)V

    .line 314
    return-void

    .line 316
    :cond_a2
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-nez v2, :cond_aa

    .line 317
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 318
    return-void

    .line 320
    :cond_aa
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c(Ljava/lang/String;)V

    .line 321
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    :try_end_b8
    .catchall {:try_start_76 .. :try_end_b8} :catchall_b9

    .line 325
    goto :goto_c4

    .line 322
    :catchall_b9
    move-exception v0

    .line 323
    const-string v1, "NetApiImpl"

    const-string v2, "get ad error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 326
    :goto_c4
    return-void

    .line 329
    :cond_c5
    const/4 v10, 0x0

    invoke-direct {p0, p1, v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;IZ)Lorg/json/JSONObject;

    move-result-object v7

    .line 330
    if-nez v7, :cond_d6

    .line 331
    const/16 v0, -0x9

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$b;->a(ILjava/lang/String;)V

    .line 332
    return-void

    .line 335
    :cond_d6
    const-string v1, "/api/ad/union/sdk/get_ads/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :try_start_dc
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExtraSmartLookParam()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/r;->b(Ljava/lang/String;)Z

    move-result v2

    .line 340
    if-eqz v2, :cond_f4

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 341
    const/4 v0, 0x4

    if-ne v9, v0, :cond_f2

    .line 342
    return-void

    .line 344
    :cond_f2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;
    :try_end_f4
    .catchall {:try_start_dc .. :try_end_f4} :catchall_f5

    .line 348
    :cond_f4
    goto :goto_fa

    .line 346
    :catchall_f5
    move-exception v0

    .line 347
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_fa
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/r$2;

    const/4 v12, 0x1

    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/r$1;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/r$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$b;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/m;)V

    move-object v1, v11

    move v3, v12

    move-object v4, v0

    move-object v5, v7

    move-object v6, v13

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/r$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;Lorg/json/JSONObject;)V

    .line 493
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/bytedance/sdk/openadsdk/core/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/r$2;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 494
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extra_time_start"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, v8, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 497
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 499
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 682
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 683
    return-void

    .line 686
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    .line 687
    if-nez p1, :cond_e

    .line 688
    return-void

    .line 690
    :cond_e
    new-instance p2, Lcom/bytedance/sdk/adnet/b/h;

    const/4 v0, 0x1

    const-string v1, "/api/ad/union/dislike_event/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/bytedance/sdk/adnet/b/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 691
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/b/h;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 692
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 693
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q$a;)V
    .registers 11

    .line 1532
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1533
    if-eqz p3, :cond_11

    .line 1534
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    move-object v1, p3

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(ZJJ)V

    .line 1536
    :cond_11
    return-void

    .line 1538
    :cond_12
    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    if-nez p3, :cond_19

    goto :goto_4e

    .line 1541
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1543
    new-instance p2, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v0, 0x1

    const-string v1, "/api/ad/union/sdk/material/check/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r$6;

    invoke-direct {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/r$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$a;)V

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1569
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 p3, 0x320

    .line 1570
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    .line 1569
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 1571
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 1572
    return-void

    .line 1539
    :cond_4e
    :goto_4e
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/q$c;)V
    .registers 7

    .line 1234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1235
    if-eqz p2, :cond_f

    .line 1236
    const/16 p1, 0x3e8

    const-string v0, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/q$c;->a(ILjava/lang/String;)V

    .line 1238
    :cond_f
    return-void

    .line 1240
    :cond_10
    if-eqz p1, :cond_46

    if-nez p2, :cond_15

    goto :goto_46

    .line 1249
    :cond_15
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1251
    new-instance v0, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v1, 0x1

    const-string v2, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/r$5;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/r$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;Lcom/bytedance/sdk/openadsdk/core/q$c;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 1302
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 1303
    return-void

    .line 1241
    :cond_46
    :goto_46
    return-void
.end method

.method public a(Lorg/json/JSONObject;I)Z
    .registers 9

    .line 1650
    const-string v0, "success"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1651
    return v2

    .line 1653
    :cond_a
    const/4 v1, 0x1

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_14

    goto :goto_5f

    .line 1656
    :cond_14
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v3

    .line 1657
    new-instance v4, Lcom/bytedance/sdk/adnet/b/f;

    const-string v5, "https://i.snssdk.com/inspect/aegis/client/page/"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, p1, v3}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1658
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v1, 0x2710

    .line 1659
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    .line 1660
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    .line 1658
    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Landroid/content/Context;

    .line 1661
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 1663
    nop

    .line 1665
    :try_start_43
    invoke-virtual {v3}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    .line 1666
    if-eqz p1, :cond_5c

    iget-object p2, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz p2, :cond_5c

    .line 1667
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "status"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1668
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_5d

    move v2, p1

    .line 1671
    :cond_5c
    goto :goto_5e

    .line 1670
    :catchall_5d
    move-exception p1

    .line 1672
    :goto_5e
    return v2

    .line 1654
    :cond_5f
    :goto_5f
    return v1
.end method
