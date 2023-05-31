.class public Lcom/bytedance/sdk/openadsdk/core/q;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/q$b;,
        Lcom/bytedance/sdk/openadsdk/core/q$c;,
        Lcom/bytedance/sdk/openadsdk/core/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/p",
        "<",
        "Lcom/bytedance/sdk/openadsdk/c/a;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 933
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/q;->f:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->b:Z

    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->c:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private a(I)I
    .registers 3

    .prologue
    .line 427
    const/16 v0, 0x2710

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/q;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 835
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 836
    if-nez v0, :cond_d

    const-string v0, ""

    .line 838
    :goto_c
    return-object v0

    .line 836
    :cond_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_c

    .line 837
    :catch_12
    move-exception v0

    .line 838
    const-string v0, ""

    goto :goto_c
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/l;)Lorg/json/JSONObject;
    .registers 10

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 712
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 714
    :try_start_7
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    const-string v2, "adtype"

    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 717
    if-eqz p3, :cond_8f

    .line 718
    const-string v2, "render_method"

    iget v4, p3, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 722
    :goto_1e
    const-string v2, "ptpl_ids"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/h/l;->h(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v2, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 724
    const-string v2, "accepted_size"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 725
    const-string v2, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 726
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v2

    if-gtz v2, :cond_5b

    const/16 v2, 0x9

    if-eq p2, v2, :cond_5b

    const/4 v2, 0x5

    if-ne p2, v2, :cond_61

    .line 727
    :cond_5b
    const-string v2, "is_origin_ad"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 729
    :cond_61
    if-eqz p3, :cond_6e

    iget-object v2, p3, Lcom/bytedance/sdk/openadsdk/core/d/l;->g:Lorg/json/JSONObject;

    if-eqz v2, :cond_6e

    .line 730
    const-string v2, "session_params"

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/core/d/l;->g:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    :cond_6e
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v2

    .line 733
    if-ge v2, v1, :cond_75

    move v2, v1

    .line 736
    :cond_75
    if-le v2, v0, :cond_98

    .line 740
    :goto_77
    const/4 v2, 0x7

    if-eq p2, v2, :cond_7e

    const/16 v2, 0x8

    if-ne p2, v2, :cond_7f

    :cond_7e
    move v0, v1

    .line 744
    :cond_7f
    if-eqz p3, :cond_89

    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lorg/json/JSONArray;

    if-eqz v1, :cond_89

    .line 745
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v0

    .line 747
    :cond_89
    const-string v1, "ad_count"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 750
    :goto_8e
    return-object v3

    .line 720
    :cond_8f
    const-string v2, "render_method"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_95} :catch_96

    goto :goto_1e

    .line 748
    :catch_96
    move-exception v0

    goto :goto_8e

    :cond_98
    move v0, v2

    goto :goto_77
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;I)Lorg/json/JSONObject;
    .registers 12

    .prologue
    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 137
    if-eqz p2, :cond_14

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_140

    :cond_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 138
    :goto_19
    const/4 v0, 0x7

    if-ne p3, v0, :cond_145

    .line 139
    if-eqz p2, :cond_29

    iget v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    if-lez v0, :cond_29

    .line 140
    const-string v0, "req_type"

    iget v4, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_158

    .line 149
    :cond_29
    :goto_29
    :try_start_29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->h()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->i()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_59

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 152
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 153
    const-string v6, "version"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v0, "param"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v0, "abtest"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_59} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_59} :catch_158

    .line 160
    :cond_59
    :goto_59
    :try_start_59
    const-string v0, "request_id"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v0, "ad_sdk_version"

    const-string v4, "2.9.5.3"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v0, "source_type"

    const-string v4, "app"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v0, "app"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_a1

    .line 168
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->F()Z

    move-result v4

    if-nez v4, :cond_92

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b()Z

    move-result v4

    if-nez v4, :cond_92

    .line 171
    const-string v4, "free_space"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    :cond_92
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v4

    if-lez v4, :cond_a1

    .line 174
    const-string v4, "orientation"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    :cond_a1
    const-string v4, "device"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v0, "user"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->d()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v0, "ua"

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v0, "ip"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 182
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/l;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    const-string v4, "adslots"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-direct {p0, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 186
    const-string v0, "ts"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    const-string v0, ""

    .line 188
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f9

    if-eqz v1, :cond_f9

    .line 189
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_f9
    const-string v1, "req_sign"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->k()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    const/4 v4, 0x2

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 198
    const-string v1, "message"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v0, "cypher"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    :goto_138
    const-string v0, "ad_sdk_version"

    const-string v1, "2.9.5.3"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :goto_13f
    return-object v2

    .line 137
    :cond_140
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_19

    .line 142
    :cond_145
    const/16 v0, 0x8

    if-ne p3, v0, :cond_29

    .line 143
    if-eqz p2, :cond_29

    iget v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    if-lez v0, :cond_29

    .line 144
    const-string v0, "req_type"

    iget v4, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_29

    .line 205
    :catch_158
    move-exception v0

    goto :goto_13f

    .line 201
    :cond_15a
    const-string v0, "message"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v0, "cypher"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_169} :catch_158

    goto :goto_138

    .line 157
    :catch_16a
    move-exception v0

    goto/16 :goto_59
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/q;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/q;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .prologue
    .line 1224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1226
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&ext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1234
    const-string v4, "id"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1236
    const-string v1, "sign"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1237
    const-string v1, "ext"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_51} :catch_52

    .line 1240
    :goto_51
    return-object v0

    .line 1238
    :catch_52
    move-exception v1

    goto :goto_51
