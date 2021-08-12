.class public Lcom/bytedance/sdk/openadsdk/utils/aj;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 451
    const-string v0, ""

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->a:Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->b:Ljava/lang/String;

    .line 500
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I
    .registers 3

    .line 885
    nop

    .line 886
    if-eqz p0, :cond_16

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 887
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 888
    xor-int/lit8 p0, p1, 0x1

    goto :goto_17

    .line 891
    :cond_16
    const/4 p0, 0x3

    :goto_17
    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 9

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_6c

    :cond_e
    goto :goto_5f

    :sswitch_f
    const-string v0, "draw_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v7

    goto :goto_60

    :sswitch_19
    const-string v0, "interaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v4

    goto :goto_60

    :sswitch_23
    const-string v0, "cache_splash_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v2

    goto :goto_60

    :sswitch_2d
    const-string v0, "splash_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v3

    goto :goto_60

    :sswitch_37
    const-string v0, "embeded_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    goto :goto_60

    :sswitch_41
    const-string v0, "fullscreen_interstitial_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v6

    goto :goto_60

    :sswitch_4b
    const-string v0, "rewarded_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v1

    goto :goto_60

    :sswitch_55
    const-string v0, "banner_ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move p0, v5

    goto :goto_60

    :goto_5f
    const/4 p0, -0x1

    :goto_60
    packed-switch p0, :pswitch_data_8e

    .line 257
    return v7

    .line 255
    :pswitch_64
    return v1

    .line 253
    :pswitch_65
    return v2

    .line 251
    :pswitch_66
    return v3

    .line 248
    :pswitch_67
    return v4

    .line 246
    :pswitch_68
    return v5

    .line 244
    :pswitch_69
    return v6

    .line 242
    :pswitch_6a
    return v7

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x65146dea -> :sswitch_55
        -0x514cfef6 -> :sswitch_4b
        -0x2d935a6e -> :sswitch_41
        -0x2a77c376 -> :sswitch_37
        0xa6dd8fb -> :sswitch_2d
        0x21a3887e -> :sswitch_23
        0x6deace12 -> :sswitch_19
        0x72060cfe -> :sswitch_f
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_66
        :pswitch_65
        :pswitch_64
    .end packed-switch
.end method

.method public static a(J)J
    .registers 4

    .line 1161
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 1

    .line 214
    packed-switch p0, :pswitch_data_1a

    .line 230
    const/4 p0, 0x0

    return-object p0

    .line 228
    :pswitch_5
    const-string p0, "rewarded_video_landingpage"

    return-object p0

    .line 218
    :pswitch_8
    const-string p0, "draw_ad_landingpage"

    return-object p0

    .line 226
    :pswitch_b
    const-string p0, "fullscreen_interstitial_ad_landingpage"

    return-object p0

    .line 224
    :pswitch_e
    const-string p0, "splash_ad_landingpage"

    return-object p0

    .line 222
    :pswitch_11
    const-string p0, "interaction_landingpage"

    return-object p0

    .line 220
    :pswitch_14
    const-string p0, "banner_ad_landingpage"

    return-object p0

    .line 216
    :pswitch_17
    const-string p0, "embeded_ad_landingpage"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 581
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    const-string v1, "total_memory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    if-nez v0, :cond_1a

    .line 583
    const-string v0, "MemTotal"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_1a
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;
    .registers 2

    .line 285
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 286
    return-object v0

    .line 289
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    .line 290
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(I)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    return-object p0

    .line 291
    :catchall_11
    move-exception p0

    .line 292
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;
    .registers 6

    .line 1165
    const-string v0, ""

    if-nez p0, :cond_5

    .line 1166
    return-object v0

    .line 1168
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1170
    :try_start_a
    const-string v2, "rit"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1171
    const-string v2, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1172
    const-string v2, "creative_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1173
    const-string v2, "ad_sdk_version"

    const/16 v3, 0xd54

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1174
    const-string v2, "ad_slot_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1175
    if-eqz p1, :cond_6b

    .line 1176
    const-string p0, "ad_width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1177
    const-string p0, "ad_height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1178
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1179
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1180
    const-string p1, "ad_x"

    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1181
    const-string p1, "ad_y"

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1183
    :cond_6b
    const-string p0, "screen_width"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1184
    const-string p0, "screen_height"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_85} :catch_86

    .line 1186
    goto :goto_87

    .line 1185
    :catch_86
    move-exception p0

    .line 1187
    :goto_87
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object v0, p0

    :goto_9b
    return-object v0
