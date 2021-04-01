.class public Lcom/mintegral/msdk/videocommon/e/b;
.super Ljava/lang/Object;
.source "RewardSettingManager.java"


# static fields
.field public static a:Lcom/mintegral/msdk/videocommon/e/a;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/mintegral/msdk/videocommon/e/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/videocommon/e/b;->a:Lcom/mintegral/msdk/videocommon/e/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a()Lcom/mintegral/msdk/videocommon/e/b;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->c:Lcom/mintegral/msdk/videocommon/e/b;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/mintegral/msdk/videocommon/e/b;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->c:Lcom/mintegral/msdk/videocommon/e/b;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/mintegral/msdk/videocommon/e/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/e/b;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/e/b;->c:Lcom/mintegral/msdk/videocommon/e/b;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->c:Lcom/mintegral/msdk/videocommon/e/b;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;
    .registers 5

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reward_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 116
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/e/c;

    .line 125
    :goto_29
    return-object v0

    .line 118
    :cond_2a
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/e/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/e/b;->a(Lcom/mintegral/msdk/videocommon/e/c;)Z

    move-result v2

    .line 121
    if-eqz v2, :cond_3e

    .line 122
    const/4 v0, 0x0

    goto :goto_29

    .line 124
    :cond_3e
    sget-object v2, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;
    .registers 6

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reward_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 133
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/e/c;

    .line 146
    :cond_29
    :goto_29
    return-object v0

    .line 135
    :cond_2a
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/e/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/e/b;->a(Lcom/mintegral/msdk/videocommon/e/c;)Z

    move-result v2

    .line 138
    if-eqz v2, :cond_43

    .line 139
    if-nez v0, :cond_29

    .line 140
    invoke-static {p2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    goto :goto_29

    .line 145
    :cond_43
    sget-object v2, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method private static a(Z)Lcom/mintegral/msdk/videocommon/e/c;
    .registers 7

    .prologue
    .line 298
    new-instance v1, Lcom/mintegral/msdk/videocommon/e/c;

    invoke-direct {v1}, Lcom/mintegral/msdk/videocommon/e/c;-><init>()V

    .line 300
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v2, Lcom/mintegral/msdk/videocommon/b/b;

    const/4 v3, 0x1

    const/16 v4, 0x3a98

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/mintegral/msdk/videocommon/b/b;-><init>(IILcom/mintegral/msdk/videocommon/b/a;)V

    .line 302
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/e/c;->a(Ljava/util/List;)V

    .line 304
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->x()V

    .line 305
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->v()V

    .line 306
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->z()V

    .line 307
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->H()V

    .line 308
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->A()V

    .line 309
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->Q()V

    .line 310
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->O()V

    .line 311
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->C()V

    .line 312
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->E()V

    .line 313
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->G()V

    .line 314
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->q()V

    .line 315
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->r()V

    .line 316
    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/e/c;->b(I)V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/e/c;->c(I)V

    .line 318
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->p()V

    .line 319
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->i()V

    .line 320
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->g()V

    .line 321
    if-eqz p0, :cond_5f

    .line 322
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/e/c;->a(I)V

    .line 326
    :goto_55
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->d()V

    .line 327
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->b()V

    .line 328
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->n()V

    .line 333
    :goto_5e
    return-object v1

    .line 324
    :cond_5f
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/e/c;->a(I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_64

    goto :goto_55

    .line 330
    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V
    .registers 10

    .prologue
    .line 107
    new-instance v0, Lcom/mintegral/msdk/videocommon/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/c/a;-><init>()V

    .line 109
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V

    .line 111
    return-void
.end method

.method private static a(Lcom/mintegral/msdk/videocommon/e/c;)Z
    .registers 8

    .prologue
    .line 198
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_3f

    if-eqz p0, :cond_3f

    .line 200
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->c()J

    move-result-wide v0

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 203
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/e/c;->I()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 205
    cmp-long v4, v0, v2

    if-lez v4, :cond_3f

    .line 206
    const-string v4, "RewardSettingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unit setting  nexttime is not ready  [settingNextRequestTime= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    .line 212
    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method public static b()Lcom/mintegral/msdk/videocommon/e/a;
    .registers 8

    .prologue
    .line 67
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->a:Lcom/mintegral/msdk/videocommon/e/a;

    if-nez v0, :cond_a1

    .line 68
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reward_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 72
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/e/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_68

    .line 1160
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->a()J

    move-result-wide v2

    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1162
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->k()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 1163
    cmp-long v1, v2, v4

    if-lez v1, :cond_68

    .line 1164
    const-string v1, "RewardSettingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "app setting nexttime is not ready  [settingNextRequestTime= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/4 v1, 0x0

    .line 73
    :goto_65
    if-nez v1, :cond_71

    .line 90
    :goto_67
    return-object v0

    .line 1169
    :cond_68
    const-string v1, "RewardSettingManager"

    const-string v2, "app setting timeout or not exists"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const/4 v1, 0x1

    goto :goto_65

    .line 77
    :cond_71
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/e/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->c()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    goto :goto_67

    .line 84
    :cond_89
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/e/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->c()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    goto :goto_67

    .line 90
    :cond_a1
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/b;->a:Lcom/mintegral/msdk/videocommon/e/a;

    goto :goto_67
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reward_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {p1}, Lcom/mintegral/msdk/videocommon/e/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videocommon/e/b;->a:Lcom/mintegral/msdk/videocommon/e/a;

    .line 261
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 268
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 269
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v2, "unitSetting"

    .line 271
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_2e

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 274
    const-string v3, "unitId"

    .line 275
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2e

    .line 277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2f

    move-result v1

    if-nez v1, :cond_2e

    .line 278
    const/4 v0, 0x1

    .line 287
    :cond_2e
    :goto_2e
    return v0

    .line 284
    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public static c()Lcom/mintegral/msdk/videocommon/e/a;
    .registers 7

    .prologue
    const/16 v4, 0x3e8

    .line 175
    new-instance v0, Lcom/mintegral/msdk/videocommon/e/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/e/a;-><init>()V

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v2, "1"

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v2, "9"

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 179
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "8"

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 181
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    const-string v3, "1"

    new-instance v4, Lcom/mintegral/msdk/videocommon/b/d;

    const-string v5, "Virtual Item"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/mintegral/msdk/videocommon/b/d;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/a;->a(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/videocommon/e/a;->b(Ljava/util/Map;)V

    .line 187
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->b()V

    .line 188
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->d()V

    .line 189
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->f()V

    .line 190
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->h()V

    .line 191
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->j()V

    .line 192
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    :goto_6
    return-void

    .line 242
    :cond_7
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/videocommon/e/b$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videocommon/e/b$1;-><init>(Lcom/mintegral/msdk/videocommon/e/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$c;)V

    goto :goto_6
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 97
    new-instance v0, Lcom/mintegral/msdk/videocommon/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/c/a;-><init>()V

    .line 99
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/mintegral/msdk/videocommon/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 227
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    .line 228
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/c;->M()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 230
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 231
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videocommon/e/b;->c(Ljava/lang/String;)V

    .line 235
    :cond_30
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reward_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p3}, Lcom/mintegral/msdk/videocommon/e/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v1

    .line 219
    sget-object v2, Lcom/mintegral/msdk/videocommon/e/b;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/c;->M()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videocommon/e/b;->c(Ljava/lang/String;)V

    .line 223
    return-void
.end method
