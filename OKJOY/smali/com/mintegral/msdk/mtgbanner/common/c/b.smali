.class public Lcom/mintegral/msdk/mtgbanner/common/c/b;
.super Ljava/lang/Object;
.source "BannerLoader.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

.field private e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

.field private f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

.field private g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

.field private volatile h:Z

.field private i:Ljava/util/Timer;

.field private volatile j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mintegral/msdk/mtgbanner/common/a/c;Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/mtgbanner/common/util/a;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c:I

    .line 50
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->h:Z

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->i:Ljava/util/Timer;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->j:Ljava/util/List;

    .line 54
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->k:Z

    .line 55
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->l:Z

    .line 57
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->m:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    .line 64
    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    .line 65
    iput-object p4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    .line 66
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x2

    .line 345
    const-string v0, ""

    .line 346
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 347
    const/4 v2, 0x0

    .line 349
    :try_start_a
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->g:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {p2}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_22
    const-string v4, ".html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_64
    .catchall {:try_start_a .. :try_end_32} :catchall_73

    .line 355
    :try_start_32
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 357
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_87
    .catchall {:try_start_32 .. :try_end_3f} :catchall_84

    move-result-object v0

    .line 363
    :try_start_40
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_5f

    .line 370
    :cond_43
    :goto_43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 372
    :cond_5a
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v6, p2, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 380
    :cond_5e
    :goto_5e
    return-object v0

    .line 366
    :catch_5f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 359
    :catch_64
    move-exception v1

    :goto_65
    :try_start_65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_73

    .line 362
    if-eqz v2, :cond_43

    .line 363
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_43

    .line 366
    :catch_6e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 361
    :catchall_73
    move-exception v0

    .line 362
    :goto_74
    if-eqz v2, :cond_79

    .line 363
    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    .line 367
    :cond_79
    :goto_79
    throw v0

    .line 366
    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79

    .line 375
    :cond_7f
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v6, p2, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_5e

    .line 361
    :catchall_84
    move-exception v0

    move-object v2, v3

    goto :goto_74

    .line 359
    :catch_87
    move-exception v1

    move-object v2, v3

    goto :goto_65
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 289
    if-eqz p1, :cond_7c

    .line 290
    :try_start_7
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7c

    .line 292
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    .line 293
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getNeedShowList \u603b\u5171\u8fd4\u56de\u7684campaign\u6709\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/util/List;)V

    .line 296
    const/4 v0, 0x0

    move v1, v0

    :goto_38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7d

    .line 297
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 298
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_64

    .line 299
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_61

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 301
    :cond_61
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_64
    :goto_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    .line 304
    :cond_68
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v4

    if-nez v4, :cond_74

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 305
    :cond_74
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_77} :catch_78

    goto :goto_64

    .line 315
    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    :cond_7c
    :goto_7c
    return-object v2

    .line 311
    :cond_7d
    :try_start_7d
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getNeedShowList \u8fd4\u56de\u6709\u4ee5\u4e0b\u5e26\u6709\u89c6\u9891\u7d20\u6750\u7684campaign\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_95} :catch_78

    goto :goto_7c
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 3208
    if-nez p2, :cond_13

    .line 3209
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    const-string v2, "campaignUnit is NULL!"

    invoke-virtual {v0, v1, v2, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 3222
    :goto_12
    return-void

    .line 3215
    :cond_13
    invoke-direct {p0, p2}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)Ljava/util/List;

    move-result-object v2

    .line 3403
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;

    invoke-direct {v3, p0, p2}, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3428
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_40

    .line 3219
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "tryDownloadOnLoadSuccess \u8fd4\u56de\u7684campaign \u6ca1\u6709\u7b26\u5408\u4e0b\u8f7d\u89c4\u5219\u7684"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    const-string v2, "Need show campaign list is NULL!"

    invoke-virtual {v0, v1, v2, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 3225
    :cond_40
    sget-object v1, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v3, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5f00\u59cb"

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4128
    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;)V

    .line 4137
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->i:Ljava/util/Timer;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3231
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 4443
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/c;->a(Ljava/lang/String;)V

    .line 4473
    iget v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c:I

    .line 4475
    :try_start_5f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6a

    .line 4476
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 4479
    :cond_6a
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgbanner/common/a/c;->c()I

    move-result v3

    if-le v1, v3, :cond_7a

    .line 4480
    sget-object v1, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v3, "saveNextOffset \u91cd\u7f6eoffset\u4e3a0"

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 4483
    :cond_7a
    sget-object v3, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveNextOffset \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 4486
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/c;->a(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_99} :catch_e0

    .line 3239
    :cond_99
    :goto_99
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e5

    .line 5388
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 5389
    new-instance v3, Lcom/mintegral/msdk/mtgbanner/common/b/f;

    invoke-direct {v3, p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/f;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;)V

    .line 5390
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V

    .line 3244
    :cond_b9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_124

    move v1, v0

    .line 3245
    :goto_c0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_124

    .line 3246
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getBannerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 3247
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHasMtgTplMark(Z)V

    .line 3245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c0

    .line 4489
    :catch_e0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_99

    .line 3251
    :cond_e5
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getBannerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3252
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_120

    .line 3253
    invoke-direct {p0, p1, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3256
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_124

    move v1, v0

    .line 3257
    :goto_fe
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_124

    .line 3258
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 3259
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    const-string v5, "<MTGTPLMARK>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHasMtgTplMark(Z)V

    .line 3257
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_fe

    .line 3263
    :cond_120
    iput-boolean v6, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->l:Z

    .line 3264
    iput-boolean v6, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->k:Z

    .line 3274
    :cond_124
    invoke-direct {p0, p1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_12
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 69
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->m:Z

    if-nez v0, :cond_31

    .line 74
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->k:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->l:Z

    if-eqz v0, :cond_31

    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_31

    .line 75
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->h:Z

    .line 77
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->m:Z

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 84
    :cond_31
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    if-eqz p2, :cond_3e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 327
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 328
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 330
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->j:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/b/g;

    invoke-direct {v2, p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/g;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    goto :goto_c

    .line 337
    :cond_3e
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->h:Z

    return v0
.end method

.method private b()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 451
    .line 453
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgbanner/common/a/c;->b()I

    move-result v1

    .line 455
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgbanner/common/a/c;->c()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_12

    move-result v2

    if-le v1, v2, :cond_10

    .line 463
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 462
    goto :goto_f

    .line 461
    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/b;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/util/a;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/d;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 96
    if-nez p4, :cond_42

    .line 97
    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    .line 98
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " unitId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> time out!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_20
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1087
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "downloadResource--> Fail"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iput-boolean v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->h:Z

    .line 1090
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->b(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 125
    :cond_41
    :goto_41
    return-void

    .line 105
    :cond_42
    if-ne p2, v3, :cond_61

    .line 106
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "downloadResource--> Success Image"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    monitor-enter p0

    .line 108
    :try_start_4c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->j:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5c

    .line 110
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;)V

    .line 112
    :cond_5c
    monitor-exit p0

    goto :goto_41

    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_5e

    throw v0

    .line 114
    :cond_61
    const/4 v0, 0x2

    if-ne p2, v0, :cond_71

    .line 115
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "downloadResource--> Success banner_html"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-boolean v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->l:Z

    .line 117
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;)V

    goto :goto_41

    .line 119
    :cond_71
    const/4 v0, 0x3

    if-ne p2, v0, :cond_41

    .line 120
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "downloadResource--> Success banner_url"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput-boolean v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->k:Z

    .line 122
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;)V

    goto :goto_41
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/d;)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 143
    :try_start_1
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a:Ljava/lang/String;

    const-string v1, "requestCampaign--> started"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    .line 146
    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;)V

    .line 2044
    iput-object p1, v1, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 173
    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/e/a;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/mintegral/msdk/mtgbanner/common/e/a;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c:I

    .line 175
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b:Landroid/content/Context;

    .line 2436
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d:Lcom/mintegral/msdk/mtgbanner/common/a/c;

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgbanner/common/a/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 176
    iget v4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c:I

    .line 175
    invoke-static {v0, p1, v3, v4, p2}, Lcom/mintegral/msdk/mtgbanner/common/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/mintegral/msdk/mtgbanner/common/a/b;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v3

    .line 177
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    .line 179
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_76

    move-result v5

    if-nez v5, :cond_6f

    .line 181
    :try_start_38
    invoke-virtual {v1, v4}, Lcom/mintegral/msdk/mtgbanner/common/f/a;->b(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Z)V

    .line 183
    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_68

    array-length v4, v0

    if-le v4, v6, :cond_68

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-hb.rayjump.com/load"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_63} :catch_6b

    move-result-object v0

    .line 192
    :goto_64
    :try_start_64
    invoke-virtual {v2, v0, v3, v1}, Lcom/mintegral/msdk/mtgbanner/common/e/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_76

    .line 199
    :goto_67
    return-void

    .line 184
    :cond_68
    :try_start_68
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->i:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6a} :catch_6b

    goto :goto_64

    .line 187
    :catch_6b
    move-exception v0

    :try_start_6c
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->i:Ljava/lang/String;

    goto :goto_64

    .line 190
    :cond_6f
    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Z)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_75} :catch_76

    goto :goto_64

    .line 194
    :catch_76
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b;->g:Lcom/mintegral/msdk/mtgbanner/common/b/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    goto :goto_67
.end method