.end method

.method public static a(JLcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Lcom/bytedance/sdk/openadsdk/core/video/d/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 713
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "video_start_duration"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    if-eqz p2, :cond_3f

    .line 715
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 716
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "creative_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p0

    .line 719
    if-eqz p0, :cond_3f

    .line 720
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_resolution"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "video_size"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_3f
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    .line 727
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;IILcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "II",
            "Lcom/bytedance/sdk/openadsdk/core/video/d/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "error_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extra_error_code"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p0

    .line 775
    if-eqz p0, :cond_3c

    .line 776
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_size"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_resolution"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_3c
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    .line 782
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "J",
            "Lcom/bytedance/sdk/openadsdk/core/video/d/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 787
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "buffers_time"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p0

    .line 790
    if-eqz p0, :cond_33

    .line 791
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_size"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_resolution"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_33
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    .line 797
    return-object v0
.end method

.method public static a(ZLcom/bytedance/sdk/openadsdk/core/d/l;JJLjava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 740
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 741
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "load_time"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    .line 744
    if-eqz p1, :cond_33

    .line 745
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "video_size"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_resolution"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_33
    if-nez p0, :cond_4b

    .line 751
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "error_code"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    const-string p6, "unknown"

    :cond_46
    const-string p0, "error_message"

    invoke-interface {v0, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_4b
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 9

    .line 898
    const-string v0, "cypher"

    const-string v1, "message"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 899
    if-nez p0, :cond_c

    .line 900
    return-object v2

    .line 903
    :cond_c
    const/4 v3, 0x0

    :try_start_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 905
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 907
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 908
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 909
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4a

    .line 911
    :cond_40
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_4b

    .line 921
    :goto_4a
    goto :goto_58

    .line 914
    :catchall_4b
    move-exception v4

    .line 916
    :try_start_4c
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_57

    .line 920
    goto :goto_58

    .line 918
    :catchall_57
    move-exception p0

    .line 922
    :goto_58
    return-object v2
.end method

.method private static a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/video/d/d;",
            ")V"
        }
    .end annotation

    .line 801
    const-string v0, "video_resolution"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 804
    if-eqz p1, :cond_41

    :try_start_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 805
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 806
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    .line 807
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d\u00d7%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3f

    goto :goto_41

    .line 809
    :catchall_3f
    move-exception p0

    nop

    .line 812
    :cond_41
    :goto_41
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 146
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static a(JJ)Z
    .registers 8

    .line 1155
    sub-long v0, p2, p0

    .line 1156
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    const-wide/32 v2, -0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 1157
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(J)J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 1156
    :goto_1f
    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 124
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    if-nez p0, :cond_6

    goto :goto_23

    .line 127
    :cond_6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 128
    return v0

    .line 131
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 132
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 134
    if-eqz p0, :cond_20

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    if-lez p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    .line 135
    :catchall_21
    move-exception p0

    .line 136
    return v0

    .line 125
    :cond_23
    :goto_23
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 61
    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3a

    .line 65
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_38

    const-string v2, "START_ONLY_FOR_ANDROID"

    const/4 v3, 0x1

    if-nez v1, :cond_21

    .line 66
    :try_start_13
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 67
    if-nez p1, :cond_1a

    .line 68
    return v0

    .line 70
    :cond_1a
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return v3

    .line 74
    :cond_21
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 75
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 76
    if-nez p1, :cond_2e

    .line 77
    return v0

    .line 79
    :cond_2e
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_38

    .line 81
    return v3

    .line 86
    :cond_36
    nop

    .line 87
    return v0

    .line 84
    :catchall_38
    move-exception p0

    .line 85
    return v0

    .line 62
    :cond_3a
    :goto_3a
    return v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Z
    .registers 13

    .line 1013
    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    .line 1014
    :try_start_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1016
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v2

    if-ne v2, v3, :cond_36

    .line 1017
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1018
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_37

    .line 1020
    :cond_36
    move-object v5, v1

    :goto_37
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1021
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    .line 1022
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1021
    move-object v6, p0

    move-object v8, p1

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;ZLjava/util/Map;)Z
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4d

    .line 1023
    return v3

    .line 1026
    :catchall_4d
    move-exception p0

    .line 1027
    return v0

    .line 1028
    :cond_4f
    nop

    .line 1029
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 92
    const/4 p1, 0x0

    if-nez p0, :cond_c

    .line 93
    return-object p1

    .line 96
    :cond_c
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_17
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 p1, 0x200000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 454
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 455
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->a:Ljava/lang/String;

    return-object v0

    .line 458
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_29

    .line 459
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->a:Ljava/lang/String;

    .line 461
    goto :goto_3a

    .line 463
    :cond_29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/aj$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3a} :catch_3b

    .line 476
    :goto_3a
    goto :goto_3c

    .line 475
    :catch_3b
    move-exception v0

    .line 477
    :goto_3c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 1

    .line 262
    packed-switch p0, :pswitch_data_1c

    .line 280
    :pswitch_3
    const-string p0, "embeded_ad"

    return-object p0

    .line 275
    :pswitch_6
    const-string p0, "draw_ad"

    return-object p0

    .line 273
    :pswitch_9
    const-string p0, "fullscreen_interstitial_ad"

    return-object p0

    .line 271
    :pswitch_c
    const-string p0, "rewarded_video"

    return-object p0

    .line 277
    :pswitch_f
    const-string p0, "stream"

    return-object p0

    .line 269
    :pswitch_12
    const-string p0, "splash_ad"

    return-object p0

    .line 266
    :pswitch_15
    const-string p0, "interaction"

    return-object p0

    .line 264
    :pswitch_18
    const-string p0, "banner_ad"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_3
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 869
    nop

    .line 872
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_19

    .line 873
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_1d

    .line 875
    :cond_19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 877
    :goto_1d
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    .line 880
    goto :goto_2e

    .line 878
    :catch_22
    move-exception p0

    .line 879
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToolUtils"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 881
    :goto_2e
    return-object p0