.end method

.method private a(JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V
    .registers 15

    .prologue
    .line 438
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 482
    :goto_6
    return-void

    .line 443
    :cond_7
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p6}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object p7

    .line 444
    :cond_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/a/c;-><init>()V

    .line 445
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/openadsdk/f/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/a/c;

    .line 446
    invoke-virtual {v0, p6}, Lcom/bytedance/sdk/openadsdk/f/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/a/c;

    .line 447
    invoke-virtual {v0, p7}, Lcom/bytedance/sdk/openadsdk/f/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/a/c;

    .line 450
    const/4 v3, 0x0

    .line 451
    :try_start_29
    const-string v1, ""

    .line 452
    const-string v2, ""

    .line 453
    if-eqz p5, :cond_c9

    iget-object v4, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v4, :cond_c9

    iget-object v4, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 454
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c9

    iget-object v4, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 455
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c9

    .line 456
    iget-object v1, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 457
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_5b} :catch_bc

    move-result v4

    if-nez v4, :cond_c5

    .line 460
    :try_start_5e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 461
    const-string v5, "req_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_68} :catch_b1

    move-result-object v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 467
    :goto_6c
    :try_start_6c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7e

    if-eqz p5, :cond_7e

    iget-object v4, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v4, :cond_7e

    .line 468
    iget-object v1, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_7e
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/a/c;

    if-eqz v2, :cond_b6

    .line 472
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    :goto_8a
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/a/c;

    .line 473
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/f/a/c;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/a/c;

    .line 474
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/f/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/a/c;

    .line 475
    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a/c;->a(J)Lcom/bytedance/sdk/openadsdk/f/a/c;

    move-result-object v1

    if-eqz p5, :cond_b9

    iget v2, p5, Lcom/bytedance/sdk/openadsdk/core/q$a;->a:I

    int-to-long v2, v2

    .line 476
    :goto_a5
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a/c;->b(J)Lcom/bytedance/sdk/openadsdk/f/a/c;
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_a8} :catch_bc

    .line 481
    :goto_a8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->e(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    goto/16 :goto_6

    .line 462
    :catch_b1
    move-exception v4

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6c

    .line 472
    :cond_b6
    :try_start_b6
    const-string v2, ""
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b8} :catch_bc

    goto :goto_8a

    .line 475
    :cond_b9
    const-wide/16 v2, 0x0

    goto :goto_a5

    .line 477
    :catch_bc
    move-exception v1

    .line 478
    const-string v2, "NetApiImpl"

    const-string v3, "uploadAdTypeTimeOutEvent throws exception "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    :cond_c5
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6c

    :cond_c9
    move-object v6, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_6c
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/a;)V
    .registers 8

    .prologue
    .line 769
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    .line 778
    :cond_6
    :goto_6
    return-void

    .line 772
    :cond_7
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    const-string v1, "log_extra"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 774
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Ljava/lang/String;)I

    move-result v2

    .line 776
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_21

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->d:J

    :cond_21
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->d:J

    .line 777
    if-nez v2, :cond_2a

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->e:I

    :goto_27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->e:I

    goto :goto_6

    :cond_2a
    move v0, v2

    goto :goto_27
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/p$b;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 624
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(ILjava/lang/String;)V

    .line 625
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/p$c;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 628
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(ILjava/lang/String;)V

    .line 629
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/q;->a(JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;)V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/p$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$c;)V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/p$c;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 5

    .prologue
    .line 217
    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lorg/json/JSONArray;

    if-nez v0, :cond_7

    .line 224
    :cond_6
    :goto_6
    return-void

    .line 221
    :cond_7
    :try_start_7
    const-string v0, "source_temai_product_ids"

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 222
    :catch_f
    move-exception v0

    goto :goto_6
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .registers 8

    .prologue
    .line 755
    if-lez p3, :cond_1e

    if-lez p4, :cond_1e

    .line 756
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 757
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 759
    :try_start_e
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string v2, "height"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 761
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 762
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    .line 766
    :cond_1e
    :goto_1e
    return-void

    .line 763
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 671
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 243
    :cond_7
    :goto_7
    return v0

    .line 236
    :cond_8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 237
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 239
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_7

    .line 243
    :cond_22
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 869
    sparse-switch p0, :sswitch_data_18

    .line 889
    const-string v0, "mdpi"

    .line 892
    :goto_5
    return-object v0

    .line 871
    :sswitch_6
    const-string v0, "ldpi"

    goto :goto_5

    .line 874
    :sswitch_9
    const-string v0, "hdpi"

    goto :goto_5

    .line 877
    :sswitch_c
    const-string v0, "mdpi"

    goto :goto_5

    .line 880
    :sswitch_f
    const-string v0, "xhdpi"

    goto :goto_5

    .line 883
    :sswitch_12
    const-string v0, "xxhdpi"

    goto :goto_5

    .line 886
    :sswitch_15
    const-string v0, "xxxhdpi"

    goto :goto_5

    .line 869
    :sswitch_data_18
    .sparse-switch
        0x78 -> :sswitch_6
        0xa0 -> :sswitch_c
        0xf0 -> :sswitch_9
        0x140 -> :sswitch_f
        0x1e0 -> :sswitch_12
        0x280 -> :sswitch_15
    .end sparse-switch
