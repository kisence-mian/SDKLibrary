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

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/l;


# direct methods
.method private constructor <init>(Lcom/ss/android/a/a/c/d;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 77
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 78
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_extra_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 82
    :try_start_1d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v0, "open_ad_sdk_download_extra"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    .line 85
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz p1, :cond_3d

    .line 88
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3d} :catch_3e

    .line 92
    :cond_3d
    goto :goto_3f

    .line 91
    :catch_3e
    move-exception p1

    .line 96
    :cond_3f
    :goto_3f
    return-void
.end method

.method private a()Landroid/content/Context;
    .registers 2

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ss/android/a/a/c/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;
    .registers 2

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;-><init>(Lcom/ss/android/a/a/c/d;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 107
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "embeded_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 108
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "draw_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 109
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "draw_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 110
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 111
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 112
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 113
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "feed_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 114
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "embeded_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 115
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interaction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 116
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interaction_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 117
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interaction_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 118
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "slide_banner_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 119
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "splash_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 120
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fullscreen_interstitial_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 121
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "splash_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 122
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rewarded_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 123
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rewarded_video_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 124
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openad_sdk_download_complete_tag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 125
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "download_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 126
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "landing_h5_download_ad_button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 127
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fullscreen_interstitial_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 128
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "feed_video_middle_page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_148

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 129
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14a

    :cond_148
    const/4 p1, 0x1

    goto :goto_14b

    :cond_14a
    const/4 p1, 0x0

    .line 106
    :goto_14b
    return p1
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 136
    const-string v0, "LibEventLogger"

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    if-nez v1, :cond_7

    .line 137
    return-void

    .line 139
    :cond_7
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v2, :cond_4d

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 147
    :cond_4d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 151
    return-void

    .line 154
    :cond_61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 155
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    .line 156
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_b7

    .line 159
    :cond_82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->c(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 162
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 163
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v3}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 165
    const-string v4, "click"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 166
    return-void

    .line 168
    :cond_a7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lcom/ss/android/a/a/c/d;

    invoke-virtual {v5}, Lcom/ss/android/a/a/c/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v2, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b6
    .catchall {:try_start_2 .. :try_end_b6} :catchall_b8

    .line 173
    :cond_b6
    goto :goto_be

    .line 157
    :cond_b7
    :goto_b7
    return-void

    .line 171
    :catchall_b8
    move-exception v1

    .line 172
    const-string v2, "upload event log error"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :goto_be
    return-void
.end method
