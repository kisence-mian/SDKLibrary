.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;
.super Ljava/lang/Object;
.source "LibEventLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ss/android/a/a/c/d;

.field private b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/k;


# direct methods
.method private constructor <init>(Lcom/ss/android/a/a/c/d;)V
    .registers 4

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_extra_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 83
    :try_start_23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v0, "open_ad_sdk_download_extra"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v0, :cond_49

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_49} :catch_4a

    .line 97
    :cond_49
    :goto_49
    return-void

    .line 92
    :catch_4a
    move-exception v0

    goto :goto_49
.end method

.method private a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ss/android/a/a/c/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;
    .registers 2

    .prologue
    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;-><init>(Lcom/ss/android/a/a/c/d;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_120

    const-string v0, "embeded_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 108
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "draw_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 109
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "draw_ad_landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 110
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "banner_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 111
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "banner_call"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 112
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "banner_ad_landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 113
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "feed_call"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 114
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "embeded_ad_landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 115
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "interaction"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 116
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "interaction_call"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 117
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "interaction_landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 118
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "slide_banner_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 119
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "splash_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 120
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "fullscreen_interstitial_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 121
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "splash_ad_landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 122
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "rewarded_video"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 123
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "rewarded_video_landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 124
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "openad_sdk_download_complete_tag"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 125
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "download_notificaion"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 126
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "landing_h5_download_ad_button"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 127
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    :cond_11e
    const/4 v0, 0x1

    .line 107
    :goto_11f
    return v0

    .line 127
    :cond_120
    const/4 v0, 0x0

    goto :goto_11f
.end method

.method private b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 290
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    .line 314
    :cond_7
    :goto_7
    return v0

    .line 293
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 294
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 299
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    :cond_2f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 309
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_4e

    .line 311
    const/4 v0, 0x1

    goto :goto_7

    .line 312
    :catch_4e
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    if-nez v1, :cond_8

    .line 281
    :cond_7
    :goto_7
    return-void

    .line 137
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 143
    :cond_20
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v2}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v1, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 151
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 152
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_386

    :cond_70
    move v1, v4

    :goto_71
    packed-switch v1, :pswitch_data_3fc

    goto :goto_7

    .line 162
    :pswitch_75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "back_install"

    invoke-static {v0, v1, v2, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_80} :catch_81

    goto :goto_7

    .line 277
    :catch_81
    move-exception v0

    .line 278
    const-string v1, "LibEventLogger"

    const-string v2, "upload event log error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 160
    :sswitch_8b
    :try_start_8b
    const-string v5, "backdialog_show"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    move v1, v0

    goto :goto_71

    :sswitch_95
    const-string v5, "backdialog_exit"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :sswitch_9f
    const-string v5, "backdialog_install"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    move v1, v3

    goto :goto_71

    :sswitch_a9
    const-string v5, "delayinstall_install_start"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x3

    goto :goto_71

    :sswitch_b3
    const-string v5, "click_start"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x4

    goto :goto_71

    :sswitch_bd
    const-string v5, "click_pause"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x5

    goto :goto_71

    :sswitch_c7
    const-string v5, "download_notificaion_pause"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x6

    goto :goto_71

    :sswitch_d1
    const-string v5, "click_continue"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v1, 0x7

    goto :goto_71

    :sswitch_db
    const-string v5, "download_notificaion_continue"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x8

    goto :goto_71

    :sswitch_e6
    const-string v5, "download_finish"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x9

    goto :goto_71

    :sswitch_f1
    const-string v5, "download_failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xa

    goto/16 :goto_71

    :sswitch_fd
    const-string v5, "click_install"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xb

    goto/16 :goto_71

    :sswitch_109
    const-string v5, "download_notificaion_install"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xc

    goto/16 :goto_71

    :sswitch_115
    const-string v5, "install_finish"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xd

    goto/16 :goto_71

    :sswitch_121
    const-string v5, "click_open"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xe

    goto/16 :goto_71

    :sswitch_12d
    const-string v5, "download_notification_open"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xf

    goto/16 :goto_71

    :sswitch_139
    const-string v5, "open_url_app"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x10

    goto/16 :goto_71

    :sswitch_145
    const-string v5, "deeplink_url_true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x11

    goto/16 :goto_71

    :sswitch_151
    const-string v5, "deeplink_open_fail_for_packagename_no_match"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x12

    goto/16 :goto_71

    :sswitch_15d
    const-string v5, "package_name_error"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x13

    goto/16 :goto_71

    :sswitch_169
    const-string v5, "deeplink_url_app"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x14

    goto/16 :goto_71

    :sswitch_175
    const-string v5, "deeplink_open_success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x15

    goto/16 :goto_71

    :sswitch_181
    const-string v5, "market_click_open"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x16

    goto/16 :goto_71

    :sswitch_18d
    const-string v5, "market_open_success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x17

    goto/16 :goto_71

    :sswitch_199
    const-string v5, "market_open_failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x18

    goto/16 :goto_71

    :sswitch_1a5
    const-string v5, "market_openapp_window_show"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x19

    goto/16 :goto_71

    :sswitch_1b1
    const-string v5, "market_openapp_cancel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x1a

    goto/16 :goto_71

    :sswitch_1bd
    const-string v5, "market_openapp_success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x1b

    goto/16 :goto_71

    :sswitch_1c9
    const-string v5, "market_openapp_failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0x1c

    goto/16 :goto_71

    .line 165
    :pswitch_1d5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "back_install_0"

    invoke-static {v0, v1, v2, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 168
    :pswitch_1e2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "back_install_1"

    invoke-static {v0, v1, v2, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 171
    :pswitch_1ef
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    goto/16 :goto_7

    .line 174
    :pswitch_1fa
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_7

    .line 178
    :pswitch_20f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 182
    :pswitch_220
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 186
    :pswitch_231
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 191
    :pswitch_242
    const-string v5, "unknown"

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->c(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_25b

    .line 194
    const-string v1, "fail_status"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 195
    const-string v1, "fail_msg"

    const-string v3, "unknown"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_25b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 202
    :pswitch_26c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 216
    :pswitch_27d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->c(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_295

    .line 218
    const-string v4, "scene"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 219
    const-string v5, "hijack"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 220
    if-ne v1, v3, :cond_382

    .line 224
    :cond_295
    :goto_295
    const-string v1, "hijack"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 227
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "auto_control"

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 234
    :pswitch_2c1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v1, v3, v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 238
    :pswitch_2d2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 241
    :pswitch_2e3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 245
    :pswitch_2f4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 248
    :pswitch_305
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 251
    :pswitch_316
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 254
    :pswitch_327
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "open_market_url"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 257
    :pswitch_334
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "open_market_suc"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 260
    :pswitch_341
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "open_market_fail"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 263
    :pswitch_34e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "market_openapp_window_show"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 266
    :pswitch_35b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "market_openapp_cancel"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 269
    :pswitch_368
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "market_openapp_success"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 272
    :pswitch_375
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "market_openapp_failed"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_380
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_380} :catch_81

    goto/16 :goto_7

    :cond_382
    move v0, v1

    goto/16 :goto_295

    .line 160
    nop

    :sswitch_data_386
    .sparse-switch
        -0x4d5dae82 -> :sswitch_d1
        -0x47538c6f -> :sswitch_c7
        -0x4220197b -> :sswitch_1b1
        -0x3d03b3b8 -> :sswitch_1c9
        -0x36492908 -> :sswitch_169
        -0x2e50b15f -> :sswitch_121
        -0x20461910 -> :sswitch_151
        -0x1cda878a -> :sswitch_109
        -0x1b40ad7c -> :sswitch_181
        -0xa142ed9 -> :sswitch_12d
        -0x7e219b5 -> :sswitch_9f
        -0x56761c -> :sswitch_fd
        0x95a9fd4 -> :sswitch_f1
        0x9cd982a -> :sswitch_e6
        0x12e6025c -> :sswitch_139
        0x171734ed -> :sswitch_15d
        0x2f175f77 -> :sswitch_a9
        0x33781bc7 -> :sswitch_175
        0x35031c4f -> :sswitch_199
        0x3cd9ba31 -> :sswitch_18d
        0x3ea4352c -> :sswitch_db
        0x485344c1 -> :sswitch_1a5
        0x51ddefb7 -> :sswitch_115
        0x6442087f -> :sswitch_bd
        0x6474a6eb -> :sswitch_b3
        0x6d2cb397 -> :sswitch_145
        0x6e068958 -> :sswitch_1bd
        0x7057366e -> :sswitch_95
        0x705d584d -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_3fc
    .packed-switch 0x0
        :pswitch_75
        :pswitch_1d5
        :pswitch_1e2
        :pswitch_1ef
        :pswitch_1fa
        :pswitch_20f
        :pswitch_20f
        :pswitch_220
        :pswitch_220
        :pswitch_231
        :pswitch_242
        :pswitch_26c
        :pswitch_26c
        :pswitch_27d
        :pswitch_2c1
        :pswitch_2c1
        :pswitch_2d2
        :pswitch_2e3
        :pswitch_2f4
        :pswitch_2f4
        :pswitch_305
        :pswitch_316
        :pswitch_327
        :pswitch_334
        :pswitch_341
        :pswitch_34e
        :pswitch_35b
        :pswitch_368
        :pswitch_375
    .end packed-switch
.end method
