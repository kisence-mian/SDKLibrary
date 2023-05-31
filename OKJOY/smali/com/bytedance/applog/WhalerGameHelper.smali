.class public Lcom/bytedance/applog/WhalerGameHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/WhalerGameHelper$Result;
    }
.end annotation


# static fields
.field public static final GT_AD_BUTTON_CLICK:Ljava/lang/String; = "gt_ad_button_click"

.field public static final GT_AD_BUTTON_SHOW:Ljava/lang/String; = "gt_ad_button_show"

.field public static final GT_AD_REQUEST:Ljava/lang/String; = "gt_ad_request"

.field public static final GT_AD_SEND:Ljava/lang/String; = "gt_ad_send"

.field public static final GT_AD_SHOW:Ljava/lang/String; = "gt_ad_show"

.field public static final GT_AD_SHOW_END:Ljava/lang/String; = "gt_ad_show_end"

.field public static final GT_END_PLAY:Ljava/lang/String; = "gt_end_play"

.field public static final GT_INIT_INFO:Ljava/lang/String; = "gt_init_info"

.field public static final GT_LEVELUP:Ljava/lang/String; = "gt_levelup"

.field public static final GT_SCENE_LEVUP:Ljava/lang/String; = "gt_scene_levup"

.field public static final GT_START_PLAY:Ljava/lang/String; = "gt_start_play"

