.class final Lcom/mintegral/msdk/click/g$a;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "WebViewSpiderLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/g;

.field private final b:Ljava/util/concurrent/Semaphore;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private k:Lcom/mintegral/msdk/rover/d;

.field private l:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private m:Z

.field private n:Z

.field private o:Lcom/mintegral/msdk/click/f$a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/click/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/rover/d;Lcom/mintegral/msdk/base/entity/CampaignEx;ZZ)V
    .registers 13

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/g$a;->b:Ljava/util/concurrent/Semaphore;

    .line 282
    new-instance v0, Lcom/mintegral/msdk/click/g$a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/click/g$a$1;-><init>(Lcom/mintegral/msdk/click/g$a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/g$a;->o:Lcom/mintegral/msdk/click/f$a;

    .line 99
    iput-object p2, p0, Lcom/mintegral/msdk/click/g$a;->c:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lcom/mintegral/msdk/click/g$a;->d:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/mintegral/msdk/click/g$a;->e:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/mintegral/msdk/click/g$a;->f:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lcom/mintegral/msdk/click/g$a;->g:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    .line 105
    iput-object p8, p0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 106
    iput-boolean p9, p0, Lcom/mintegral/msdk/click/g$a;->m:Z

    .line 107
    iput-boolean p10, p0, Lcom/mintegral/msdk/click/g$a;->n:Z

    .line 115
    return-void
.end method

.method private a(Ljava/lang/String;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .registers 21

    .prologue
    .line 118
    const-string v4, "302"

    const-string v5, "startJavaHTTPSpider"

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->c:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/mintegral/msdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v4, :cond_44

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->matchLoopback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_44
    new-instance v13, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    invoke-direct {v13}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;-><init>()V

    .line 132
    new-instance v15, Lcom/mintegral/msdk/click/e;

    invoke-direct {v15}, Lcom/mintegral/msdk/click/e;-><init>()V

    .line 134
    const-string v5, ""

    .line 135
    const-string v4, ""

    .line 137
    :try_start_52
    invoke-static/range {p1 .. p1}, Lcom/mintegral/msdk/click/g$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 138
    invoke-static/range {p1 .. p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 139
    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_63} :catch_284

    move-result-object v4

    .line 146
    :cond_64
    :goto_64
    const/4 v6, 0x0

    move v14, v6

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v5, p1

    :goto_6a
    const/16 v4, 0xa

    if-ge v14, v4, :cond_bb

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->b(Lcom/mintegral/msdk/click/g;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 149
    const/4 v4, 0x0

    .line 242
    :goto_79
    return-object v4

    .line 152
    :cond_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v15, v5, v0, v1, v2}, Lcom/mintegral/msdk/click/e;->a(Ljava/lang/String;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;Lcom/mintegral/msdk/click/e$a;)Lcom/mintegral/msdk/click/e$a;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 155
    sub-long v6, v8, v6

    long-to-int v7, v6

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    if-nez v4, :cond_bd

    .line 158
    invoke-virtual {v13, v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v4, :cond_bb

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    sget v6, Lcom/mintegral/msdk/rover/a;->c:I

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, "headerFiled is null"

    invoke-interface/range {v4 .. v10}, Lcom/mintegral/msdk/rover/d;->b(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    move-object v4, v13

    .line 242
    goto :goto_79

    .line 166
    :cond_bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget-object v4, v4, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_124

    .line 167
    invoke-virtual {v13, v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget-object v4, v4, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 169
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setType(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/click/e$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    .line 172
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v4, :cond_bb

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    sget v6, Lcom/mintegral/msdk/rover/a;->c:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v8}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v8

    iget v8, v8, Lcom/mintegral/msdk/click/e$a;->f:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v9}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mintegral/msdk/click/e$a;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v10}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v10

    iget-object v10, v10, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-interface/range {v4 .. v10}, Lcom/mintegral/msdk/rover/d;->b(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 179
    :cond_124
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v4, :cond_157

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    sget v6, Lcom/mintegral/msdk/rover/a;->c:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v8}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v8

    iget v8, v8, Lcom/mintegral/msdk/click/e$a;->f:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v9}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mintegral/msdk/click/e$a;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v10}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v10

    iget-object v10, v10, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-interface/range {v4 .. v10}, Lcom/mintegral/msdk/rover/d;->a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget v4, v4, Lcom/mintegral/msdk/click/e$a;->f:I

    .line 1389
    const/16 v6, 0x12d

    if-eq v4, v6, :cond_16d

    const/16 v6, 0x12e

    if-eq v4, v6, :cond_16d

    const/16 v6, 0x133

    if-ne v4, v6, :cond_18d

    :cond_16d
    const/4 v4, 0x1

    .line 183
    :goto_16e
    if-eqz v4, :cond_240

    .line 185
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setIs302Jump(Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget-object v4, v4, Lcom/mintegral/msdk/click/e$a;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 188
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 189
    invoke-virtual {v13, v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 1389
    :cond_18d
    const/4 v4, 0x0

    goto :goto_16e

    .line 192
    :cond_18f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget-object v6, v4, Lcom/mintegral/msdk/click/e$a;->a:Ljava/lang/String;

    .line 194
    invoke-static {v6}, Lcom/mintegral/msdk/click/g$a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e9

    .line 2385
    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 195
    if-eqz v4, :cond_1e0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e0

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    const/4 v4, 0x0

    move-object v6, v5

    move-object v5, v4

    .line 2393
    :goto_1d1
    invoke-static {v6}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v7

    .line 213
    if-eqz v7, :cond_201

    .line 214
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 215
    invoke-virtual {v13, v6}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 199
    :cond_1e0
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 200
    invoke-virtual {v13, v6}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 203
    :cond_1e9
    invoke-static {v6}, Lcom/mintegral/msdk/click/g$a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_287

    .line 205
    :try_start_1ef
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f6} :catch_1fc

    move-result-object v5

    .line 207
    :try_start_1f7
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_1fa} :catch_280

    move-result-object v4

    goto :goto_1d1

    :catch_1fc
    move-exception v4

    move-object v4, v12

    :goto_1fe
    move-object v5, v4

    move-object v4, v11

    goto :goto_1d1

    .line 219
    :cond_201
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v7}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;)Z

    move-result v7

    if-eqz v7, :cond_22a

    .line 221
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mintegral/msdk/click/g$a;->c:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/mintegral/msdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_22a

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    :cond_22a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v7, :cond_238

    .line 227
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v7, v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->matchLoopback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    :cond_238
    add-int/lit8 v7, v14, 0x1

    move v14, v7

    move-object v11, v4

    move-object v12, v5

    move-object v5, v6

    goto/16 :goto_6a

    .line 230
    :cond_240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget v4, v4, Lcom/mintegral/msdk/click/e$a;->f:I

    .line 3377
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_26a

    const/4 v4, 0x1

    .line 230
    :goto_24f
    if-eqz v4, :cond_277

    .line 231
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 232
    invoke-virtual {v13, v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget-object v4, v4, Lcom/mintegral/msdk/click/e$a;->g:Ljava/lang/String;

    if-nez v4, :cond_26c

    const/4 v4, 0x0

    :goto_265
    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 3377
    :cond_26a
    const/4 v4, 0x0

    goto :goto_24f

    .line 233
    :cond_26c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v4}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v4

    iget-object v4, v4, Lcom/mintegral/msdk/click/e$a;->g:Ljava/lang/String;

    goto :goto_265

    .line 236
    :cond_277
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 237
    invoke-virtual {v13, v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_bb

    :catch_280
    move-exception v4

    move-object v4, v5

    goto/16 :goto_1fe

    :catch_284
    move-exception v6

    goto/16 :goto_64

    :cond_287
    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_1d1
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g$a;)V
    .registers 2

    .prologue
    .line 74
    .line 6083
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 74
    .line 5251
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->d(Lcom/mintegral/msdk/click/g;)J

    move-result-wide v0

    .line 5252
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_38

    .line 5253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5254
    iget-object v2, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v2, v0, v1}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;J)J

    move v3, v4

    .line 5262
    :goto_17
    if-eqz p1, :cond_62

    .line 5263
    if-eqz p2, :cond_45

    .line 5264
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->e(Lcom/mintegral/msdk/click/g;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 5265
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->f(Lcom/mintegral/msdk/click/g;)Z

    .line 5266
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    sget v2, Lcom/mintegral/msdk/rover/a;->d:I

    const-string v4, ""

    move-object v1, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/mintegral/msdk/rover/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 5271
    :cond_37
    :goto_37
    return-void

    .line 5256
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5257
    sub-long v0, v6, v0

    long-to-int v3, v0

    .line 5258
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0, v6, v7}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;J)J

    goto :goto_17

    .line 5269
    :cond_45
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->e(Lcom/mintegral/msdk/click/g;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 5270
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->f(Lcom/mintegral/msdk/click/g;)Z

    .line 5271
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    sget v2, Lcom/mintegral/msdk/rover/a;->d:I

    const-string v5, ""

    move-object v1, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/mintegral/msdk/rover/d;->b(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 5275
    :cond_62
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v0, :cond_37

    .line 5276
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    sget v2, Lcom/mintegral/msdk/rover/a;->d:I

    const-string v5, ""

    move-object v1, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/mintegral/msdk/rover/d;->a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g$a;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/click/g$a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 351
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_a

    .line 352
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    .line 3393
    :cond_a
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v1

    .line 354
    if-eqz v1, :cond_2c

    .line 355
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setCode(I)V

    .line 356
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 373
    :goto_2b
    return v0

    .line 359
    :cond_2c
    invoke-static {p1}, Lcom/mintegral/msdk/click/g$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 360
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setCode(I)V

    .line 361
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    goto :goto_2b

    .line 365
    :cond_4f
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setCode(I)V

    .line 366
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 381
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 397
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final a()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 407
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    new-instance v1, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    invoke-direct {v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;-><init>()V

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 408
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mintegral/msdk/click/g$a;->m:Z

    iget-boolean v3, p0, Lcom/mintegral/msdk/click/g$a;->n:Z

    iget-object v4, p0, Lcom/mintegral/msdk/click/g$a;->l:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/g$a;->a(Ljava/lang/String;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/g;->a(Lcom/mintegral/msdk/click/g;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 417
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 418
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 420
    :cond_40
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->b(Lcom/mintegral/msdk/click/g;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 473
    :cond_48
    :goto_48
    return-void

    .line 425
    :cond_49
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 428
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 429
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    iget v1, v1, Lcom/mintegral/msdk/click/e$a;->f:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setStatusCode(I)V

    .line 435
    :cond_6e
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/click/g$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14a

    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4393
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 435
    if-nez v0, :cond_14a

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    .line 437
    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    iget v1, v1, Lcom/mintegral/msdk/click/e$a;->f:I

    if-ne v0, v1, :cond_14a

    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14a

    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 438
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setType(I)V

    .line 439
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_117

    .line 440
    const-string v0, "302"

    const-string v1, "startWebViewHtmlParser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Lcom/mintegral/msdk/click/f;

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->i(Lcom/mintegral/msdk/click/g;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/click/f;-><init>(Z)V

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/click/g$a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/g$a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/click/g$a;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v5}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    .line 442
    invoke-static {v6}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mintegral/msdk/click/g$a;->o:Lcom/mintegral/msdk/click/f$a;

    .line 441
    invoke-virtual/range {v0 .. v7}, Lcom/mintegral/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/click/f$a;)V

    .line 443
    const-string v0, "302"

    const-string v1, "startWebViewHtmlParser"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5079
    :goto_110
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto/16 :goto_48

    .line 445
    :cond_117
    const-string v0, "302"

    const-string v1, "startWebViewSpider"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :try_start_11e
    new-instance v0, Lcom/mintegral/msdk/click/f;

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->i(Lcom/mintegral/msdk/click/g;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/click/f;-><init>(Z)V

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/click/g$a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/g$a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/click/g$a;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v5}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/click/g$a;->o:Lcom/mintegral/msdk/click/f$a;

    invoke-virtual/range {v0 .. v6}, Lcom/mintegral/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/click/f$a;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_140} :catch_141

    goto :goto_110

    .line 449
    :catch_141
    move-exception v0

    const-string v0, "TAG"

    const-string v1, "webview spider start error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_110

    .line 459
    :cond_14a
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    if-eqz v0, :cond_164

    .line 460
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->k:Lcom/mintegral/msdk/rover/d;

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/mintegral/msdk/rover/a;->c:I

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/mintegral/msdk/rover/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_164
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v0

    if-eqz v0, :cond_1bb

    .line 463
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setType(I)V

    .line 464
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    iget-object v1, v1, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    iget v1, v1, Lcom/mintegral/msdk/click/e$a;->f:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setStatusCode(I)V

    .line 466
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/click/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    iget-object v1, v1, Lcom/mintegral/msdk/click/e$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 470
    :cond_1bb
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/click/g$a;->a(Ljava/lang/String;)Z

    goto/16 :goto_48
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 478
    return-void
.end method