.end method

.method private b(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 591
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 592
    :cond_8
    const/4 v0, 0x0

    .line 598
    :goto_9
    return-object v0

    .line 594
    :cond_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 595
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 596
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    :cond_27
    move-object v0, v1

    .line 598
    goto :goto_9
.end method

.method private b()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 637
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 639
    :try_start_5
    const-string v1, "appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string v1, "name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->c(Lorg/json/JSONObject;)V

    .line 642
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->d(Lorg/json/JSONObject;)V

    .line 643
    const-string v1, "is_paid_app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 644
    const-string v1, "apk_sign"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_45} :catch_46

    .line 647
    :goto_45
    return-object v0

    .line 645
    :catch_46
    move-exception v1

    goto :goto_45
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 9
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    .line 571
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 572
    const-string v3, "action"

    const-string v4, "dislike"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 574
    const-string v3, "ad_sdk_version"

    const-string v4, "2.9.5.3"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    if-eqz v1, :cond_39

    .line 576
    const-string v3, "latitude"

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 577
    const-string v3, "longitude"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 579
    :cond_39
    const-string v1, "extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v1, "filter_words"

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/q;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 583
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 584
    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_58} :catch_59

    .line 587
    :goto_58
    return-object v0

    .line 585
    :catch_59
    move-exception v1

    goto :goto_58
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b(Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 613
    if-eqz p1, :cond_10

    .line 615
    :try_start_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_f

    move-result v0

    .line 619
    :goto_e
    return v0

    .line 616
    :catch_f
    move-exception v0

    .line 619
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 651
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 605
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/q;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 607
    const-string v1, "Content-Encoding"

    const-string v2, "union_sdk_encode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_19
    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 682
    :try_start_0
    const-string v0, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v0, "version_code"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v0, "version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 687
    :goto_1b
    return-void

    .line 685
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 924
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    if-nez p1, :cond_16

    .line 926
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-virtual {v0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 929
    :cond_16
    return-object v0
.end method

.method private d()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 655
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 657
    :try_start_5
    const-string v1, "keywords"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_1f

    .line 660
    const-string v2, "app_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    :cond_1f
    const-string v1, "data"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    .line 665
    :goto_2c
    return-object v0

    .line 663
    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    .line 696
    if-eqz v0, :cond_22

    .line 698
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 699
    const-string v2, "latitude"

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 700
    const-string v2, "longitude"

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 701
    const-string v0, "geo"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    .line 705
    :cond_22
    :goto_22
    return-void

    .line 702
    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x11

    .line 936
    .line 937
    if-nez p1, :cond_6

    .line 966
    :goto_5
    return-object p1

    .line 941
    :cond_6
    :try_start_6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/q;->f:Z

    if-eqz v0, :cond_5f

    .line 942
    const-string v0, "cypher"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 943
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    if-ne v2, v3, :cond_63

    .line 947
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    :goto_21
    const/4 v3, 0x2

    if-ne v2, v3, :cond_61

    .line 950
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_61

    .line 951
    const/4 v0, 0x1

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 955
    :goto_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_49} :catch_5a

    move-result v0

    if-nez v0, :cond_5f

    .line 957
    :try_start_4c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_51} :catch_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_5a

    .line 966
    :goto_51
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/q;->f:Z

    if-eqz v1, :cond_5d

    :goto_55
    move-object p1, v0

    goto :goto_5

    .line 958
    :catch_57
    move-exception v0

    move-object v0, p1

    goto :goto_51

    .line 963
    :catch_5a
    move-exception v0

    move-object v0, p1

    goto :goto_51

    :cond_5d
    move-object v0, p1

    .line 966
    goto :goto_55

    :cond_5f
    move-object v0, p1

    goto :goto_51

    :cond_61
    move-object v1, v0

    goto :goto_46

    :cond_63
    move-object v0, v1

    goto :goto_21
