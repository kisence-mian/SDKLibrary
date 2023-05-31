.class public final Lcom/mintegral/msdk/a/b;
.super Ljava/lang/Object;
.source "OmsdkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 117
    .line 119
    :try_start_1
    invoke-static {p0}, Lcom/mintegral/msdk/a/b;->c(Landroid/content/Context;)V

    .line 120
    const-string v0, "Mintegral"

    const-string v2, "MAL_10.2.42"

    invoke-static {v0, v2}, Lcom/iab/omid/library/mintegral/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/Partner;

    move-result-object v0

    .line 121
    invoke-static {v0, p1, p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/mintegral/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

    move-result-object v0

    .line 122
    sget-object v2, Lcom/iab/omid/library/mintegral/adsession/Owner;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 123
    invoke-static {v2, v3, v4}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;Z)Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    move-result-object v2

    .line 124
    invoke-static {v2, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1b} :catch_24

    move-result-object v0

    .line 125
    :try_start_1c
    const-string v1, "OMSDK"

    const-string v2, "adSession create success"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_23} :catch_32

    .line 129
    :goto_23
    return-object v0

    .line 126
    :catch_24
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 127
    :goto_28
    const-string v2, "OMSDK"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 126
    :catch_32
    move-exception v1

    goto :goto_28
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 133
    sget-object v1, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 134
    invoke-static {}, Lcom/mintegral/msdk/a/b;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    .line 136
    :cond_f
    sget-object v1, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 137
    :cond_1d
    const-string v1, "OMSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createNativeAdSession: TextUtils.isEmpty(omid) = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TextUtils.isEmpty(MIntegralConstans.OMID_JS_SERVICE_CONTENT) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    const-string v2, "failed, OMID_JS_SERVICE_CONTENT null or omid null"

    invoke-virtual {v1, p3, p4, p5, v2}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_4f
    return-object v0

    .line 143
    :cond_50
    :try_start_50
    invoke-static {p0}, Lcom/mintegral/msdk/a/b;->c(Landroid/content/Context;)V

    .line 144
    const-string v1, "Mintegral"

    const-string v2, "MAL_10.2.42"

    invoke-static {v1, v2}, Lcom/iab/omid/library/mintegral/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/Partner;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/iab/omid/library/mintegral/adsession/Owner;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    if-eqz p1, :cond_a2

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/Owner;->NONE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    :goto_61
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;Z)Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    move-result-object v1

    .line 146
    invoke-static {p2, p0, p3, p4, p5}, Lcom/mintegral/msdk/a/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 147
    sget-object v4, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    invoke-static {v2, v4, v3, p3}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/mintegral/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    .line 149
    const-string v1, "OMSDK"

    const-string v2, "adSession create success"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_7b} :catch_a5

    goto :goto_4f

    .line 150
    :catch_7c
    move-exception v1

    .line 151
    const-string v2, "OMSDK"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v2, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed, exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p3, p4, p5, v1}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 145
    :cond_a2
    :try_start_a2
    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/Owner;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/Owner;
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_a4} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a4} :catch_a5

    goto :goto_61

    .line 153
    :catch_a5
    move-exception v1

    .line 154
    const-string v2, "OMSDK"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v2, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed, exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p3, p4, p5, v1}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method

.method private static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 187
    const-string v0, ""

    .line 189
    :try_start_2
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->j:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "/omsdk/om_js_content.txt"

    .line 191
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_14

    move-result-object v0

    .line 196
    :goto_13
    return-object v0

    .line 193
    :catch_14
    move-exception v1

    .line 194
    const-string v2, "OMSDK"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 84
    if-eqz p0, :cond_7b

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7b

    .line 86
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    const-string v4, "vkey"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    new-instance v5, Ljava/net/URL;

    const-string v6, "et_url"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v6, "verification_p"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 93
    invoke-static {v5}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;

    move-result-object v0

    .line 100
    :goto_45
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 95
    :cond_4c
    invoke-static {v4, v5}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/lang/String;Ljava/net/URL;)Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;

    move-result-object v0

    goto :goto_45

    .line 98
    :cond_51
    invoke-static {v4, v5, v0}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_54} :catch_56
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_54} :catch_7c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_54} :catch_a2

    move-result-object v0

    goto :goto_45

    .line 103
    :catch_56
    move-exception v0

    .line 104
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed, exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_7b
    :goto_7b
    return-object v2

    .line 106
    :catch_7c
    move-exception v0

    .line 107
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed, exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 109
    :catch_a2
    move-exception v0

    .line 110
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed, exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 45
    sget-object v0, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "fetch OM failed, OMID_JS_SERVICE_URL null"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1c
    :goto_1c
    return-void

    .line 50
    :cond_1d
    if-eqz p0, :cond_1c

    .line 54
    :try_start_1f
    new-instance v0, Lcom/mintegral/msdk/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/a/a;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v1, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    new-instance v2, Lcom/mintegral/msdk/a/b$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/a/b$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_33

    goto :goto_1c

    .line 69
    :catch_33
    move-exception v0

    .line 70
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static b(Landroid/content/Context;)F
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/4 v1, -0x1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 162
    if-eqz v0, :cond_22

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 163
    :goto_14
    if-eqz v0, :cond_24

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 164
    :goto_1a
    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_22
    move v2, v1

    .line 162
    goto :goto_14

    :cond_24
    move v0, v1

    .line 163
    goto :goto_1a
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/iab/omid/library/mintegral/Omid;->isActive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 76
    invoke-static {}, Lcom/iab/omid/library/mintegral/Omid;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iab/omid/library/mintegral/Omid;->activateWithOmidApiVersion(Ljava/lang/String;Landroid/content/Context;)Z

    .line 78
    :cond_11
    return-void
.end method
