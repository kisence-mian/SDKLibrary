.class public Lcom/tendcloud/tenddata/game/as;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final A:Ljava/lang/String; = "TDadditionalVersionCode"

.field private static final B:Ljava/lang/String; = "TDtime_set_collect_net"

.field private static final C:Ljava/lang/String; = "TDdeep_link_url"

.field private static final D:Ljava/lang/String; = "TDtd_role_id"

.field private static final E:Ljava/lang/String; = "TDpref.accountid.key"

.field private static final F:Ljava/lang/String; = "TDpref.accountgame.key"

.field private static final G:Ljava/lang/String; = "TDpref.missionid.key"

.field private static final H:Ljava/lang/String; = "TDpref.game.session.startsystem.key"

.field public static final a:Ljava/lang/String; = "TDpref.profile.key"

.field public static final b:Ljava/lang/String; = "TDpref.session.key"

.field public static final c:Ljava/lang/String; = "TDpref.session.backup.key"

.field public static final d:Ljava/lang/String; = "TDpref.lastactivity.key"

.field public static final e:Ljava/lang/String; = "TDpref.start.key"

.field public static final f:Ljava/lang/String; = "TDpref.init.key"

.field public static final g:Ljava/lang/String; = "TDpref.init.flag"

.field public static final h:Ljava/lang/String; = "TDpref.actstart.key"

.field public static final i:Ljava/lang/String; = "TDpref.end.key"

.field public static final j:Ljava/lang/String; = "TDpref.ip"

.field public static final k:Ljava/lang/String; = "TD_CHANNEL_ID"

.field public static final l:Ljava/lang/String; = "TDappcontext_push"

.field public static final m:Ljava/lang/String; = "TDpref.tokensync.key"

.field public static final n:Ljava/lang/String; = "TDpref.push.msgid.key"

.field public static final o:Ljava/lang/String; = "TDpref.running.app.key"

.field public static final p:Ljava/lang/String; = "activities"

.field public static final q:Ljava/lang/String; = "handHolding"

.field public static final r:Ljava/lang/String; = "pref_antiCheatingData"

.field public static final s:Ljava/lang/String; = "TDpref_longtime"

.field public static final t:Ljava/lang/String; = "TDpref_shorttime"

.field public static final u:Ljava/lang/String; = "TDaes_key"

.field public static final v:Ljava/lang/String; = "TDpref_game"

.field public static final w:Ljava/lang/String; = "TD_push_pref_file"

.field static final x:Ljava/lang/String; = "TDisAppQuiting"

.field public static final y:Ljava/lang/String; = "TDpref.last.sdk.check"

.field public static final z:Ljava/lang/String; = "TDadditionalVersionName"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .line 81
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 82
    return-object v1

    .line 84
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_longtime"

    const-string v3, "TDaes_key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-object v0

    .line 86
    :catchall_11
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 88
    return-object v1
.end method

