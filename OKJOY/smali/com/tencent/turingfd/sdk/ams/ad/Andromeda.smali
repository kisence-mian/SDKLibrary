.class public Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/volatile;


# instance fields
.field public sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/16 v12, -0x65

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    if-eqz v0, :cond_10

    .line 2
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->Sb:I

    if-eqz v2, :cond_10

    .line 29
    :goto_d
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    return-void

    .line 2
    :cond_10
    const-string v0, ""

    .line 3
    :try_start_12
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/void;->e(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b()Z

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, -0xa

    .line 5
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_20} :catch_12e

    move-result-object v0

    goto :goto_d

    .line 6
    :cond_22
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/try;->d()Lcom/tencent/turingfd/sdk/ams/ad/try;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 7
    iget-object v10, v8, Lcom/tencent/turingfd/sdk/ams/ad/try;->b:Lcom/tencent/turingfd/sdk/ams/ad/if;

    if-nez v10, :cond_3a

    move-object v0, v6

    .line 23
    :cond_2f
    :goto_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 24
    invoke-static {v12}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v0

    goto :goto_d

    .line 8
    :cond_3a
    iget-wide v2, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4a

    move v0, v1

    :goto_45
    if-eqz v0, :cond_4c

    .line 9
    iget-object v0, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->value:Ljava/lang/String;

    goto :goto_2f

    :cond_4a
    move v0, v7

    .line 8
    goto :goto_45

    .line 10
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_66
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_78} :catch_114
    .catchall {:try_start_66 .. :try_end_78} :catchall_135

    move-result-object v1

    if-eqz v1, :cond_f1

    :try_start_7b
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/database/Cursor;)Lcom/tencent/turingfd/sdk/ams/ad/int;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->value:Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_81} :catch_110
    .catchall {:try_start_7b .. :try_end_81} :catchall_126

    .line 11
    :try_start_81
    iput-object v2, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->value:Ljava/lang/String;

    .line 12
    iget-wide v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->k:J

    .line 13
    iput-wide v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->i:J

    .line 14
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->code:I

    .line 15
    iput v3, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->code:I

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_95} :catch_d4
    .catchall {:try_start_81 .. :try_end_95} :catchall_126

    move-result-object v3

    const-string v4, " errorCode : "

    :try_start_98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->code:I

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_137

    invoke-virtual {v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/try;->g(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_137

    const/4 v0, 0x1

    .line 18
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_bf} :catch_d4
    .catchall {:try_start_98 .. :try_end_bf} :catchall_126

    const-string v4, "not support, forceQuery isSupported: "

    :try_start_c1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    :goto_c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cc} :catch_d4
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_126

    move-object v0, v2

    :goto_cd
    if-eqz v1, :cond_2f

    .line 22
    :goto_cf
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2f

    .line 18
    :catch_d4
    move-exception v0

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    .line 22
    :goto_d8
    :try_start_d8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_126

    const-string v4, "queryId, Exception : "

    :try_start_df
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ee
    .catchall {:try_start_df .. :try_end_ee} :catchall_126

    if-eqz v1, :cond_2f

    goto :goto_cf

    .line 18
    :cond_f1
    const/4 v0, 0x0

    .line 19
    :try_start_f2
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_10e

    const/4 v0, 0x1

    .line 20
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_102} :catch_110
    .catchall {:try_start_f2 .. :try_end_102} :catchall_126

    const-string v3, "forceQuery isSupported : "

    :try_start_104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10b} :catch_110
    .catchall {:try_start_104 .. :try_end_10b} :catchall_126

    move-result-object v0

    move-object v2, v6

    goto :goto_c9

    :cond_10e
    move-object v0, v6

    .line 21
    goto :goto_cd

    .line 18
    :catch_110
    move-exception v0

    move-object v2, v0

    move-object v0, v6

    .line 21
    goto :goto_d8

    :catch_114
    move-exception v0

    move-object v1, v6

    move-object v2, v0

    move-object v0, v6

    goto :goto_d8

    .line 24
    :cond_119
    const-string v1, ""

    .line 25
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/void;->e(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/transient;

    invoke-direct {v1, v0, v7}, Lcom/tencent/turingfd/sdk/ams/ad/transient;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto/16 :goto_d

    :catchall_126
    move-exception v0

    move-object v6, v1

    :goto_128
    if-eqz v6, :cond_12d

    .line 27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12d
    throw v0

    :catch_12e
    move-exception v0

    .line 28
    invoke-static {v12}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v0

    goto/16 :goto_d

    .line 21
    :catchall_135
    move-exception v0

    goto :goto_128

    :cond_137
    move-object v0, v2

    goto :goto_cd
.end method

.method public b(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/transient;
    .registers 16

    .prologue
    const/16 v12, -0x65

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    if-eqz v0, :cond_e

    .line 2
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->Sb:I

    if-eqz v2, :cond_e

    .line 26
    :goto_d
    return-object v0

    .line 3
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, -0xa

    .line 4
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_122

    move-result-object v0

    goto :goto_d

    .line 5
    :cond_1b
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/try;->d()Lcom/tencent/turingfd/sdk/ams/ad/try;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 6
    iget-object v10, v8, Lcom/tencent/turingfd/sdk/ams/ad/try;->b:Lcom/tencent/turingfd/sdk/ams/ad/if;

    if-nez v10, :cond_33

    move-object v0, v6

    .line 22
    :cond_28
    :goto_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 23
    invoke-static {v12}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v0

    goto :goto_d

    .line 7
    :cond_33
    iget-wide v2, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_43

    move v0, v1

    :goto_3e
    if-eqz v0, :cond_45

    .line 8
    iget-object v0, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->value:Ljava/lang/String;

    goto :goto_28

    :cond_43
    move v0, v7

    .line 7
    goto :goto_3e

    .line 9
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_5f
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_71} :catch_10d
    .catchall {:try_start_5f .. :try_end_71} :catchall_129

    move-result-object v1

    if-eqz v1, :cond_ea

    :try_start_74
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/database/Cursor;)Lcom/tencent/turingfd/sdk/ams/ad/int;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->value:Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_109
    .catchall {:try_start_74 .. :try_end_7a} :catchall_11a

    .line 10
    :try_start_7a
    iput-object v2, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->value:Ljava/lang/String;

    .line 11
    iget-wide v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->k:J

    .line 12
    iput-wide v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->i:J

    .line 13
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->code:I

    .line 14
    iput v3, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->code:I

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8e} :catch_cd
    .catchall {:try_start_7a .. :try_end_8e} :catchall_11a

    move-result-object v3

    const-string v4, " errorCode : "

    :try_start_91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/if;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->code:I

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_12b

    invoke-virtual {v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/try;->g(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_12b

    const/4 v0, 0x1

    .line 17
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b8} :catch_cd
    .catchall {:try_start_91 .. :try_end_b8} :catchall_11a

    const-string v4, "not support, forceQuery isSupported: "

    :try_start_ba
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    :goto_c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c5} :catch_cd
    .catchall {:try_start_ba .. :try_end_c5} :catchall_11a

    move-object v0, v2

    :goto_c6
    if-eqz v1, :cond_28

    .line 21
    :goto_c8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_28

    .line 17
    :catch_cd
    move-exception v0

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    .line 21
    :goto_d1
    :try_start_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_11a

    const-string v4, "queryId, Exception : "

    :try_start_d8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_d8 .. :try_end_e7} :catchall_11a

    if-eqz v1, :cond_28

    goto :goto_c8

    .line 17
    :cond_ea
    const/4 v0, 0x0

    .line 18
    :try_start_eb
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_107

    const/4 v0, 0x1

    .line 19
    invoke-virtual {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/content/Context;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fb} :catch_109
    .catchall {:try_start_eb .. :try_end_fb} :catchall_11a

    const-string v3, "forceQuery isSupported : "

    :try_start_fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_104} :catch_109
    .catchall {:try_start_fd .. :try_end_104} :catchall_11a

    move-result-object v0

    move-object v2, v6

    goto :goto_c2

    :cond_107
    move-object v0, v6

    .line 20
    goto :goto_c6

    .line 17
    :catch_109
    move-exception v0

    move-object v2, v0

    move-object v0, v6

    .line 20
    goto :goto_d1

    :catch_10d
    move-exception v0

    move-object v1, v6

    move-object v2, v0

    move-object v0, v6

    goto :goto_d1

    .line 24
    :cond_112
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/transient;

    invoke-direct {v1, v0, v7}, Lcom/tencent/turingfd/sdk/ams/ad/transient;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto/16 :goto_d

    :catchall_11a
    move-exception v0

    move-object v6, v1

    :goto_11c
    if-eqz v6, :cond_121

    .line 25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_121
    throw v0

    :catch_122
    move-exception v0

    .line 26
    invoke-static {v12}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v0

    goto/16 :goto_d

    .line 20
    :catchall_129
    move-exception v0

    goto :goto_11c

    :cond_12b
    move-object v0, v2

    goto :goto_c6
.end method
