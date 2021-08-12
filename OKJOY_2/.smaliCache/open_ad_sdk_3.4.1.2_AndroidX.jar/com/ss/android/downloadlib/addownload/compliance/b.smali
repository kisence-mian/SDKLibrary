.class public Lcom/ss/android/downloadlib/addownload/compliance/b;
.super Ljava/lang/Object;
.source "AdLpComplianceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/b$1;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/compliance/b;
    .registers 1

    .line 45
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b$a;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v0

    return-object v0
.end method

.method private a(JJLjava/lang/String;)Z
    .registers 15

    .line 184
    const/4 v0, 0x7

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string p5, "package"

    invoke-virtual {v2, p5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    .line 186
    if-eqz p5, :cond_95

    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_95

    .line 190
    :cond_17
    new-instance v2, Lcom/ss/android/downloadlib/addownload/b/b;

    invoke-direct {v2}, Lcom/ss/android/downloadlib/addownload/b/b;-><init>()V

    .line 191
    iput-wide p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->a:J

    .line 192
    iput-wide p3, v2, Lcom/ss/android/downloadlib/addownload/b/b;->b:J

    .line 193
    const-string p1, "icon_url"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->d:Ljava/lang/String;

    .line 196
    const-string p1, "app_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->e:Ljava/lang/String;

    .line 197
    const-string p1, "package_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->c:Ljava/lang/String;

    .line 198
    const-string p1, "version_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->f:Ljava/lang/String;

    .line 199
    const-string p1, "developer_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->g:Ljava/lang/String;

    .line 200
    const-string p1, "policy_url"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ss/android/downloadlib/addownload/b/b;->i:Ljava/lang/String;

    .line 202
    const-string p1, "permissions"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 203
    if-eqz p1, :cond_7e

    .line 204
    move p2, v1

    :goto_59
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    if-ge p2, p5, :cond_7e

    .line 205
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 206
    iget-object v3, v2, Lcom/ss/android/downloadlib/addownload/b/b;->h:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "permission_name"

    .line 207
    invoke-virtual {p5, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "permission_desc"

    .line 208
    invoke-virtual {p5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v4, v5, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 p2, p2, 0x1

    goto :goto_59

    .line 212
    :cond_7e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a(Lcom/ss/android/downloadlib/addownload/b/b;)V

    .line 213
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/b;->a()J

    move-result-wide v4

    iget-object v8, v2, Lcom/ss/android/downloadlib/addownload/b/b;->d:Ljava/lang/String;

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a(JJLjava/lang/String;)V

    .line 214
    const/4 p1, 0x1

    return p1

    .line 187
    :cond_95
    :goto_95
    invoke-static {v0, p3, p4}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(IJ)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_98} :catch_99

    .line 188
    return v1

    .line 215
    :catch_99
    move-exception p1

    .line 216
    invoke-static {p1}, Lcom/ss/android/downloadlib/f/a;->a(Ljava/lang/Throwable;)V

    .line 217
    invoke-static {v0, p3, p4}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(IJ)V

    .line 218
    return v1
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/compliance/b;JJLjava/lang/String;)Z
    .registers 6

    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(JJLjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(J)V
    .registers 3

    .line 55
    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(J)V

    .line 56
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/b;->a:Ljava/lang/ref/SoftReference;

    .line 236
    return-void
.end method

.method public a(Lcom/ss/android/a/a/b/c;)Z
    .registers 6

    .line 62
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 63
    return v1

    .line 65
    :cond_8
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ad_lp_show_app_dialog"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 66
    return v1

    .line 68
    :cond_15
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    if-nez v0, :cond_1d

    const/4 p1, 0x0

    goto :goto_25

    :cond_1d
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/a/a/c/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 69
    :goto_25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 70
    return v1

    .line 72
    :cond_2c
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ad_allow_web_url_regex"

    const-string v3, ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 76
    return v1

    .line 78
    :cond_47
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/ss/android/downloadlib/addownload/b/e;)Z
    .registers 16

    .line 83
    nop

    .line 84
    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_30

    .line 86
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v3, "convert_id"

    invoke-static {v0, v3}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    .line 90
    goto :goto_26

    .line 88
    :catch_21
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v3, v1

    .line 91
    :goto_26
    cmp-long v0, v3, v1

    if-gtz v0, :cond_2e

    .line 92
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(ILcom/ss/android/downloadlib/addownload/b/e;)V

    .line 99
    :cond_2e
    move-wide v9, v3

    goto :goto_39

    .line 95
    :cond_30
    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(ILcom/ss/android/downloadlib/addownload/b/e;)V

    .line 96
    invoke-static {}, Lcom/ss/android/downloadlib/f/a;->a()V

    move-wide v9, v1

    .line 99
    :goto_39
    nop

    .line 100
    iget-wide v11, p1, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    .line 102
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a(JJ)Lcom/ss/android/downloadlib/addownload/b/b;

    move-result-object v0

    .line 103
    const/4 v13, 0x1

    if-eqz v0, :cond_62

    .line 105
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/b;->a()J

    move-result-wide v4

    iget-object v8, v0, Lcom/ss/android/downloadlib/addownload/b/b;->d:Ljava/lang/String;

    move-wide v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a(JJLjava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/b;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(J)V

    .line 107
    const-string v0, "lp_app_dialog_try_show"

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 108
    return v13

    .line 111
    :cond_62
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->e()Lcom/ss/android/a/a/a/g;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_70

    .line 112
    invoke-static {}, Lcom/ss/android/downloadlib/f/a;->a()V

    .line 113
    invoke-static {v13, p1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(ILcom/ss/android/downloadlib/addownload/b/e;)V

    .line 114
    return v3

    .line 117
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    cmp-long v1, v9, v1

    if-lez v1, :cond_82

    .line 119
    const-string v1, "convert_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    :cond_82
    iget-object v1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_99

    .line 123
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_99
    const-string v1, "package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_b3

    .line 129
    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(ILcom/ss/android/downloadlib/addownload/b/e;)V

    .line 130
    return v3

    .line 134
    :cond_b3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://apps.oceanengine.com/customer/api/app/pkg_info?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/b$2;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, v9

    move-wide v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/compliance/b$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/b;JJ)V

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/h/c;->a(Lcom/ss/android/downloadlib/h/c$a;Ljava/lang/Object;)Lcom/ss/android/downloadlib/h/c;

    move-result-object p1

    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/compliance/b$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/b;JJ)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/h/c;->a(Lcom/ss/android/downloadlib/h/c$a;)Lcom/ss/android/downloadlib/h/c;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/h/c;->a()V

    .line 173
    return v13
.end method

.method public b()Landroid/app/Activity;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/b;->a:Ljava/lang/ref/SoftReference;

    .line 241
    return-object v0
.end method

.method public b(J)V
    .registers 5

    .line 224
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v1

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_1d

    .line 227
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Z)V

    goto :goto_25

    .line 229
    :cond_1d
    const/16 v0, 0xb

    invoke-static {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(IJ)V

    .line 230
    invoke-static {}, Lcom/ss/android/downloadlib/f/a;->a()V

    .line 232
    :goto_25
    return-void
.end method