.end method

.method private f()Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 782
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 784
    :try_start_5
    const-string v0, "ua"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v0, "udid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v0, "openudid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string v0, "oaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v0, "ad_sdk_version"

    const-string v2, "2.9.5.3"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    const-string v0, "sim_op"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    const-string v2, "root"

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->b:Z

    if-eqz v0, :cond_120

    const/4 v0, 0x1

    :goto_44
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 791
    const-string v0, "timezone"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q;->i()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 792
    const-string v0, "access"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v0, "os"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v0, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v0, "os_api"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 796
    const-string v0, "device_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v0, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v0, "device_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v0, "device_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string v0, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string v0, "display_density"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->f(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/q;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v0, "density_dpi"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->f(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 804
    const-string v0, "mc"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v0, "device_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    const-string v0, "aid"

    const-string v2, "1371"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 807
    const-string v0, "rom"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    const-string v0, "cpu_abi"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    const-string v0, "build_serial"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/j;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string v0, "ut"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 811
    const-string v0, "uid"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11f} :catch_123

    .line 814
    :goto_11f
    return-object v1

    .line 790
    :cond_120
    const/4 v0, 0x0

    goto/16 :goto_44

    .line 812
    :catch_123
    move-exception v0

    goto :goto_11f
.end method

.method private static g()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 825
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1d

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    .line 829
    :cond_1c
    :goto_1c
    return v0

    .line 826
    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method private static h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 849
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :cond_10
    :goto_10
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_26

    .line 864
    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 850
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 851
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 862
    :catch_26
    move-exception v1

    goto :goto_15

    .line 853
    :cond_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->n()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 855
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :cond_37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_46} :catch_26

    goto :goto_10
.end method

.method private static i()I
    .registers 4

    .prologue
    const/16 v0, 0xc

    const/16 v1, -0xc

    .line 896
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 897
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v3, 0x36ee80

    div-int/2addr v2, v3

    .line 898
    if-ge v2, v1, :cond_17

    .line 900
    :goto_12
    if-le v1, v0, :cond_15

    .line 902
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    move v1, v2

    goto :goto_12
.end method

.method private j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 907
    const-string v0, "tv"

    .line 911
    :goto_a
    return-object v0

    .line 908
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 909
    const-string v0, "android_pad"

    goto :goto_a

    .line 911
    :cond_16
    const-string v0, "android"

    goto :goto_a
.end method