.method public static a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 5

    .line 106
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    if-nez p0, :cond_8

    goto :goto_2d

    .line 109
    :cond_8
    :try_start_8
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDpref_longtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TDpref.session.key"

    invoke-static {v0, p0, v2, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_28

    return-object p0

    .line 111
    :catchall_28
    move-exception p0

    .line 112
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 113
    return-object v1

    .line 107
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 473
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 474
    return-object v1

    .line 476
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 477
    :catchall_f
    move-exception p0

    .line 478
    return-object v1
.end method

.method public static a(JLcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 223
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_28

    if-nez p2, :cond_7

    goto :goto_28

    .line 227
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TDpref.start.key"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    .line 231
    goto :goto_27

    .line 229
    :catchall_26
    move-exception p0

    .line 232
    :goto_27
    return-void

    .line 224
    :cond_28
    :goto_28
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 118
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_2b

    if-nez p1, :cond_7

    goto :goto_2b

    .line 121
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TDpref.session.key"

    invoke-static {v0, p1, v1, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    .line 126
    goto :goto_2a

    .line 123
    :catchall_26
    move-exception p0

    .line 125
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 127
    :goto_2a
    return-void

    .line 119
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 464
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 465
    return-void

    .line 467
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    .line 470
    goto :goto_e

    .line 468
    :catchall_d
    move-exception p0

    .line 471
    :goto_e
    return-void
.end method

.method public static a(ZLcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 258
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_2f

    if-nez p1, :cond_7

    goto :goto_2f

    .line 261
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TDpref.init.flag"

    if-eqz p0, :cond_27

    const-wide/16 v2, 0x1

    goto :goto_29

    :cond_27
    const-wide/16 v2, 0x0

    :goto_29
    invoke-static {v0, p1, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2d

    .line 264
    goto :goto_2e

    .line 262
    :catchall_2d
    move-exception p0

    .line 265
    :goto_2e
    return-void

    .line 259
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static b(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .registers 5

    .line 147
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    if-nez p0, :cond_8

    goto :goto_2d

    .line 150
    :cond_8
    :try_start_8
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDpref_longtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TDpref.session.backup.key"

    invoke-static {v0, p0, v2, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_28

    return-object p0

    .line 152
    :catchall_28
    move-exception p0

    .line 153
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 154
    return-object v1

    .line 148
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 491
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 492
    return-object v1

    .line 494
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 495
    :catchall_f
    move-exception p0

    .line 496
    return-object v1
.end method

.method public static b()V
    .registers 3

    .line 159
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 160
    return-void

    .line 163
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_CHANNEL_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_called"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    .line 169
    goto :goto_21

    .line 166
    :catchall_1d
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 170
    :goto_21
    return-void
.end method

.method public static b(JLcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 236
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_28

    if-nez p2, :cond_7

    goto :goto_28

    .line 239
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TDpref.init.key"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    .line 242
    goto :goto_27

    .line 240
    :catchall_26
    move-exception p0

    .line 243
    :goto_27
    return-void

    .line 237
    :cond_28
    :goto_28
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 135
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_2b

    if-nez p1, :cond_7

    goto :goto_2b

    .line 138
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TDpref.session.backup.key"

    invoke-static {v0, p1, v1, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    .line 143
    goto :goto_2a

    .line 140
    :catchall_26
    move-exception p0

    .line 142
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 144
    :goto_2a
    return-void

    .line 136
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 482
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 483
    return-void

    .line 485
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    .line 488
    goto :goto_e

    .line 486
    :catchall_d
    move-exception p0

    .line 489
    :goto_e
    return-void
.end method

.method public static c(Lcom/tendcloud/tenddata/game/a;)J
    .registers 6

    .line 211
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2b

    if-nez p0, :cond_9

    goto :goto_2b

    .line 215
    :cond_9
    :try_start_9
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.start.key"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_29

    return-wide v0

    .line 217
    :catchall_29
    move-exception p0

    .line 218
    return-wide v1

    .line 212
    :cond_2b
    :goto_2b
    return-wide v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 586
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 587
    return-object v1

    .line 589
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_game"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "TDpref.accountgame.key"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_23

    return-object p0

    .line 590
    :catchall_23
    move-exception p0

    .line 591
    return-object v1
.end method

.method public static c(JLcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 338
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_28

    if-nez p2, :cond_7

    goto :goto_28

    .line 342
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_shorttime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TDpref.end.key"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    .line 345
    goto :goto_27

    .line 343
    :catchall_26
    move-exception p0

    .line 346
    :goto_27
    return-void

    .line 339
    :cond_28
    :goto_28
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 597
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 598
    return-void

    .line 600
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "TDpref.accountgame.key"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    .line 603
    goto :goto_21

    .line 601
    :catchall_20
    move-exception p0

    .line 604
    :goto_21
    return-void
.end method

.method public static c()Z
    .registers 3

    .line 173
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 174
    return v1

    .line 177
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TD_CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    const-string v2, "location_called"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return v0

    .line 180
    :catchall_15
    move-exception v0

    .line 181
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 182
    return v1
.end method

.method public static d(Lcom/tendcloud/tenddata/game/a;)J
    .registers 6

    .line 246
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2b

    if-nez p0, :cond_9

    goto :goto_2b

    .line 250
    :cond_9
    :try_start_9
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.init.key"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_29

    return-wide v0

    .line 252
    :catchall_29
    move-exception p0

    .line 253
    return-wide v1

    .line 247
    :cond_2b
    :goto_2b
    return-wide v1
.end method

.method public static d()Ljava/lang/String;
    .registers 4

    .line 199
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 200
    return-object v1

    .line 203
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDpref.lastactivity.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    .line 205
    :catchall_12
    move-exception v0

    .line 206
    return-object v1
.end method

.method public static e()J
    .registers 5

    .line 291
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 292
    return-wide v1

    .line 295
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.init.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-wide v0

    .line 297
    :catchall_12
    move-exception v0

    .line 298
    return-wide v1
.end method

.method public static e(Lcom/tendcloud/tenddata/game/a;)J
    .registers 6

    .line 268
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_2b

    if-nez p0, :cond_9

    goto :goto_2b

    .line 272
    :cond_9
    :try_start_9
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.init.flag"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_29

    return-wide v0

    .line 274
    :catchall_29
    move-exception p0

    .line 275
    return-wide v1

    .line 269
    :cond_2b
    :goto_2b
    return-wide v1
.end method

.method public static f()J
    .registers 5

    .line 314
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 315
    return-wide v1

    .line 318
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_shorttime"

    const-string v4, "TDpref.actstart.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-wide v0

    .line 320
    :catchall_12
    move-exception v0

    .line 321
    return-wide v1
.end method

.method public static f(Lcom/tendcloud/tenddata/game/a;)J
    .registers 6

    .line 326
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2b

    if-nez p0, :cond_9

    goto :goto_2b

    .line 330
    :cond_9
    :try_start_9
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_shorttime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TDpref.end.key"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_29

    return-wide v0

    .line 332
    :catchall_29
    move-exception p0

    .line 333
    return-wide v1

    .line 327
    :cond_2b
    :goto_2b
    return-wide v1
.end method

.method public static g()J
    .registers 5

    .line 365
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 366
    return-wide v1

    .line 369
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.running.app.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-wide v0

    .line 370
    :catchall_12
    move-exception v0

    .line 371
    return-wide v1
.end method

.method public static h()Ljava/lang/String;
    .registers 4

    .line 398
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 399
    return-object v1

    .line 402
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_longtime"

    const-string v3, "TDadditionalVersionName"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-object v0

    .line 403
    :catchall_11
    move-exception v0

    .line 404
    return-object v1
.end method

.method public static i()J
    .registers 5

    .line 420
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7

    .line 421
    return-wide v1

    .line 424
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDadditionalVersionCode"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-wide v0

    .line 425
    :catchall_12
    move-exception v0

    .line 426
    return-wide v1
.end method

.method public static j()I
    .registers 5

    .line 435
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    .line 436
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 438
    :cond_17
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->b(Landroid/content/Context;)I

    move-result v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return v0

    .line 439
    :catchall_22
    move-exception v0

    .line 442
    const/4 v0, -0x1

    return v0
.end method

.method public static k()Ljava/lang/String;
    .registers 2

    .line 448
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 449
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 451
    :cond_b
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    .line 452
    :catchall_16
    move-exception v0

    .line 455
    const-string v0, "unknown"

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 4

    .line 510
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 511
    return-object v1

    .line 513
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDtd_role_id"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-object v0

    .line 514
    :catchall_11
    move-exception v0

    .line 515
    return-object v1
.end method

.method public static m()J
    .registers 5

    .line 520
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 521
    return-wide v1

    .line 524
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TDpref_shorttime"

    const-string v4, "TDtime_set_collect_net"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-wide v0

    .line 525
    :catchall_12
    move-exception v0

    .line 526
    return-wide v1
.end method

.method public static n()Ljava/lang/String;
    .registers 4

    .line 540
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 541
    return-object v1

    .line 543
    :cond_6
    :try_start_6
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDdeep_link_url"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-object v0

    .line 544
    :catchall_11
    move-exception v0

    .line 545
    return-object v1
.end method

.method public static o()Ljava/lang/String;
    .registers 4

    .line 565
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 566
    return-object v1

    .line 568
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_game"

    const-string v3, "TDpref.accountid.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    .line 569
    :catchall_12
    move-exception v0

    .line 570
    return-object v1
.end method

.method public static p()Ljava/lang/String;
    .registers 4

    .line 616
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 617
    return-object v1

    .line 619
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TDpref_game"

    const-string v3, "TDpref.missionid.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    .line 620
    :catchall_12
    move-exception v0

    .line 621
    return-object v1
.end method

.method public static q()V
    .registers 5

    .line 626
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 627
    return-void

    .line 629
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.game.session.startsystem.key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    .line 632
    goto :goto_14

    .line 630
    :catchall_13
    move-exception v0

    .line 633
    :goto_14
    return-void
.end method

.method public static r()Ljava/lang/String;
    .registers 4

    .line 646
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 647
    return-object v1

    .line 649
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TD_push_pref_file"

    const-string v3, "TDappcontext_push"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    .line 650
    :catchall_12
    move-exception v0

    .line 651
    return-object v1
.end method

.method public static s()J
    .registers 5

    .line 666
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 667
    return-wide v1

    .line 669
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TD_push_pref_file"

    const-string v4, "TDpref.tokensync.key"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-wide v0

    .line 670
    :catchall_12
    move-exception v0

    .line 671
    return-wide v1
.end method

.method public static setAESKey(Ljava/lang/String;)V
    .registers 4

    .line 93
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 94
    return-void

    .line 97
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDaes_key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 102
    goto :goto_13

    .line 99
    :catchall_f
    move-exception p0

    .line 101
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 103
    :goto_13
    return-void
.end method

.method public static setAccountId(Ljava/lang/String;)V
    .registers 4

    .line 575
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 576
    return-void

    .line 578
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.accountid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 581
    goto :goto_10

    .line 579
    :catchall_f
    move-exception p0

    .line 583
    :goto_10
    return-void
.end method

.method public static setActivityStartTime(J)V
    .registers 5

    .line 303
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 304
    return-void

    .line 307
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.actstart.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 311
    goto :goto_10

    .line 309
    :catchall_f
    move-exception p0

    .line 312
    :goto_10
    return-void
.end method

.method public static setAdditionalVersionCode(J)V
    .registers 5

    .line 409
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 410
    return-void

    .line 413
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDadditionalVersionCode"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 416
    goto :goto_10

    .line 414
    :catchall_f
    move-exception p0

    .line 417
    :goto_10
    return-void
.end method

.method public static setAdditionalVersionName(Ljava/lang/String;)V
    .registers 4

    .line 387
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 388
    return-void

    .line 391
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDadditionalVersionName"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 394
    goto :goto_10

    .line 392
    :catchall_f
    move-exception p0

    .line 395
    :goto_10
    return-void
.end method

.method public static setCollectNetInfoTime(J)V
    .registers 5

    .line 530
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 531
    return-void

    .line 533
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDtime_set_collect_net"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 536
    goto :goto_10

    .line 534
    :catchall_f
    move-exception p0

    .line 537
    :goto_10
    return-void
.end method

.method public static setCollectRunningTime(J)V
    .registers 5

    .line 358
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.running.app.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 362
    goto :goto_b

    .line 360
    :catchall_a
    move-exception p0

    .line 363
    :goto_b
    return-void
.end method

.method public static setDeepLink(Ljava/lang/String;)V
    .registers 4

    .line 550
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 551
    return-void

    .line 553
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDdeep_link_url"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 556
    goto :goto_10

    .line 554
    :catchall_f
    move-exception p0

    .line 557
    :goto_10
    return-void
.end method

.method public static setInitTime(J)V
    .registers 5

    .line 281
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 282
    return-void

    .line 284
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.init.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 287
    goto :goto_10

    .line 285
    :catchall_f
    move-exception p0

    .line 288
    :goto_10
    return-void
.end method

.method public static setLastActivity(Ljava/lang/String;)V
    .registers 4

    .line 187
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 188
    return-void

    .line 191
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.lastactivity.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 195
    goto :goto_10

    .line 193
    :catchall_f
    move-exception p0

    .line 196
    :goto_10
    return-void
.end method

.method public static setLastRoleName(Ljava/lang/String;)V
    .registers 4

    .line 500
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 501
    return-void

    .line 503
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDtd_role_id"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 506
    goto :goto_10

    .line 504
    :catchall_f
    move-exception p0

    .line 507
    :goto_10
    return-void
.end method

.method public static setMissionId(Ljava/lang/String;)V
    .registers 4

    .line 607
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 608
    return-void

    .line 610
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.missionid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 613
    goto :goto_10

    .line 611
    :catchall_f
    move-exception p0

    .line 614
    :goto_10
    return-void
.end method

.method public static setPostProfile(Z)V
    .registers 6

    .line 350
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.profile.key"

    if-eqz p0, :cond_b

    const-wide/16 v3, 0x1

    goto :goto_d

    :cond_b
    const-wide/16 v3, 0x0

    :goto_d
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 354
    goto :goto_12

    .line 352
    :catchall_11
    move-exception p0

    .line 355
    :goto_12
    return-void
.end method

.method public static setPushAppContext(Ljava/lang/String;)V
    .registers 4

    .line 636
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 637
    return-void

    .line 639
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDappcontext_push"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 642
    goto :goto_10

    .line 640
    :catchall_f
    move-exception p0

    .line 643
    :goto_10
    return-void
.end method

.method public static setPushLastMsgId(Ljava/lang/String;)V
    .registers 4

    .line 676
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 677
    return-void

    .line 679
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.push.msgid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 682
    goto :goto_10

    .line 680
    :catchall_f
    move-exception p0

    .line 683
    :goto_10
    return-void
.end method

.method public static setPushSyncTokenLastTime(J)V
    .registers 5

    .line 656
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 657
    return-void

    .line 659
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.tokensync.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 662
    goto :goto_10

    .line 660
    :catchall_f
    move-exception p0

    .line 663
    :goto_10
    return-void
.end method

.method public static t()Ljava/lang/String;
    .registers 4

    .line 686
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 687
    return-object v1

    .line 689
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TD_push_pref_file"

    const-string v3, "TDpref.push.msgid.key"

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    .line 690
    :catchall_12
    move-exception v0

    .line 691
    return-object v1
.end method
