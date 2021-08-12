.class public Lcom/bytedance/sdk/openadsdk/c/d;
.super Ljava/lang/Object;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/d$a;
    }
.end annotation


# direct methods
.method public static a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1024
    nop

    .line 1026
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    .line 1029
    goto :goto_d

    .line 1027
    :catchall_b
    move-exception p3

    const/4 p3, 0x0

    .line 1030
    :goto_d
    if-nez p3, :cond_10

    .line 1031
    return-void

    .line 1033
    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "open_appback"

    invoke-static {v0, p3, p2, p1, p0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1034
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(J)V

    .line 1035
    const-string p0, ""

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 7

    .line 588
    if-eqz p0, :cond_2b

    if-nez p3, :cond_5

    goto :goto_2b

    .line 593
    :cond_5
    nop

    .line 595
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 597
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 598
    const-string v2, "skip_duration"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 600
    const-string p1, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1e} :catch_1f

    .line 603
    goto :goto_23

    .line 601
    :catch_1f
    move-exception p1

    .line 602
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 604
    :goto_23
    const-string p1, "splash_ad"

    const-string p2, "skip"

    invoke-static {p0, p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 605
    return-void

    .line 589
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .line 1045
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1047
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1048
    const-string v2, "render_type"

    const-string v3, "h5"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    const-string v2, "render_type_2"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1050
    const-string v2, "ad_extra_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    .line 1053
    goto :goto_22

    .line 1051
    :catch_21
    move-exception v1

    .line 1054
    :goto_22
    const-string v1, "landingpage"

    const-string v2, "open_url_h5"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1055
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 611
    const-string v0, "click_close"

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;J)V
    .registers 9

    .line 1066
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1068
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1069
    const-string v2, "render_type"

    const-string v3, "h5"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    const-string v2, "render_type_2"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    const-string v2, "ad_extra_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1072
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_26

    .line 1075
    goto :goto_27

    .line 1073
    :catch_26
    move-exception p3

    .line 1076
    :goto_27
    const-string p3, "load"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1077
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 798
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    .line 977
    if-eqz p1, :cond_6c

    if-nez p0, :cond_5

    goto :goto_6c

    .line 980
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 981
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "color_percent"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p4

    if-eqz p4, :cond_26

    .line 983
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object p4

    const-string v1, "playable_url"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->j()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "memory_total"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l()I

    move-result p4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->k()I

    move-result v1

    sub-int/2addr p4, v1

    .line 989
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "memory_use"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 991
    const-string v1, "request_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v1, "timestamp"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "color_percent_type"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 995
    return-void

    .line 978
    :cond_6c
    :goto_6c
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 716
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 717
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 719
    :try_start_a
    const-string v2, "duration"

    invoke-virtual {v0, v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 720
    const-string p4, "percent"

    invoke-virtual {v0, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 721
    if-eqz p7, :cond_38

    .line 722
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 723
    :goto_1e
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_38

    .line 724
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 725
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v1, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    goto :goto_1e

    .line 728
    :cond_38
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_41} :catch_42

    .line 731
    goto :goto_46

    .line 729
    :catch_42
    move-exception p4

    .line 730
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    .line 732
    :goto_46
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 733
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7

    .line 838
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 840
    :try_start_5
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 843
    goto :goto_c

    .line 841
    :catch_b
    move-exception p4

    .line 844
    :goto_c
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 845
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1006
    if-eqz p0, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_37

    .line 1009
    :cond_f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    if-nez p1, :cond_18

    goto :goto_36

    .line 1012
    :cond_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1014
    :try_start_1d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1015
    const-string v2, "scheme"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_31

    .line 1019
    goto :goto_32

    .line 1017
    :catch_31
    move-exception p4

    .line 1020
    :goto_32
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1021
    return-void

    .line 1010
    :cond_36
    :goto_36
    return-void

    .line 1007
    :cond_37
    :goto_37
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 299
    if-eqz p4, :cond_43

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 301
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 302
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 303
    :goto_1a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 304
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    goto :goto_1a

    .line 307
    :cond_34
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    .line 310
    goto :goto_3f

    .line 309
    :catch_3e
    move-exception p4

    .line 311
    :goto_3f
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_46

    .line 313
    :cond_43
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_46
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 284
    if-eqz p4, :cond_19

    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 287
    :try_start_7
    const-string v1, "ad_extra_data"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_11

    .line 290
    goto :goto_15

    .line 288
    :catch_11
    move-exception p4

    .line 289
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    .line 291
    :goto_15
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 292
    goto :goto_1c

    .line 293
    :cond_19
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_1c
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    return-void

    .line 55
    :cond_7
    if-nez p0, :cond_e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 56
    :goto_f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    const/4 v2, 0x1

    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 59
    const-string v4, "device"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v4, "is_cache"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aq()Z

    move-result v5

    if-eqz v5, :cond_31

    move v5, v2

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    :goto_32
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    if-eqz p3, :cond_59

    .line 62
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 63
    :goto_3f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 64
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    goto :goto_3f

    .line 68
    :cond_59
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 69
    const-string p3, "ad_extra_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string p3, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 72
    long-to-double v3, v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g(Ljava/lang/String;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    .line 73
    const-string v3, "show_time"

    const/4 v4, 0x0

    cmpl-float v5, p3, v4

    if-lez v5, :cond_8f

    goto :goto_90

    :cond_8f
    move p3, v4

    :goto_90
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_97} :catch_98

    .line 75
    goto :goto_99

    .line 74
    :catch_98
    move-exception p3

    .line 76
    :goto_99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p3

    const-string v3, "show"

    invoke-static {v0, p2, v3, p3, v1}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p2

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c3

    .line 81
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ab()Ljava/util/List;

    move-result-object p1

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object p3

    invoke-interface {p3, p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/k/a;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 86
    :cond_c3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_da

    .line 87
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object p0

    const-string p1, "AdShow"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/s;->c(Ljava/lang/String;)V

    .line 89
    :cond_da
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 4

    .line 907
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 908
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Lcom/bytedance/sdk/openadsdk/core/d/f;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-static {p4, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    return-void

    .line 167
    :cond_7
    if-nez p0, :cond_d

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    .line 168
    :cond_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    if-eqz p3, :cond_5d

    .line 171
    :try_start_14
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Lorg/json/JSONObject;

    move-result-object p3

    .line 172
    const-string v1, "device"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "is_valid"

    invoke-virtual {p3, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 174
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 175
    if-eqz p6, :cond_51

    .line 176
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .line 177
    :goto_37
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_51

    .line 178
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p3, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    goto :goto_37

    .line 182
    :cond_51
    invoke-static {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 183
    const-string p5, "ad_extra_data"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_5d
    const-string p3, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    const-wide/16 v1, 0x3e8

    div-long/2addr p5, v1

    .line 187
    long-to-double p5, p5

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g(Ljava/lang/String;)D

    move-result-wide v1

    sub-double/2addr p5, v1

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    .line 188
    const-string p5, "show_time"

    const/4 p6, 0x0

    cmpl-float v1, p3, p6

    if-lez v1, :cond_87

    goto :goto_88

    :cond_87
    move p3, p6

    :goto_88
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p5, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_8f} :catch_90

    .line 190
    goto :goto_91

    .line 189
    :catch_90
    move-exception p3

    .line 191
    :goto_91
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p4, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p0

    .line 192
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c2

    const-string p3, "click"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c2

    .line 196
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ac()Ljava/util/List;

    move-result-object p3

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object p4

    const/4 p5, 0x1

    invoke-interface {p4, p0, p3, p5}, Lcom/bytedance/sdk/openadsdk/k/a;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 199
    :cond_c2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p0

    if-eqz p0, :cond_e8

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdEvent"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_e8
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 1

    .line 43
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/app/Activity;)V
    .registers 5

    .line 138
    if-eqz p0, :cond_37

    if-nez p1, :cond_5

    goto :goto_37

    .line 142
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_c

    .line 144
    return-void

    .line 146
    :cond_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 147
    const-string v2, "page_name"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 149
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    const-string v2, "ad_extra_data"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "page_on_create"

    invoke-static {v1, p0, v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    .line 153
    goto :goto_36

    .line 152
    :catchall_35
    move-exception p0

    .line 154
    :goto_36
    return-void

    .line 139
    :cond_37
    :goto_37
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 92
    const-string v0, "load_ad_duration"

    const-string v1, "download_creative_duration"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v4, "device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 97
    invoke-virtual {v3, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_32

    .line 98
    :cond_29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 99
    invoke-virtual {v3, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    :cond_32
    :goto_32
    const-string p3, "ad_extra_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string p3, "log_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_44} :catch_45

    .line 104
    goto :goto_46

    .line 103
    :catch_45
    move-exception p3

    .line 105
    :goto_46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p1, p2, p0, v2}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p0

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 107
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 111
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v2, "load_ad_duration"

    if-eqz p2, :cond_6a

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_6a

    .line 114
    :try_start_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 115
    const-string v4, "device"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v4, "total_time"

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 118
    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    goto :goto_33

    .line 122
    :cond_4d
    instance-of p2, v4, Ljava/lang/Long;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_65

    const-string v5, "duration"

    if-eqz p2, :cond_57

    .line 123
    :try_start_53
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5b

    .line 125
    :cond_57
    const/4 p2, 0x0

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    :goto_5b
    const-string p2, "ad_extra_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_64} :catch_65

    .line 130
    goto :goto_66

    .line 129
    :catch_65
    move-exception p2

    .line 131
    :goto_66
    invoke-static {v0, p0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6d

    .line 133
    :cond_6a
    invoke-static {v0, p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_6d
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 576
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dislike/a;->a()Lcom/bytedance/sdk/openadsdk/dislike/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V

    .line 577
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tt_dislike_icon "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdEvent"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_29
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    .line 217
    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2f

    .line 220
    :cond_b
    const-string v0, "embeded_ad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 221
    return-void

    .line 223
    :cond_14
    nop

    .line 224
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_23

    .line 225
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 226
    goto :goto_24

    .line 228
    :cond_23
    const/4 v0, 0x0

    .line 231
    :goto_24
    :try_start_24
    const-string p0, "video_middle_page"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 234
    goto :goto_2e

    .line 232
    :catch_2a
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    :goto_2e
    return-void

    .line 218
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .registers 13

    .line 912
    const-string v0, "ad_extra_data"

    if-eqz p7, :cond_67

    .line 913
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 915
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {p7, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    if-eqz v2, :cond_15

    .line 917
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 919
    :cond_15
    const-string v2, "device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/i;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    const-string v0, "tag"

    invoke-virtual {p7, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v0, "click"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 924
    const-string v0, "log_extra"

    invoke-virtual {p7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 926
    long-to-double v1, v1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 927
    const-string v1, "show_time"

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v2

    :goto_5e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p7, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_65} :catch_66

    .line 930
    :cond_65
    goto :goto_67

    .line 929
    :catch_66
    move-exception v0

    .line 932
    :cond_67
    :goto_67
    invoke-static/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p0

    .line 933
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 934
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p0

    if-eqz p0, :cond_7f

    .line 935
    const-string p0, "AdEvent"

    const-string p1, "sendJsAdEvent"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_7f
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    if-nez p1, :cond_a

    goto :goto_1b

    .line 208
    :cond_a
    const-string v0, "feed_video_middle_page"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 209
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    .line 210
    return p1

    .line 212
    :cond_1a
    return v1

    .line 206
    :cond_1b
    :goto_1b
    return v1
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 803
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 531
    if-eqz p4, :cond_43

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 532
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 534
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 535
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 536
    :goto_1a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 537
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    goto :goto_1a

    .line 540
    :cond_34
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    .line 543
    goto :goto_3f

    .line 542
    :catch_3e
    move-exception p4

    .line 544
    :goto_3f
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 545
    goto :goto_46

    .line 546
    :cond_43
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_46
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 808
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 810
    if-eqz p4, :cond_13

    .line 811
    :try_start_7
    const-string v1, "ad_extra_data"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    .line 813
    :catch_11
    move-exception p4

    goto :goto_14

    .line 814
    :cond_13
    :goto_13
    nop

    .line 816
    :goto_14
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 817
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 868
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 870
    :try_start_5
    const-string v1, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    .line 872
    goto :goto_10

    .line 871
    :catch_f
    move-exception v1

    .line 873
    :goto_10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, p3, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p0

    .line 874
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 875
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p0

    if-eqz p0, :cond_55

    .line 876
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tag: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "label: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdEvent"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_55
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 624
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 625
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 627
    if-eqz p4, :cond_2e

    .line 628
    :try_start_c
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 629
    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 630
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 631
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    goto :goto_14

    .line 634
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    .line 637
    goto :goto_40

    .line 635
    :catchall_38
    move-exception p4

    .line 636
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 638
    :goto_40
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 639
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 940
    if-nez p4, :cond_7

    .line 942
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 944
    :cond_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 945
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 642
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 643
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 645
    if-eqz p4, :cond_2e

    .line 646
    :try_start_c
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 647
    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 648
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    goto :goto_14

    .line 652
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    .line 655
    goto :goto_40

    .line 653
    :catchall_38
    move-exception p4

    .line 654
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 656
    :goto_40
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 657
    return-void
.end method

.method static synthetic d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 660
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/d;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 661
    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 890
    if-nez p1, :cond_3

    .line 891
    return-void

    .line 894
    :cond_3
    if-eqz p4, :cond_11

    .line 895
    :try_start_5
    const-string v0, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_11

    .line 897
    :catch_f
    move-exception v0

    goto :goto_12

    .line 898
    :cond_11
    :goto_11
    nop

    .line 899
    :goto_12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, p3, v0, p4}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p0

    .line 900
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p4

    invoke-virtual {p4, p0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 901
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p0

    if-eqz p0, :cond_57

    .line 902
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "tag: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "label: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdEvent"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_57
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 664
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 665
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 667
    if-eqz p4, :cond_2e

    .line 668
    :try_start_c
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 669
    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 670
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 671
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    goto :goto_14

    .line 674
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    .line 677
    goto :goto_40

    .line 675
    :catchall_38
    move-exception p4

    .line 676
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 678
    :goto_40
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 679
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 744
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 745
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 747
    if-eqz p4, :cond_2e

    .line 748
    :try_start_c
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 749
    check-cast v2, Ljava/util/Map$Entry;

    .line 750
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    goto :goto_14

    .line 753
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_38

    .line 756
    goto :goto_3c

    .line 754
    :catch_38
    move-exception p4

    .line 755
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    .line 757
    :goto_3c
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 758
    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 770
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 771
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 773
    if-eqz p4, :cond_2e

    .line 774
    :try_start_c
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 775
    check-cast v2, Ljava/util/Map$Entry;

    .line 776
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    goto :goto_14

    .line 779
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_38

    .line 782
    goto :goto_3c

    .line 780
    :catch_38
    move-exception p4

    .line 781
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    .line 783
    :goto_3c
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 784
    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 820
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 822
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 823
    if-eqz p4, :cond_2e

    .line 824
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 825
    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 826
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    goto :goto_14

    .line 830
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 832
    goto :goto_39

    .line 831
    :catch_38
    move-exception p4

    .line 834
    :goto_39
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 835
    return-void
.end method

.method public static j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 848
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 850
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 851
    const-string v2, "refer"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    if-eqz p4, :cond_33

    .line 853
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 854
    :goto_19
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_33

    .line 855
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 856
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    goto :goto_19

    .line 859
    :cond_33
    const-string p3, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    .line 861
    goto :goto_3e

    .line 860
    :catchall_3d
    move-exception p3

    .line 862
    :goto_3e
    const-string p3, "click_open"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 863
    return-void
.end method

.method public static k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 951
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 953
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 954
    if-eqz p4, :cond_2e

    .line 955
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_14
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 956
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    goto :goto_14

    .line 959
    :cond_2e
    const-string p4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 962
    goto :goto_39

    .line 960
    :catch_38
    move-exception p4

    .line 963
    :goto_39
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 964
    return-void
.end method
