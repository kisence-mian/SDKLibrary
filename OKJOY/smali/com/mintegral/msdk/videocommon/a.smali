.class public final Lcom/mintegral/msdk/videocommon/a;
.super Ljava/lang/Object;
.source "TemplateWebviewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videocommon/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(ILcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/videocommon/a$a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 49
    if-nez p1, :cond_5

    move-object v0, v1

    .line 97
    :goto_4
    return-object v0

    .line 52
    :cond_5
    const-string v0, "TemplateWebviewCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isBidCampaign = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_27
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    .line 55
    const/16 v2, 0x120

    if-ne p0, v2, :cond_33

    .line 56
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_33
    sparse-switch p0, :sswitch_data_ce

    .line 87
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 88
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/a$a;

    goto :goto_4

    .line 60
    :sswitch_4b
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 61
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 62
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/a$a;

    goto :goto_4

    .line 65
    :cond_66
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 66
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/a$a;

    goto :goto_4

    .line 71
    :sswitch_7b
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 72
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 73
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/a$a;

    goto/16 :goto_4

    .line 76
    :cond_97
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 77
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/a$a;

    goto/16 :goto_4

    .line 82
    :sswitch_ad
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 83
    sget-object v2, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/a$a;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_c1} :catch_c3

    goto/16 :goto_4

    .line 92
    :catch_c3
    move-exception v0

    .line 93
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_cb

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_cb
    move-object v0, v1

    .line 97
    goto/16 :goto_4

    .line 58
    :sswitch_data_ce
    .sparse-switch
        0x5e -> :sswitch_4b
        0x11f -> :sswitch_7b
        0x120 -> :sswitch_ad
    .end sparse-switch
.end method

.method public static a(IZ)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sparse-switch p0, :sswitch_data_1a

    .line 113
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    :goto_5
    return-object v0

    .line 104
    :sswitch_6
    if-eqz p1, :cond_b

    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_5

    .line 107
    :sswitch_e
    if-eqz p1, :cond_13

    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_5

    :cond_13
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_5

    .line 110
    :sswitch_16
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_5

    .line 102
    nop

    :sswitch_data_1a
    .sparse-switch
        0x5e -> :sswitch_6
        0x11f -> :sswitch_e
        0x120 -> :sswitch_16
    .end sparse-switch
.end method

.method public static a(I)V
    .registers 3

    .prologue
    .line 171
    sparse-switch p0, :sswitch_data_22

    .line 188
    :cond_3
    :goto_3
    return-void

    .line 173
    :sswitch_4
    :try_start_4
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_3

    .line 183
    :catch_e
    move-exception v0

    .line 184
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 178
    :sswitch_17
    :try_start_17
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 179
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_e

    goto :goto_3

    .line 171
    nop

    :sswitch_data_22
    .sparse-switch
        0x5e -> :sswitch_4
        0x11f -> :sswitch_17
    .end sparse-switch
.end method

.method public static a(ILjava/lang/String;Lcom/mintegral/msdk/videocommon/a$a;)V
    .registers 5

    .prologue
    .line 223
    sparse-switch p0, :sswitch_data_30

    .line 242
    :cond_3
    :goto_3
    return-void

    .line 225
    :sswitch_4
    :try_start_4
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_f

    .line 226
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 228
    :cond_f
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_3

    .line 237
    :catch_15
    move-exception v0

    .line 238
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 231
    :sswitch_1e
    :try_start_1e
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_29

    .line 232
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 234
    :cond_29
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_15

    goto :goto_3

    .line 223
    nop

    :sswitch_data_30
    .sparse-switch
        0x5e -> :sswitch_4
        0x11f -> :sswitch_1e
    .end sparse-switch
.end method

.method public static b(I)V
    .registers 3

    .prologue
    .line 192
    sparse-switch p0, :sswitch_data_34

    .line 209
    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_c

    .line 210
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 219
    :cond_c
    :goto_c
    return-void

    .line 194
    :sswitch_d
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_c

    .line 195
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    goto :goto_c

    .line 214
    :catch_17
    move-exception v0

    .line 215
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 199
    :sswitch_20
    :try_start_20
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_c

    .line 200
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_c

    .line 204
    :sswitch_2a
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_c

    .line 205
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_17

    goto :goto_c

    .line 192
    :sswitch_data_34
    .sparse-switch
        0x5e -> :sswitch_d
        0x11f -> :sswitch_20
        0x120 -> :sswitch_2a
    .end sparse-switch
.end method

.method public static b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 120
    if-nez p1, :cond_3

    .line 167
    :cond_2
    :goto_2
    return-void

    .line 124
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    .line 125
    const/16 v1, 0x120

    if-ne p0, v1, :cond_f

    .line 126
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_f
    sparse-switch p0, :sswitch_data_64

    .line 157
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 158
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_2

    .line 162
    :catch_1c
    move-exception v0

    .line 163
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 130
    :sswitch_25
    :try_start_25
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 131
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 132
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 135
    :cond_35
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 136
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 141
    :sswitch_3f
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 142
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 143
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 146
    :cond_4f
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 147
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    :sswitch_59
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 153
    sget-object v1, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_62} :catch_1c

    goto :goto_2

    .line 128
    nop

    :sswitch_data_64
    .sparse-switch
        0x5e -> :sswitch_25
        0x11f -> :sswitch_3f
        0x120 -> :sswitch_59
    .end sparse-switch
.end method

.method public static b(ILjava/lang/String;Lcom/mintegral/msdk/videocommon/a$a;)V
    .registers 5

    .prologue
    .line 246
    sparse-switch p0, :sswitch_data_50

    .line 266
    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_e

    .line 267
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 269
    :cond_e
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_13
    :goto_13
    return-void

    .line 248
    :sswitch_14
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1f

    .line 249
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    :cond_1f
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_13

    .line 272
    :catch_25
    move-exception v0

    .line 273
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 254
    :sswitch_2e
    :try_start_2e
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_39

    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    :cond_39
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 260
    :sswitch_3f
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_4a

    .line 261
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 263
    :cond_4a
    sget-object v0, Lcom/mintegral/msdk/videocommon/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4f} :catch_25

    goto :goto_13

    .line 246
    :sswitch_data_50
    .sparse-switch
        0x5e -> :sswitch_14
        0x11f -> :sswitch_2e
        0x120 -> :sswitch_3f
    .end sparse-switch
.end method