.method private k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 916
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 917
    if-nez v0, :cond_a

    .line 918
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 920
    :cond_a
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 488
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v8

    .line 547
    :goto_a
    return-object v0

    .line 492
    :cond_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 494
    const/4 v0, 0x0

    :try_start_11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/a;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/c/a;)V

    .line 495
    const-string v0, "header"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 497
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/a;

    .line 498
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_3d} :catch_3e

    goto :goto_2c

    .line 502
    :catch_3e
    move-exception v0

    .line 505
    :goto_3f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 508
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 511
    :cond_55
    const-string v0, "adevent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adevent is :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 515
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v5

    .line 516
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q$3;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->g()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/q$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/q;ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;Ljava/util/Map;)V

    .line 521
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v1

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q$3;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    .line 522
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 523
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 527
    :try_start_a4
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a7} :catch_ec

    move-result-object v8

    .line 532
    :goto_a8
    if-eqz v8, :cond_dd

    iget-object v0, v8, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_dd

    move v0, v2

    .line 534
    :goto_b5
    const-string v1, "error unknown"

    .line 535
    if-eqz v8, :cond_ee

    .line 536
    iget-wide v4, v8, Lcom/bytedance/sdk/adnet/core/n;->h:J

    long-to-int v3, v4

    .line 538
    :goto_bc
    if-nez v0, :cond_df

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_df

    .line 539
    const-string v1, "server say not success"

    move v7, v2

    .line 547
    :cond_c5
    :goto_c5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/h;

    invoke-direct {v2, v0, v3, v1, v7}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V

    move-object v0, v2

    goto/16 :goto_a

    .line 500
    :cond_cd
    :try_start_cd
    const-string v0, "event"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v0, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_cd .. :try_end_db} :catch_3e

    goto/16 :goto_3f

    :cond_dd
    move v0, v7

    .line 532
    goto :goto_b5

    .line 542
    :cond_df
    if-eqz v8, :cond_c5

    iget-object v2, v8, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_c5

    .line 543
    iget-object v1, v8, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_c5

    .line 528
    :catch_ec
    move-exception v0

    goto :goto_a8

    :cond_ee
    move v3, v7

    goto :goto_bc
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1318
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1357
    :cond_9
    :goto_9
    return-object v0

    .line 1321
    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1324
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 1325
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1326
    new-instance v4, Lcom/bytedance/sdk/adnet/b/f;

    const-string v5, "/api/ad/union/sdk/stats/batch/"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1, v0}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 1327
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v1

    const/16 v5, 0x2710

    .line 1328
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v1

    .line 1327
    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v1

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    .line 1329
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 1330
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 1332
    const/4 v4, 0x0

    .line 1333
    const/4 v5, 0x0

    .line 1334
    const-string v1, "error unknown"

    .line 1335
    const/4 v6, 0x0

    .line 1337
    :try_start_4b
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v7

    .line 1338
    if-nez v7, :cond_61

    .line 1339
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/h;

    invoke-direct {v0, v4, v5, v1, v6}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_56} :catch_57

    goto :goto_9

    .line 1355
    :catch_57
    move-exception v0

    move v0, v2

    move v3, v2

    .line 1357
    :goto_5a
    new-instance v4, Lcom/bytedance/sdk/openadsdk/c/h;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/h;-><init>(ZILjava/lang/String;Z)V

    move-object v0, v4

    goto :goto_9

    .line 1341
    :cond_61
    :try_start_61
    iget-object v0, v7, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_a4

    .line 1342
    iget-object v0, v7, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1343
    iget-object v0, v7, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "data"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_7b} :catch_57

    move-result-object v0

    .line 1344
    const/16 v1, 0x4e20

    if-ne v4, v1, :cond_9a

    move v1, v3

    .line 1346
    :goto_81
    const v5, 0xea65

    if-ne v4, v5, :cond_a1

    move v8, v3

    move v3, v1

    move v1, v8

    .line 1351
    :goto_89
    :try_start_89
    iget-wide v4, v7, Lcom/bytedance/sdk/adnet/core/n;->h:J

    long-to-int v2, v4

    .line 1352
    iget-object v4, v7, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v4, :cond_96

    .line 1353
    iget-object v4, v7, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v4}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_95} :catch_9c

    move-result-object v0

    :cond_96
    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 1356
    goto :goto_5a

    :cond_9a
    move v1, v2

    .line 1344
    goto :goto_81

    .line 1355
    :catch_9c
    move-exception v4

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_5a

    :cond_a1
    move v3, v1

    move v1, v2

    goto :goto_89

    :cond_a4
    move-object v0, v1

    move v3, v2

    move v1, v2

    goto :goto_89
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/d/o;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1390
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1409
    :cond_8
    :goto_8
    return-object v0

    .line 1394
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v1

    .line 1395
    new-instance v2, Lcom/bytedance/sdk/adnet/b/j;

    const-string v3, "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/package.json"

    invoke-direct {v2, v5, v3, v1}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 1396
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/adnet/b/j;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v2

    .line 1397
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 1398
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 1402
    :try_start_33
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_48

    move-result-object v1

    .line 1405
    :goto_37
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1406
    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    goto :goto_8

    .line 1403
    :catch_48
    move-exception v1

    move-object v1, v0

    goto :goto_37
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    .prologue
    .line 1143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1180
    :cond_6
    :goto_6
    return-void

    .line 1146
    :cond_7
    if-eqz p4, :cond_6

    .line 1150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1152
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1155
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    const-string v2, "rit"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1160
    const-string v2, "req_id"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1161
    const-string v2, "ad_id"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1162
    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1163
    const-string v1, "image"

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_50} :catch_8f

    .line 1168
    :goto_50
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v2, 0x1

    const-string v3, "/union/service/sdk/upload/v2/"

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 1169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 1170
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 1171
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 1175
    :try_start_81
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1176
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_8a} :catch_8c

    goto/16 :goto_6

    .line 1178
    :catch_8c
    move-exception v0

    goto/16 :goto_6

    .line 1165
    :catch_8f
    move-exception v1

    goto :goto_50
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V
    .registers 16

    .prologue
    const/4 v10, 0x0

    const/4 v2, -0x8

    const/16 v1, -0x9

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 250
    if-eqz p4, :cond_13

    .line 251
    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(ILjava/lang/String;)V

    .line 424
    :cond_13
    :goto_13
    return-void

    .line 258
    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->c()V

    .line 259
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a()Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->b()V

    .line 260
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b()V

    .line 266
    if-eqz p4, :cond_13

    .line 272
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 273
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(ILjava/lang/String;)V

    goto :goto_13

    .line 277
    :cond_3e
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;I)Lorg/json/JSONObject;

    move-result-object v8

    .line 278
    if-nez v8, :cond_4c

    .line 279
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(ILjava/lang/String;)V

    goto :goto_13

    .line 287
    :cond_4c
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/q$2;

    const/4 v6, 0x1

    const-string v0, "/api/ad/union/sdk/get_ads/"

    .line 288
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/q$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$b;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/d/l;)V

    move-object v1, v9

    move-object v2, p0

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/q$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/q;ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;Lorg/json/JSONObject;)V

    .line 418
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/openadsdk/core/q$2;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    .line 419
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    const-string v1, "extra_time_start"

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 422
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->e()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto/16 :goto_13
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/util/List;)V
    .registers 8
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 565
    :cond_6
    :goto_6
    return-void

    .line 558
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/q;->b(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_6

    .line 562
    new-instance v1, Lcom/bytedance/sdk/adnet/b/h;

    const/4 v2, 0x1

    const-string v3, "/api/ad/union/dislike_event/"

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 563
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/b/h;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 564
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p$a;)V
    .registers 10

    .prologue
    .line 1245
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1246
    if-eqz p3, :cond_11

    .line 1247
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    move-object v0, p3

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ZJJ)V

    .line 1285
    :cond_11
    :goto_11
    return-void

    .line 1251
    :cond_12
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 1254
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1256
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v2, 0x1

    const-string v3, "/api/ad/union/sdk/material/check/"

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/q$5;

    invoke-direct {v4, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/q$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$a;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 1282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v2, 0x320

    .line 1283
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    .line 1282
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 1284
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_11
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/p$c;)V
    .registers 8

    .prologue
    .line 1022
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1023
    if-eqz p2, :cond_f

    .line 1024
    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(ILjava/lang/String;)V

    .line 1090
    :cond_f
    :goto_f
    return-void

    .line 1028
    :cond_10
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 1037
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1039
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v2, 0x1

    const-string v3, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/q$4;

    invoke-direct {v4, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/q$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$c;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 1088
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 1089
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_f
.end method

.method public a(Lorg/json/JSONObject;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1363
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1385
    :goto_8
    return v1

    .line 1366
    :cond_9
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_13

    :cond_11
    move v1, v0

    .line 1367
    goto :goto_8

    .line 1369
    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v2

    .line 1370
    new-instance v3, Lcom/bytedance/sdk/adnet/b/f;

    const-string v4, "https://i.snssdk.com/inspect/aegis/client/page/"

    invoke-direct {v3, v0, v4, p1, v2}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 1371
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v4, 0x2710

    .line 1372
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    .line 1373
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    .line 1371
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Landroid/content/Context;

    .line 1374
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 1378
    :try_start_3d
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    .line 1379
    if-eqz v0, :cond_5e

    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v2, :cond_5e

    .line 1380
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "status"

    const-string v3, "success"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_58} :catch_5b

    move-result v0

    :goto_59
    move v1, v0

    .line 1385
    goto :goto_8

    .line 1383
    :catch_5b
    move-exception v0

    move v0, v1

    goto :goto_59

    :cond_5e
    move v0, v1

    goto :goto_59
.end method