.end method

.method public static b(ZLcom/bytedance/sdk/openadsdk/core/d/l;JJLjava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 759
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "creative_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "load_time"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    if-nez p0, :cond_2f

    .line 763
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "error_code"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p6, "unknown"

    :cond_2a
    const-string p0, "error_message"

    invoke-interface {v0, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_2f
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 298
    return-object v1

    .line 300
    :cond_8
    nop

    .line 301
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 303
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_18

    .line 306
    move-object v1, v0

    goto :goto_1c

    .line 304
    :catch_18
    move-exception p0

    .line 305
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 308
    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 3

    .line 312
    nop

    .line 313
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 314
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 316
    :cond_12
    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 3

    .line 365
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 366
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 367
    const-string v1, "ad_slot_type"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 369
    :cond_e
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 481
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    .line 1204
    if-eqz p0, :cond_38

    .line 1207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1208
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1209
    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1b

    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1b

    move p0, v2

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 1210
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can query all package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolUtils"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    xor-int/2addr p0, v2

    return p0

    .line 1205
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "params context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 108
    nop

    .line 109
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 112
    :try_start_14
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1c

    .line 113
    const/4 p0, 0x1

    move v0, p0

    .line 118
    :cond_1c
    goto :goto_1f

    .line 115
    :catchall_1d
    move-exception p0

    .line 117
    return v0

    .line 120
    :cond_1f
    :goto_1f
    return v0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 5

    .line 320
    nop

    .line 321
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 322
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2b

    .line 323
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2b

    .line 324
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2c

    :cond_2b
    move v0, v3

    .line 322
    :cond_2c
    return v0

    .line 326
    :cond_2d
    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .registers 3

    .line 373
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 374
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 375
    const-string v1, "rit"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 377
    :cond_e
    return v0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 486
    nop

    .line 487
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 489
    const/16 v1, 0x8

    :try_start_8
    new-array v1, v1, [B

    .line 490
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 491
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_13

    .line 494
    nop

    .line 495
    return-object v0

    .line 492
    :catch_13
    move-exception v0

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 157
    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3d

    .line 161
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 162
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_35

    .line 164
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    :cond_35
    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_39} :catch_3b

    .line 167
    const/4 p0, 0x1

    return p0

    .line 168
    :catch_3b
    move-exception p0

    .line 171
    return v0

    .line 158
    :cond_3d
    :goto_3d
    return v0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 330
    nop

    .line 331
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 332
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 334
    :cond_1c
    return v0
.end method

.method public static e(Ljava/lang/String;)J
    .registers 4

    .line 381
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 382
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_f

    .line 383
    const-string v2, "uid"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 385
    :cond_f
    return-wide v0
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/aj;

    monitor-enter v0

    .line 503
    const/4 v1, 0x0

    .line 504
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1d

    if-eqz v2, :cond_1b

    .line 507
    :try_start_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    .line 510
    goto :goto_1b

    .line 508
    :catchall_13
    move-exception v2

    .line 509
    :try_start_14
    const-string v3, "ToolUtils"

    const-string v4, "ToolUtils getPackageName throws exception :"

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 512
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-object v1

    .line 502
    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 607
    nop

    .line 608
    nop

    .line 610
    const/4 p0, 0x0

    :try_start_3
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_61

    .line 611
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_5e

    .line 613
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 614
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_5c

    if-eqz v3, :cond_11

    .line 621
    :cond_1d
    if-nez v2, :cond_2c

    .line 632
    nop

    .line 634
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 636
    goto :goto_25

    .line 635
    :catch_24
    move-exception p1

    .line 638
    :goto_25
    nop

    .line 640
    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    .line 642
    goto :goto_2b

    .line 641
    :catch_2a
    move-exception p1

    .line 621
    :goto_2b
    return-object p0

    .line 623
    :cond_2c
    :try_start_2c
    const-string p1, "\\s+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 626
    const-string v2, "ToolUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalMemory = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    aget-object p0, p1, v4
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_5c

    .line 632
    nop

    .line 634
    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    .line 636
    goto :goto_55

    .line 635
    :catch_54
    move-exception p1

    .line 638
    :goto_55
    nop

    .line 640
    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    .line 642
    goto :goto_5b

    .line 641
    :catch_5a
    move-exception p1

    .line 627
    :goto_5b
    return-object p0

    .line 629
    :catchall_5c
    move-exception p1

    goto :goto_64

    :catchall_5e
    move-exception p1

    move-object v1, p0

    goto :goto_64

    :catchall_61
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    .line 630
    :goto_64
    :try_start_64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_77

    .line 632
    if-eqz v1, :cond_6e

    .line 634
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 636
    goto :goto_6e

    .line 635
    :catch_6d
    move-exception p1

    .line 638
    :cond_6e
    :goto_6e
    if-eqz v0, :cond_76

    .line 640
    :try_start_70
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    .line 642
    :goto_73
    goto :goto_76

    .line 641
    :catch_74
    move-exception p1

    goto :goto_73

    .line 645
    :cond_76
    :goto_76
    return-object p0

    .line 632
    :catchall_77
    move-exception p0

    if-eqz v1, :cond_7f

    .line 634
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 636
    goto :goto_7f

    .line 635
    :catch_7e
    move-exception p1

    .line 638
    :cond_7f
    :goto_7f
    if-eqz v0, :cond_86

    .line 640
    :try_start_81
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    .line 642
    goto :goto_86

    .line 641
    :catch_85
    move-exception p1

    .line 644
    :cond_86
    :goto_86
    throw p0
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 3

    .line 338
    nop

    .line 339
    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 340
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 342
    :cond_11
    return v0
.end method

.method public static f(Ljava/lang/String;)I
    .registers 3

    .line 389
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 390
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 391
    const-string v1, "ut"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 393
    :cond_e
    return v0
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/aj;

    monitor-enter v0

    .line 517
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/aj;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 518
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    if-eqz v1, :cond_37

    .line 520
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 523
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 524
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/aj;->b:Ljava/lang/String;

    .line 525
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/aj;->c:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 528
    goto :goto_37

    .line 526
    :catchall_2f
    move-exception v1

    .line 527
    :try_start_30
    const-string v2, "ToolUtils"

    const-string v3, "ToolUtils getVersionCode throws exception :"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    :cond_37
    :goto_37
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/aj;->b:Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3b

    monitor-exit v0

    return-object v1

    .line 516
    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 3

    .line 346
    nop

    .line 347
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 348
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 350
    :cond_12
    return v0
.end method

.method public static g(Ljava/lang/String;)D
    .registers 4

    .line 397
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 398
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_f

    .line 399
    const-string v2, "pack_time"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    .line 401
    :cond_f
    return-wide v0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/aj;

    monitor-enter v0

    .line 537
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/aj;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 538
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    if-eqz v1, :cond_37

    .line 540
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 543
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 544
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/aj;->b:Ljava/lang/String;

    .line 545
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/aj;->c:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 548
    goto :goto_37

    .line 546
    :catchall_2f
    move-exception v1

    .line 547
    :try_start_30
    const-string v2, "ToolUtils"

    const-string v3, "ToolUtils getVersionName throws exception :"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    :cond_37
    :goto_37
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/aj;->c:Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3b

    monitor-exit v0

    return-object v1

    .line 536
    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 2

    .line 354
    if-eqz p0, :cond_18

    .line 355
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 356
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 354
    :goto_19
    return p0
.end method

.method public static h()Ljava/lang/String;
    .registers 3

    .line 1073
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 1074
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "https://%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    return-object v0
.end method

.method public static h(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;
    .registers 1

    .line 360
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p0

    .line 361
    if-eqz p0, :cond_9

    const-string p0, "deeplink_fail"

    goto :goto_b

    :cond_9
    const-string p0, "installed"

    :goto_b
    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 405
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 406
    const-string v0, ""

    if-eqz p0, :cond_f

    .line 407
    const-string v1, "req_id"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :cond_f
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 3

    .line 1080
    nop

    .line 1081
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "log.snssdk.com/service/2/app_log_test/"

    aput-object v2, v0, v1

    const-string v1, "https://%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    return-object v0
.end method

.method public static i(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;
    .registers 2

    .line 413
    nop

    .line 414
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 415
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    .line 417
    :cond_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method public static i(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    const/4 v0, 0x0

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_54

    .line 825
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 826
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 828
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_30
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2e

    .line 833
    nop

    .line 835
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 838
    :goto_1f
    goto :goto_29

    .line 836
    :catch_20
    move-exception p0

    .line 837
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    goto :goto_1f

    .line 841
    :goto_29
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 833
    :catchall_2e
    move-exception p0

    goto :goto_47

    .line 829
    :catch_30
    move-exception p0

    .line 830
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 831
    nop

    .line 833
    nop

    .line 835
    :try_start_3a
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 838
    goto :goto_46

    .line 836
    :catch_3e
    move-exception p0

    .line 837
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 831
    :goto_46
    return-object v0

    .line 835
    :goto_47
    :try_start_47
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 838
    goto :goto_53

    .line 836
    :catch_4b
    move-exception v0

    .line 837
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 840
    :goto_53
    throw p0

    .line 823
    :cond_54
    :goto_54
    return-object v0
.end method

.method public static j()I
    .registers 4

    .line 1092
    nop

    .line 1095
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_12

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1098
    goto :goto_14

    .line 1096
    :catch_12
    move-exception v0

    const/4 v0, -0x1

    .line 1099
    :goto_14
    return v0
.end method

.method public static j(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 3

    .line 1034
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 1035
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p0

    .line 1036
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result p0

    .line 1038
    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_3c

    .line 1048
    return v0

    .line 1046
    :pswitch_19
    return v0

    .line 1040
    :pswitch_1a
    return v1

    .line 1044
    :pswitch_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_31

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :cond_31
    :goto_31
    return v0

    .line 1042
    :pswitch_32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 2

    .line 852
    :try_start_0
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 853
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 854
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_13

    if-eqz p0, :cond_12

    .line 855
    const/4 p0, 0x1

    return p0

    .line 858
    :cond_12
    goto :goto_14

    .line 857
    :catchall_13
    move-exception p0

    .line 860
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public static k()I
    .registers 4

    .line 1108
    nop

    .line 1111
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_12

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1114
    goto :goto_14

    .line 1112
    :catch_12
    move-exception v0

    const/4 v0, -0x1

    .line 1115
    :goto_14
    return v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 926
    nop

    .line 927
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_20

    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 931
    :cond_20
    return-object p0
.end method

.method public static l()I
    .registers 4

    .line 1124
    nop

    .line 1127
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_12

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1130
    goto :goto_14

    .line 1128
    :catch_12
    move-exception v0

    const/4 v0, -0x1

    .line 1131
    :goto_14
    return v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1052
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 1053
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "https://%s%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1062
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1063
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1064
    const-string v0, "testIp.txt"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_2d

    .line 1066
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1069
    :cond_2d
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 1140
    return-object v1

    .line 1142
    :cond_9
    nop

    .line 1143
    nop

    .line 1144
    nop

    .line 1145
    const-string v0, "KLLK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1146
    const-string v1, "OPPO"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 1147
    :cond_1b
    const-string v0, "kllk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1148
    const-string v1, "oppo"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    :cond_29
    :goto_29
    return-object v1
.end method

.method static synthetic n(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 57
    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/aj;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 935
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    if-nez p0, :cond_17

    .line 937
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object p0

    .line 938
    invoke-virtual {p0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 940
    :cond_17
    return-object v0
.end method