.field public static final PURCHASE:Ljava/lang/String; = "purchase"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adButtonClick(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .registers 10
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "adPositionType"    # Ljava/lang/String;
    .param p5, "adPosition"    # Ljava/lang/String;
    .param p6, "codeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p7, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    invoke-static {p7, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 128
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 129
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "ad_position_type"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v1, "ad_position"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v1, "gt_ad_button_click"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 137
    :goto_24
    return-void

    .line 134
    :catch_25
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_24
.end method

.method public static adButtonShow(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .registers 10
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "adPositionType"    # Ljava/lang/String;
    .param p5, "adPosition"    # Ljava/lang/String;
    .param p6, "codeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p7, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    invoke-static {p7, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 102
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 103
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "ad_position_type"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "ad_position"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v1, "gt_ad_button_show"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 111
    :goto_24
    return-void

    .line 108
    :catch_25
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_24
.end method

.method public static adRequest(IIILjava/lang/String;ILjava/util/HashMap;)V
    .registers 8
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "codeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p5, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    invoke-static {p5, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 43
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 44
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v1, "gt_ad_request"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 50
    :goto_1a
    return-void

    .line 47
    :catch_1b
    move-exception v0

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static adSend(IIILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "codeId"    # I
    .param p5, "adCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p6, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    invoke-static {p6, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 77
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 78
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v1, "ad_code"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "gt_ad_send"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 85
    :goto_1f
    return-void

    .line 82
    :catch_20
    move-exception v0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1f
.end method

.method public static adShow(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 11
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "adPositionType"    # Ljava/lang/String;
    .param p5, "adPosition"    # Ljava/lang/String;
    .param p6, "codeId"    # I
    .param p7, "adCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p8, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    invoke-static {p8, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 155
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 156
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v1, "ad_position_type"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v1, "ad_position"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    const-string v1, "ad_code"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "gt_ad_show"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 165
    :goto_29
    return-void

    .line 162
    :catch_2a
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_29
.end method

.method public static adShowEnd(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .registers 11
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "adPositionType"    # Ljava/lang/String;
    .param p5, "adPosition"    # Ljava/lang/String;
    .param p6, "result"    # Ljava/lang/String;
    .param p7, "codeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p8, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    invoke-static {p8, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 183
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 184
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v1, "ad_position_type"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v1, "ad_position"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v1, "result"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v1, "gt_ad_show_end"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 193
    :goto_29
    return-void

    .line 190
    :catch_2a
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_29
.end method

.method public static endPlay(IIILjava/lang/String;ILjava/lang/String;Lcom/bytedance/applog/WhalerGameHelper$Result;IIIZILjava/lang/String;Ljava/util/HashMap;)V
    .registers 18
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "ectypeType"    # Ljava/lang/String;
    .param p4, "ectypeId"    # I
    .param p5, "ectypeName"    # Ljava/lang/String;
    .param p6, "result"    # Lcom/bytedance/applog/WhalerGameHelper$Result;
    .param p7, "score"    # I
    .param p8, "duration"    # I
    .param p9, "killNum"    # I
    .param p10, "passed"    # Z
    .param p11, "percentage"    # I
    .param p12, "rank"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/WhalerGameHelper$Result;",
            "IIIZI",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p13, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 305
    move-object/from16 v0, p13

    invoke-static {v0, v2}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 306
    invoke-static {p0, p1, p2, v2}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 307
    const-string v1, "ectype_type"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v1, "ectype_id"

    invoke-virtual {v2, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string v1, "ectype_name"

    invoke-virtual {v2, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "result"

    iget-object v3, p6, Lcom/bytedance/applog/WhalerGameHelper$Result;->gameResult:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v1, "score"

    invoke-virtual {v2, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v1, "duration"

    invoke-virtual {v2, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v1, "kill_num"

    invoke-virtual {v2, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v3, "passed"

    if-eqz p10, :cond_4d

    const-string v1, "yes"

    :goto_38
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "percentage"

    invoke-virtual {v2, v1, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string v1, "rank"

    move-object/from16 v0, p12

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "gt_end_play"

    invoke-static {v1, v2}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 321
    :goto_4c
    return-void

    .line 314
    :cond_4d
    const-string v1, "no"
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_38

    .line 318
    :catch_50
    move-exception v1

    .line 319
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4c
.end method

.method private static fillCommonParams(IIILorg/json/JSONObject;)V
    .registers 5
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 406
    const-string v0, "lev"

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    const-string v0, "scene_id"

    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    const-string v0, "scene_lev"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    return-void
.end method

.method private static fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "param"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 54
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 61
    :cond_36
    return-void
.end method

.method public static gameInitInfo(IIILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "coinType"    # Ljava/lang/String;
    .param p4, "coinLeft"    # I
    .param p5, "roleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p6, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 372
    invoke-static {p6, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 373
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 374
    const-string v1, "coin_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v1, "coin_left"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v1, "role_id"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v1, "gt_init_info"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 381
    :goto_1f
    return-void

    .line 378
    :catch_20
    move-exception v0

    .line 379
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1f
.end method

.method public static gameInitInfo(IIILjava/lang/String;ILjava/util/HashMap;)V
    .registers 8
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "coinType"    # Ljava/lang/String;
    .param p4, "coinLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p5, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 395
    invoke-static {p5, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 396
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 397
    const-string v1, "coin_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v1, "coin_left"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string v1, "gt_init_info"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 403
    :goto_1a
    return-void

    .line 400
    :catch_1b
    move-exception v0

    .line 401
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static levelUp(IIIILjava/lang/String;ILjava/util/HashMap;)V
    .registers 9
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "getExp"    # I
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "aflev"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p6, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    invoke-static {p6, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 209
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 210
    const-string v1, "get_exp"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    const-string v1, "method"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "aflev"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v1, "gt_levelup"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 217
    :goto_1f
    return-void

    .line 214
    :catch_20
    move-exception v0

    .line 215
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1f
.end method

.method public static purchase(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .registers 14
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentName"    # Ljava/lang/String;
    .param p5, "contentId"    # Ljava/lang/String;
    .param p6, "contentNum"    # I
    .param p7, "paymentChannel"    # Ljava/lang/String;
    .param p8, "currency"    # Ljava/lang/String;
    .param p9, "isSuccess"    # Ljava/lang/String;
    .param p10, "currencyAmount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p11, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 342
    invoke-static {p11, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 343
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 344
    const-string v1, "content_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v1, "content_name"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v1, "content_num"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v1, "content_id"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v1, "payment_channel"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v1, "currency"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v1, "is_success"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v1, "currency_amount"

    invoke-virtual {v0, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v1, "purchase"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    .line 356
    :goto_38
    return-void

    .line 353
    :catch_39
    move-exception v0

    .line 354
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_38
.end method

.method public static sceneLevUp(IIIILjava/lang/String;IILjava/util/HashMap;)V
    .registers 10
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "getExp"    # I
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "sceneFlev"    # I
    .param p6, "reset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p7, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 233
    invoke-static {p7, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 234
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 235
    const-string v1, "get_exp"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string v1, "method"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v1, "scene_aflev"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string v1, "reset"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    const-string v1, "gt_scene_levup"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 243
    :goto_24
    return-void

    .line 240
    :catch_25
    move-exception v0

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_24
.end method

.method public static startPlay(IIILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .param p0, "lev"    # I
    .param p1, "sceneId"    # I
    .param p2, "sceneLev"    # I
    .param p3, "ectypeType"    # Ljava/lang/String;
    .param p4, "ectypeId"    # I
    .param p5, "ectypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p6, "otherParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    invoke-static {p6, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 259
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/applog/WhalerGameHelper;->fillCommonParams(IIILorg/json/JSONObject;)V

    .line 260
    const-string v1, "ectype_type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v1, "ectype_id"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v1, "ectype_name"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "gt_start_play"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 267
    :goto_1f
    return-void

    .line 264
    :catch_20
    move-exception v0

    .line 265
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1f
.end method
