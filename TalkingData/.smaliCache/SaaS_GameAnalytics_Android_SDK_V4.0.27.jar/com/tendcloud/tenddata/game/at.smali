.class public Lcom/tendcloud/tenddata/game/at;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/at$c;,
        Lcom/tendcloud/tenddata/game/at$b;,
        Lcom/tendcloud/tenddata/game/at$a;,
        Lcom/tendcloud/tenddata/game/at$d;,
        Lcom/tendcloud/tenddata/game/at$e;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static volatile c:Ljava/util/HashMap; = null

.field private static final d:I = 0x258

.field private static final e:I = 0xea60

.field private static final f:I = 0xea60

.field private static g:Landroid/content/Context;

.field private static volatile h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const v0, 0xea60

    sput v0, Lcom/tendcloud/tenddata/game/at;->a:I

    .line 49
    sput v0, Lcom/tendcloud/tenddata/game/at;->b:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/at;->g:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/at;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 14

    .line 64
    sput-object p0, Lcom/tendcloud/tenddata/game/at;->g:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getCert()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const-string v5, "default"

    const/4 v8, 0x0

    move-object v2, p2

    move-object v4, p3

    move-object v6, p1

    move-object v7, p4

    invoke-static/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 15

    .line 59
    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 17

    .line 71
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 18

    .line 77
    sput-object p0, Lcom/tendcloud/tenddata/game/at;->g:Landroid/content/Context;

    .line 78
    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 4

    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 19

    .line 390
    new-instance v1, Lcom/tendcloud/tenddata/game/at$e;

    const/16 v0, 0x258

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/at$e;-><init>(I)V

    .line 392
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    :try_start_12
    invoke-static/range {v2 .. v9}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_17

    .line 394
    return-object v0

    .line 395
    :catchall_17
    move-exception v0

    move-object v2, v0

    .line 397
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 399
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 20

    .line 406
    move-object v0, p0

    const-string v1, ""

    const/16 v2, 0x258

    :try_start_5
    const-string v3, "https://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 407
    sget-object v3, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v6, p3

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 406
    :cond_20
    move-object v6, p3

    .line 409
    :goto_21
    nop

    .line 410
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v3

    .line 411
    if-nez v3, :cond_3d

    .line 412
    new-instance v0, Lcom/tendcloud/tenddata/game/at$e;

    invoke-direct {v0, v2, v1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 414
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 415
    move-object v0, p1

    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    .line 417
    :cond_58
    move-object v0, p2

    move-object/from16 v4, p4

    invoke-static {p2, v3, v4}, Lcom/tendcloud/tenddata/game/at;->a([BLjava/net/URLConnection;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    return-object v0

    .line 418
    :catchall_60
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 424
    new-instance v0, Lcom/tendcloud/tenddata/game/at$e;

    invoke-direct {v0, v2, v1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static a([BLjava/net/URLConnection;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 12

    .line 528
    const/16 v0, 0x258

    if-eqz p0, :cond_f1

    array-length v1, p0

    if-eqz v1, :cond_f1

    if-nez p1, :cond_b

    goto/16 :goto_f1

    .line 531
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 533
    nop

    .line 534
    nop

    .line 535
    move-object v2, p1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 536
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 537
    nop

    .line 539
    const/4 v1, 0x0

    const v3, 0xea60

    :try_start_1e
    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_71

    .line 541
    :try_start_27
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 542
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 545
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 547
    const/16 v7, 0x190

    if-le v0, v7, :cond_3a

    .line 548
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_3e

    .line 550
    :cond_3a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 552
    :goto_3e
    invoke-static {p2, v1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_6f

    .line 561
    if-eqz v4, :cond_4d

    .line 562
    :try_start_47
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4d

    .line 564
    :catchall_4b
    move-exception p2

    goto :goto_4e

    .line 568
    :cond_4d
    :goto_4d
    nop

    .line 570
    :goto_4e
    if-eqz v1, :cond_56

    .line 571
    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_56

    .line 573
    :catchall_54
    move-exception p2

    goto :goto_57

    .line 577
    :cond_56
    :goto_56
    nop

    .line 579
    :goto_57
    if-eqz v2, :cond_62

    .line 580
    :try_start_59
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_62

    .line 582
    :catchall_5d
    move-exception p2

    .line 583
    :goto_5e
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_63

    .line 584
    :cond_62
    :goto_62
    nop

    .line 585
    :goto_63
    sput v3, Lcom/tendcloud/tenddata/game/at;->a:I

    .line 586
    sput v3, Lcom/tendcloud/tenddata/game/at;->b:I

    .line 588
    array-length p0, p0

    int-to-long v3, p0

    move-object v7, p1

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;I)V

    .line 589
    goto :goto_bc

    .line 553
    :catchall_6f
    move-exception p2

    goto :goto_73

    :catchall_71
    move-exception p2

    move-object v4, v1

    .line 557
    :goto_73
    :try_start_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";stack:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/da;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 558
    const/4 v7, 0x0

    const/16 v8, 0x100

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a2
    .catchall {:try_start_73 .. :try_end_a2} :catchall_c6

    .line 561
    if-eqz v4, :cond_aa

    .line 562
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_aa

    .line 564
    :catchall_a8
    move-exception p2

    goto :goto_ab

    .line 568
    :cond_aa
    :goto_aa
    nop

    .line 570
    :goto_ab
    if-eqz v1, :cond_b3

    .line 571
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b3

    .line 573
    :catchall_b1
    move-exception p2

    goto :goto_b4

    .line 577
    :cond_b3
    :goto_b3
    nop

    .line 579
    :goto_b4
    if-eqz v2, :cond_62

    .line 580
    :try_start_b6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_62

    .line 582
    :catchall_ba
    move-exception p2

    goto :goto_5e

    .line 590
    :goto_bc
    new-instance p0, Lcom/tendcloud/tenddata/game/at$e;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 560
    :catchall_c6
    move-exception p2

    .line 561
    if-eqz v4, :cond_cf

    .line 562
    :try_start_c9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_cf

    .line 564
    :catchall_cd
    move-exception v4

    goto :goto_d0

    .line 568
    :cond_cf
    :goto_cf
    nop

    .line 570
    :goto_d0
    if-eqz v1, :cond_d8

    .line 571
    :try_start_d2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_d8

    .line 573
    :catchall_d6
    move-exception v1

    goto :goto_d9

    .line 577
    :cond_d8
    :goto_d8
    nop

    .line 579
    :goto_d9
    if-eqz v2, :cond_e4

    .line 580
    :try_start_db
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e4

    .line 582
    :catchall_df
    move-exception v1

    .line 583
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_e5

    .line 584
    :cond_e4
    :goto_e4
    nop

    .line 585
    :goto_e5
    sput v3, Lcom/tendcloud/tenddata/game/at;->a:I

    .line 586
    sput v3, Lcom/tendcloud/tenddata/game/at;->b:I

    .line 588
    array-length p0, p0

    int-to-long v3, p0

    move-object v7, p1

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;I)V

    throw p2

    .line 529
    :cond_f1
    :goto_f1
    new-instance p0, Lcom/tendcloud/tenddata/game/at$e;

    const-string p1, ""

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 247
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 595
    nop

    .line 597
    const/4 v1, 0x0

    :try_start_7
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 598
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_84

    :cond_15
    goto :goto_1f

    :pswitch_16
    const-string v3, "gzip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v2, 0x0

    :goto_1f
    packed-switch v2, :pswitch_data_8a

    .line 603
    new-instance p0, Ljava/io/BufferedReader;

    goto :goto_32

    .line 600
    :pswitch_25
    new-instance p0, Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    goto :goto_5f

    .line 603
    :goto_32
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_68

    .line 605
    :goto_3a
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 606
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/high16 v1, 0x6400000

    if-gt p1, v1, :cond_51

    goto :goto_3a

    .line 609
    :cond_51
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Input stream more than 100 MB size limit"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_5b

    .line 605
    :cond_59
    move-object v1, p0

    goto :goto_5f

    .line 615
    :catchall_5b
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_69

    .line 620
    :cond_5f
    :goto_5f
    if-eqz v1, :cond_67

    .line 621
    :try_start_61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_67

    .line 623
    :catchall_65
    move-exception p0

    .line 628
    goto :goto_72

    .line 627
    :cond_67
    :goto_67
    goto :goto_72

    .line 615
    :catchall_68
    move-exception p0

    .line 617
    :goto_69
    :try_start_69
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_77

    .line 620
    if-eqz v1, :cond_67

    .line 621
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_65

    goto :goto_67

    .line 629
    :goto_72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 619
    :catchall_77
    move-exception p0

    .line 620
    if-eqz v1, :cond_80

    .line 621
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_80

    .line 623
    :catchall_7e
    move-exception p1

    goto :goto_81

    .line 627
    :cond_80
    :goto_80
    nop

    :goto_81
    goto :goto_83

    :goto_82
    throw p0

    :goto_83
    goto :goto_82

    :pswitch_data_84
    .packed-switch 0x30a95a
        :pswitch_16
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 251
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 89
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .registers 7

    .line 439
    invoke-static/range {p0 .. p6}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;
    .registers 11

    .line 434
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3

    .line 668
    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3e

    .line 670
    :cond_e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 671
    nop

    .line 673
    :try_start_18
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 674
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_35
    .catchall {:try_start_18 .. :try_end_24} :catchall_2d

    .line 681
    nop

    .line 682
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 688
    goto :goto_2b

    .line 684
    :catchall_29
    move-exception v0

    .line 689
    nop

    .line 690
    :goto_2b
    move-object v0, p0

    goto :goto_3d

    .line 680
    :catchall_2d
    move-exception p0

    .line 681
    nop

    .line 682
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    .line 688
    goto :goto_34

    .line 684
    :catchall_33
    move-exception v0

    .line 688
    :goto_34
    throw p0

    .line 675
    :catch_35
    move-exception p0

    .line 681
    nop

    .line 682
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    .line 688
    goto :goto_3d

    .line 684
    :catchall_3b
    move-exception p0

    .line 689
    nop

    .line 690
    :goto_3d
    return-object v0

    .line 669
    :cond_3e
    :goto_3e
    return-object v0
.end method

.method private static a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 6

    .line 503
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 504
    nop

    .line 505
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 506
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    goto :goto_19

    .line 508
    :cond_13
    const-string v1, "TLSv1"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 510
    :goto_19
    new-instance v2, Lcom/tendcloud/tenddata/game/at$d;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tendcloud/tenddata/game/at$d;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 511
    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 514
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    .line 516
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    .line 517
    return-object p0

    .line 518
    :catchall_36
    move-exception p0

    .line 519
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 523
    return-object v0
.end method

.method public static a(ZLjava/security/cert/X509Certificate;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    .line 94
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 95
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 96
    new-instance p0, Lcom/tendcloud/tenddata/game/at$d;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/at$d;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 97
    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, p1, v2

    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 98
    goto :goto_1d

    .line 99
    :cond_1a
    invoke-virtual {v1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 102
    :goto_1d
    nop

    .line 103
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    .line 104
    return-object p0

    .line 105
    :catchall_23
    move-exception p0

    .line 106
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 111
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;I)V
    .registers 11

    .line 635
    const-string v0, "targetIP"

    if-eqz p0, :cond_65

    .line 636
    :try_start_4
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 637
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    .line 638
    const-string v2, "targetUrl"

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_60

    .line 640
    :try_start_16
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    .line 647
    goto :goto_2c

    .line 642
    :catchall_26
    move-exception p0

    .line 643
    :try_start_27
    const-string p0, "0.0.0.0"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :goto_2c
    const/16 p0, 0xc8

    if-ne p6, p0, :cond_49

    .line 650
    const-string p0, "reqSize"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string p0, "respTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const/4 p0, 0x1

    goto :goto_5c

    .line 654
    :cond_49
    const-string p0, "errorMsg"

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string p0, "statusCode"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const/4 p0, 0x0

    .line 659
    :goto_5c
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/da;->a(ZLjava/util/Map;)V
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_60

    goto :goto_65

    .line 661
    :catchall_60
    move-exception p0

    .line 662
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_66

    .line 663
    :cond_65
    :goto_65
    nop

    .line 664
    :goto_66
    return-void
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 1

    .line 819
    nop

    .line 845
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 8

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 204
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3a

    .line 205
    const/16 p0, 0x400

    :try_start_b
    new-array v2, p0, [B

    .line 206
    nop

    .line 207
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_37

    .line 208
    :goto_13
    const/4 v4, 0x0

    :try_start_14
    invoke-virtual {v1, v2, v4, p0}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1f

    .line 209
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    .line 211
    :cond_1f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 212
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_33

    .line 219
    nop

    .line 221
    :try_start_27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    .line 226
    goto :goto_2c

    .line 222
    :catchall_2b
    move-exception p0

    .line 229
    :goto_2c
    nop

    .line 231
    :try_start_2d
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 236
    :goto_30
    goto :goto_50

    .line 232
    :catchall_31
    move-exception p0

    goto :goto_30

    .line 213
    :catchall_33
    move-exception p0

    move-object v2, v0

    move-object v0, v3

    goto :goto_3d

    :catchall_37
    move-exception p0

    move-object v2, v0

    goto :goto_3d

    :catchall_3a
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 214
    :goto_3d
    :try_start_3d
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_51

    .line 219
    if-eqz v0, :cond_47

    .line 221
    :try_start_42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    .line 226
    goto :goto_47

    .line 222
    :catchall_46
    move-exception p0

    .line 229
    :cond_47
    :goto_47
    if-eqz v1, :cond_4f

    .line 231
    :try_start_49
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    .line 236
    :goto_4c
    goto :goto_4f

    .line 232
    :catchall_4d
    move-exception p0

    goto :goto_4c

    .line 239
    :cond_4f
    :goto_4f
    move-object v0, v2

    :goto_50
    return-object v0

    .line 219
    :catchall_51
    move-exception p0

    if-eqz v0, :cond_59

    .line 221
    :try_start_54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 226
    goto :goto_59

    .line 222
    :catchall_58
    move-exception v0

    .line 229
    :cond_59
    :goto_59
    if-eqz v1, :cond_60

    .line 231
    :try_start_5b
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    .line 236
    goto :goto_60

    .line 232
    :catchall_5f
    move-exception v0

    .line 236
    :cond_60
    :goto_60
    goto :goto_62

    :goto_61
    throw p0

    :goto_62
    goto :goto_61
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .registers 11

    .line 259
    nop

    .line 260
    new-instance v0, Lcom/tendcloud/tenddata/game/at$e;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(I)V

    .line 262
    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_a5

    .line 266
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    .line 267
    sget-object p0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v4, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_a2

    .line 272
    move-object v1, p0

    goto :goto_43

    .line 274
    :cond_42
    move-object v1, v4

    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    iput p0, v0, Lcom/tendcloud/tenddata/game/at$e;->statusCode:I

    .line 275
    iget p0, v0, Lcom/tendcloud/tenddata/game/at$e;->statusCode:I

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_9c

    .line 276
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 277
    array-length p1, p3

    const/4 v2, 0x0

    :goto_56
    if-ge v2, p1, :cond_64

    aget-object v4, p3, v2

    .line 278
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 280
    :cond_64
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/at$e;->responseMsg:Ljava/lang/String;

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 282
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_73
    .catchall {:try_start_43 .. :try_end_73} :catchall_a5

    .line 285
    const/16 p2, 0x1000

    :try_start_75
    new-array p2, p2, [B

    .line 286
    :goto_77
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_82

    .line 287
    invoke-virtual {p1, p2, v3, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_94

    goto :goto_77

    .line 290
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_a5

    .line 292
    nop

    .line 293
    nop

    .line 303
    if-eqz v1, :cond_92

    .line 304
    :try_start_8c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_92

    .line 306
    :catchall_90
    move-exception p0

    goto :goto_93

    .line 310
    :cond_92
    :goto_92
    nop

    .line 293
    :goto_93
    return-object v0

    .line 290
    :catchall_94
    move-exception p2

    :try_start_95
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_a5

    .line 303
    :cond_9c
    if-eqz v1, :cond_b1

    .line 304
    :try_start_9e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_af

    goto :goto_b1

    .line 296
    :catchall_a2
    move-exception p0

    move-object v1, v4

    goto :goto_a6

    :catchall_a5
    move-exception p0

    .line 297
    :goto_a6
    :try_start_a6
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b3

    .line 303
    if-eqz v1, :cond_b1

    .line 304
    :try_start_ab
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b1

    .line 306
    :catchall_af
    move-exception p0

    .line 311
    goto :goto_b2

    .line 310
    :cond_b1
    :goto_b1
    nop

    .line 312
    :goto_b2
    return-object v0

    .line 302
    :catchall_b3
    move-exception p0

    .line 303
    if-eqz v1, :cond_bc

    .line 304
    :try_start_b6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_bc

    .line 306
    :catchall_ba
    move-exception p1

    goto :goto_bd

    .line 310
    :cond_bc
    :goto_bc
    nop

    :goto_bd
    goto :goto_bf

    :goto_be
    throw p0

    :goto_bf
    goto :goto_be
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 9

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 321
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v0}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_a3

    .line 325
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v4, "https"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    .line 326
    sget-object p0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    .line 334
    :cond_3b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_9b

    .line 335
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_a1

    .line 337
    :try_start_49
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_89

    .line 338
    :try_start_4d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_86

    .line 340
    const/16 p2, 0x1000

    :try_start_54
    new-array p2, p2, [B

    .line 341
    :goto_56
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_64

    .line 342
    invoke-virtual {v1, p2, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 343
    invoke-virtual {p0, p2, v2, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_84

    goto :goto_56

    .line 346
    :cond_64
    nop

    .line 348
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    .line 353
    goto :goto_6a

    .line 349
    :catchall_69
    move-exception p2

    .line 355
    :goto_6a
    if-eqz p1, :cond_72

    .line 357
    :try_start_6c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    .line 362
    :goto_6f
    goto :goto_72

    .line 358
    :catchall_70
    move-exception p1

    goto :goto_6f

    .line 365
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_a1

    .line 375
    if-eqz v3, :cond_82

    .line 376
    :try_start_7c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_82

    .line 378
    :catchall_80
    move-exception p1

    goto :goto_83

    .line 382
    :cond_82
    :goto_82
    nop

    .line 365
    :goto_83
    return-object p0

    .line 346
    :catchall_84
    move-exception p0

    goto :goto_8c

    :catchall_86
    move-exception p0

    move-object v1, v0

    goto :goto_8c

    :catchall_89
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    :goto_8c
    if-eqz v1, :cond_93

    .line 348
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    .line 353
    goto :goto_93

    .line 349
    :catchall_92
    move-exception p2

    .line 355
    :cond_93
    :goto_93
    if-eqz p1, :cond_9a

    .line 357
    :try_start_95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    .line 362
    goto :goto_9a

    .line 358
    :catchall_99
    move-exception p1

    .line 362
    :cond_9a
    :goto_9a
    :try_start_9a
    throw p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_a1

    .line 375
    :cond_9b
    if-eqz v3, :cond_b0

    .line 376
    :try_start_9d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_ae

    goto :goto_b0

    .line 368
    :catchall_a1
    move-exception p0

    goto :goto_a5

    :catchall_a3
    move-exception p0

    move-object v3, v0

    .line 369
    :goto_a5
    :try_start_a5
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_b2

    .line 375
    if-eqz v3, :cond_b0

    .line 376
    :try_start_aa
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b0

    .line 378
    :catchall_ae
    move-exception p0

    .line 383
    goto :goto_b1

    .line 382
    :cond_b0
    :goto_b0
    nop

    .line 384
    :goto_b1
    return-object v0

    .line 374
    :catchall_b2
    move-exception p0

    .line 375
    if-eqz v3, :cond_bb

    .line 376
    :try_start_b5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b9

    goto :goto_bb

    .line 378
    :catchall_b9
    move-exception p1

    goto :goto_bc

    .line 382
    :cond_bb
    :goto_bb
    nop

    :goto_bc
    goto :goto_be

    :goto_bd
    throw p0

    :goto_be
    goto :goto_bd
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .line 117
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 118
    return-object v1

    .line 123
    :cond_8
    nop

    .line 124
    nop

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    :try_start_f
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_b6

    .line 130
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v4, "https"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_46

    .line 131
    sget-object p0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    .line 138
    :cond_46
    const-string p0, "GET"

    invoke-virtual {v3, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 144
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_a4

    .line 145
    if-eqz p2, :cond_68

    .line 146
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string p2, "utf-8"

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_91

    .line 148
    :cond_68
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    .line 149
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_76
    .catchall {:try_start_1b .. :try_end_76} :catchall_b4

    .line 151
    :goto_76
    :try_start_76
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_88

    goto :goto_76

    .line 154
    :cond_88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Input stream more than 100 MB size limit"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_a0

    .line 157
    :cond_90
    move-object v1, p0

    .line 172
    :goto_91
    if-eqz v1, :cond_99

    .line 173
    :try_start_93
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_99

    .line 175
    :catchall_97
    move-exception p0

    goto :goto_9a

    .line 179
    :cond_99
    :goto_99
    nop

    .line 181
    :goto_9a
    if-eqz v3, :cond_cc

    .line 182
    :try_start_9c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_ca

    goto :goto_cc

    .line 165
    :catchall_a0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_b8

    .line 160
    :cond_a4
    :try_start_a4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_b4

    .line 172
    nop

    .line 179
    nop

    .line 181
    if-eqz v3, :cond_b2

    .line 182
    :try_start_ac
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    goto :goto_b2

    .line 184
    :catchall_b0
    move-exception p1

    goto :goto_b3

    .line 188
    :cond_b2
    :goto_b2
    nop

    .line 160
    :goto_b3
    return-object p0

    .line 165
    :catchall_b4
    move-exception p0

    goto :goto_b8

    :catchall_b6
    move-exception p0

    move-object v3, v1

    .line 169
    :goto_b8
    :try_start_b8
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_d2

    .line 172
    if-eqz v1, :cond_c3

    .line 173
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_c3

    .line 175
    :catchall_c1
    move-exception p0

    goto :goto_c4

    .line 179
    :cond_c3
    :goto_c3
    nop

    .line 181
    :goto_c4
    if-eqz v3, :cond_cc

    .line 182
    :try_start_c6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_ca

    goto :goto_cc

    .line 184
    :catchall_ca
    move-exception p0

    .line 189
    goto :goto_cd

    .line 188
    :cond_cc
    :goto_cc
    nop

    .line 190
    :goto_cd
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :catchall_d2
    move-exception p0

    .line 172
    if-eqz v1, :cond_db

    .line 173
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9

    goto :goto_db

    .line 175
    :catchall_d9
    move-exception p1

    goto :goto_dc

    .line 179
    :cond_db
    :goto_db
    nop

    .line 181
    :goto_dc
    if-eqz v3, :cond_e4

    .line 182
    :try_start_de
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    goto :goto_e4

    .line 184
    :catchall_e2
    move-exception p1

    goto :goto_e5

    .line 188
    :cond_e4
    :goto_e4
    nop

    :goto_e5
    goto :goto_e7

    :goto_e6
    throw p0

    :goto_e7
    goto :goto_e6
.end method

.method private static b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .registers 7

    .line 446
    const-string p3, ""

    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 453
    const-string p4, "Accept-Encoding"

    invoke-virtual {p0, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string p4, "User-Agent"

    invoke-virtual {p0, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    if-eqz p1, :cond_1c

    .line 458
    const-string p4, "Host"

    invoke-virtual {p0, p4, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string p1, "Content-Type"

    invoke-virtual {p0, p1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_1c
    const/16 p1, 0xe

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_33

    const/16 p1, 0x13

    .line 481
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(I)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 482
    const-string p1, "Connection"

    const-string p3, "close"

    invoke-virtual {p0, p1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_33
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 486
    if-eqz p2, :cond_3c

    .line 487
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 489
    :cond_3c
    sget p1, Lcom/tendcloud/tenddata/game/at;->a:I

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 490
    sget p1, Lcom/tendcloud/tenddata/game/at;->b:I

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 497
    nop

    .line 498
    return-object p0

    .line 491
    :catchall_48
    move-exception p0

    .line 492
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 496
    const/4 p0, 0x0

    return-object p0
.end method
