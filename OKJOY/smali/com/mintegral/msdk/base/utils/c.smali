.class public final Lcom/mintegral/msdk/base/utils/c;
.super Ljava/lang/Object;
.source "CommonDeviceUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:I

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:I

.field private static y:Ljava/lang/String;

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->d:Ljava/lang/String;

    .line 71
    sput v2, Lcom/mintegral/msdk/base/utils/c;->e:I

    .line 72
    sput v2, Lcom/mintegral/msdk/base/utils/c;->f:I

    .line 73
    sput v1, Lcom/mintegral/msdk/base/utils/c;->g:I

    .line 74
    sput v1, Lcom/mintegral/msdk/base/utils/c;->h:I

    .line 611
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    .line 612
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->l:Ljava/lang/String;

    .line 613
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->m:Ljava/lang/String;

    .line 614
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->n:Ljava/lang/String;

    .line 615
    sput v1, Lcom/mintegral/msdk/base/utils/c;->o:I

    .line 616
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->p:Ljava/lang/String;

    .line 617
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->q:Ljava/lang/String;

    .line 618
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->r:Ljava/lang/String;

    .line 619
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->s:Ljava/lang/String;

    .line 620
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->t:Ljava/lang/String;

    .line 621
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->u:Ljava/lang/String;

    .line 622
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->v:Ljava/lang/String;

    .line 623
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->w:Ljava/lang/String;

    .line 624
    sput v2, Lcom/mintegral/msdk/base/utils/c;->x:I

    .line 625
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->y:Ljava/lang/String;

    .line 626
    sput v1, Lcom/mintegral/msdk/base/utils/c;->z:I

    return-void
.end method

.method public static A()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1368
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_serial_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1369
    const-string v0, ""

    .line 1371
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_d
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1691
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1692
    const-string v0, ""

    .line 1730
    :goto_e
    return-object v0

    .line 1695
    :cond_f
    if-nez p0, :cond_14

    .line 1696
    const-string v0, ""

    goto :goto_e

    .line 1698
    :cond_14
    const-string v0, "/proc/meminfo"

    .line 1705
    :try_start_16
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_5b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_85
    .catchall {:try_start_16 .. :try_end_1b} :catchall_ae

    .line 1706
    :try_start_1b
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_db
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_22} :catch_d6
    .catchall {:try_start_1b .. :try_end_22} :catchall_ce

    .line 1707
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1708
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1712
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    .line 1713
    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3d} :catch_e0
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3d} :catch_d9
    .catchall {:try_start_22 .. :try_end_3d} :catchall_d1

    move-result-object v0

    .line 1720
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_50

    .line 1725
    :goto_41
    :try_start_41
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_e

    .line 1726
    :catch_45
    move-exception v1

    .line 1727
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 1721
    :catch_50
    move-exception v1

    .line 1722
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 1714
    :catch_5b
    move-exception v0

    move-object v1, v2

    .line 1715
    :goto_5d
    :try_start_5d
    const-string v3, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_d3

    .line 1720
    :try_start_66
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6f

    .line 1725
    :goto_69
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_7a

    .line 1730
    :goto_6c
    const-string v0, ""

    goto :goto_e

    .line 1721
    :catch_6f
    move-exception v0

    .line 1722
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 1726
    :catch_7a
    move-exception v0

    .line 1727
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    .line 1716
    :catch_85
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 1717
    :goto_88
    :try_start_88
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_d1

    .line 1720
    :try_start_91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_a3

    .line 1725
    :goto_94
    :try_start_94
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_6c

    .line 1726
    :catch_98
    move-exception v0

    .line 1727
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    .line 1721
    :catch_a3
    move-exception v0

    .line 1722
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_94

    .line 1719
    :catchall_ae
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 1720
    :goto_b1
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b8

    .line 1725
    :goto_b4
    :try_start_b4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_c3

    .line 1728
    :goto_b7
    throw v0

    .line 1721
    :catch_b8
    move-exception v1

    .line 1722
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b4

    .line 1726
    :catch_c3
    move-exception v1

    .line 1727
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b7

    .line 1719
    :catchall_ce
    move-exception v0

    move-object v1, v2

    goto :goto_b1

    :catchall_d1
    move-exception v0

    goto :goto_b1

    :catchall_d3
    move-exception v0

    move-object v3, v2

    goto :goto_b1

    .line 1716
    :catch_d6
    move-exception v0

    move-object v1, v2

    goto :goto_88

    :catch_d9
    move-exception v0

    goto :goto_88

    .line 1714
    :catch_db
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_5d

    :catch_e0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5d
.end method

.method public static B()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1379
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1380
    const-string v0, ""

    .line 1382
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_d
.end method

.method static synthetic B(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->C(Landroid/content/Context;)V

    return-void
.end method

.method public static C()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1391
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1392
    const-string v0, ""

    .line 1394
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_d
.end method

.method private static C(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 712
    :try_start_0
    const-string v0, "mintegral_ua"

    sget-object v1, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 717
    :goto_7
    return-void

    .line 713
    :catch_8
    move-exception v0

    .line 714
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static D()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1401
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1402
    const-string v0, ""

    .line 1404
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    goto :goto_d
.end method

.method public static E()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1411
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1412
    const-string v0, ""

    .line 1414
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_d
.end method

.method public static F()I
    .registers 1

    .prologue
    .line 1422
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1423
    const/4 v0, -0x1

    .line 1425
    :goto_c
    return v0

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_c
.end method

.method public static G()I
    .registers 1

    .prologue
    .line 1453
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1454
    const/4 v0, -0x1

    .line 1456
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static H()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1566
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1567
    const-string v0, ""

    .line 1603
    :goto_e
    return-object v0

    .line 1569
    :cond_f
    const-string v1, "/proc/meminfo"

    .line 1571
    const/4 v0, 0x0

    .line 1575
    :try_start_12
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_68
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_83
    .catchall {:try_start_12 .. :try_end_17} :catchall_9f

    .line 1576
    :try_start_17
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v2, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1e} :catch_c2
    .catchall {:try_start_17 .. :try_end_1e} :catchall_ba

    .line 1577
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 1578
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1579
    if-eqz v1, :cond_49

    .line 1580
    new-instance v3, Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v1, v5

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_47} :catch_cb
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_47} :catch_c5
    .catchall {:try_start_1e .. :try_end_47} :catchall_bd

    move-result-wide v0

    double-to-int v0, v0

    .line 1590
    :cond_49
    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_b2

    .line 1597
    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_63

    .line 1603
    :cond_4f
    :goto_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1600
    :catch_63
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 1583
    :catch_68
    move-exception v1

    move-object v2, v3

    .line 1584
    :goto_6a
    :try_start_6a
    const-string v4, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_bf

    .line 1589
    if-eqz v3, :cond_78

    .line 1590
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_b4

    .line 1596
    :cond_78
    :goto_78
    if-eqz v2, :cond_4f

    .line 1597
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_4f

    .line 1600
    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 1585
    :catch_83
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 1586
    :goto_86
    :try_start_86
    const-string v3, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_bd

    .line 1589
    if-eqz v4, :cond_94

    .line 1590
    :try_start_91
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_b6

    .line 1596
    :cond_94
    :goto_94
    if-eqz v2, :cond_4f

    .line 1597
    :try_start_96
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_4f

    .line 1600
    :catch_9a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 1588
    :catchall_9f
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 1589
    :goto_a2
    if-eqz v4, :cond_a7

    .line 1590
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_b8

    .line 1596
    :cond_a7
    :goto_a7
    if-eqz v2, :cond_ac

    .line 1597
    :try_start_a9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 1601
    :cond_ac
    :goto_ac
    throw v0

    .line 1600
    :catch_ad
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ac

    :catch_b2
    move-exception v1

    goto :goto_4c

    :catch_b4
    move-exception v1

    goto :goto_78

    :catch_b6
    move-exception v1

    goto :goto_94

    :catch_b8
    move-exception v1

    goto :goto_a7

    .line 1588
    :catchall_ba
    move-exception v0

    move-object v2, v3

    goto :goto_a2

    :catchall_bd
    move-exception v0

    goto :goto_a2

    :catchall_bf
    move-exception v0

    move-object v4, v3

    goto :goto_a2

    .line 1585
    :catch_c2
    move-exception v1

    move-object v2, v3

    goto :goto_86

    :catch_c5
    move-exception v1

    goto :goto_86

    .line 1583
    :catch_c7
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_6a

    :catch_cb
    move-exception v1

    move-object v3, v4

    goto :goto_6a
.end method

.method public static I()Ljava/lang/String;
    .registers 2

    .prologue
    const/16 v1, 0x15

    .line 1745
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1746
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2f

    .line 3734
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_24

    .line 3735
    :cond_1d
    const-string v0, ""

    .line 1747
    :goto_1f
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->d:Ljava/lang/String;

    .line 1755
    :cond_21
    :goto_21
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->d:Ljava/lang/String;

    return-object v0

    .line 3738
    :cond_24
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 1749
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->d:Ljava/lang/String;

    goto :goto_21
.end method

.method public static J()I
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1760
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1761
    const/4 v0, 0x0

    .line 1773
    :goto_e
    return v0

    .line 1763
    :cond_f
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    .line 1764
    const-string v0, "FreeRamSize"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1766
    sub-long v0, v6, v0

    const-wide/32 v8, 0x1b7740

    cmp-long v0, v0, v8

    if-gtz v0, :cond_3b

    sget v0, Lcom/mintegral/msdk/base/utils/c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_70

    .line 3777
    :cond_3b
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 3778
    if-eqz v0, :cond_73

    .line 3780
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3781
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3782
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3783
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1767
    :goto_57
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lcom/mintegral/msdk/base/utils/c;->f:I

    .line 1768
    const-string v0, "FreeRamSize"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_70} :catch_75

    .line 1773
    :cond_70
    :goto_70
    sget v0, Lcom/mintegral/msdk/base/utils/c;->f:I

    goto :goto_e

    :cond_73
    move-wide v0, v2

    .line 3785
    goto :goto_57

    .line 1770
    :catch_75
    move-exception v0

    .line 1771
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70
.end method

.method public static K()I
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1801
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1802
    const/4 v0, 0x0

    .line 1817
    :goto_e
    return v0

    .line 1804
    :cond_f
    sget v0, Lcom/mintegral/msdk/base/utils/c;->e:I

    if-gtz v0, :cond_74

    .line 1806
    :try_start_13
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    .line 1807
    const-string v0, "TotalRamSize"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1809
    sub-long v0, v6, v0

    const-wide/32 v8, 0x1b7740

    cmp-long v0, v0, v8

    if-gtz v0, :cond_3f

    sget v0, Lcom/mintegral/msdk/base/utils/c;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_74

    .line 3788
    :cond_3f
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 3789
    if-eqz v0, :cond_77

    .line 3791
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3792
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3793
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3794
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1810
    :goto_5b
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lcom/mintegral/msdk/base/utils/c;->e:I

    .line 1811
    const-string v0, "TotalRamSize"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_74} :catch_79

    .line 1817
    :cond_74
    :goto_74
    sget v0, Lcom/mintegral/msdk/base/utils/c;->e:I

    goto :goto_e

    :cond_77
    move-wide v0, v2

    .line 3796
    goto :goto_5b

    .line 1813
    :catch_79
    move-exception v0

    .line 1814
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74
.end method

.method static synthetic L()I
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->O()I

    move-result v0

    return v0
.end method

.method static synthetic M()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static N()V
    .registers 5

    .prologue
    .line 748
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 749
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 750
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 751
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Build/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    .line 757
    :goto_45
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "append ua:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void

    .line 755
    :cond_5c
    const-string v0, "Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    goto :goto_45
.end method

.method private static O()I
    .registers 2

    .prologue
    .line 1084
    const/4 v0, 0x0

    .line 1086
    :try_start_1
    sget-object v1, Lcom/mintegral/msdk/base/utils/c;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1087
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->k()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 1092
    :cond_d
    :goto_d
    return v0

    .line 1090
    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 63
    sput p0, Lcom/mintegral/msdk/base/utils/c;->h:I

    return p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 235
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 903
    const-string v1, ""

    .line 904
    if-eqz p1, :cond_8

    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    :cond_8
    move-object v0, v1

    .line 919
    :goto_9
    return-object v0

    .line 908
    :cond_a
    :try_start_a
    sget-boolean v0, Lcom/mintegral/msdk/base/common/a;->r:Z

    if-eqz v0, :cond_2e

    .line 909
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 910
    if-nez v0, :cond_1b

    .line 911
    const-string v0, ""

    goto :goto_9

    .line 913
    :cond_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 914
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_9

    .line 916
    :catch_24
    move-exception v0

    .line 917
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    move-object v0, v1

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1206
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1207
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->y:Ljava/lang/String;

    .line 1217
    :goto_a
    return-object v0

    .line 1209
    :cond_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    if-eqz p1, :cond_33

    .line 1210
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1211
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->y:Ljava/lang/String;

    .line 1212
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PKGSource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/utils/c;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_36

    .line 1217
    :cond_33
    :goto_33
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->y:Ljava/lang/String;

    goto :goto_a

    .line 1214
    :catch_36
    move-exception v0

    .line 1215
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/16 v2, 0x15

    const/16 v1, 0x11

    const/4 v3, 0x3

    .line 86
    :try_start_5
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->j()Ljava/lang/String;

    .line 87
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->k(Landroid/content/Context;)I

    .line 90
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->i(Landroid/content/Context;)I

    .line 91
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->c()Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->e()Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 94
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 95
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->i()Ljava/lang/String;

    .line 100
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->s(Landroid/content/Context;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_f5

    .line 1876
    :try_start_32
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->k()I

    move-result v0

    .line 1877
    if-lt v0, v1, :cond_ca

    if-ge v0, v2, :cond_ca

    .line 1878
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mintegral/msdk/base/utils/c;->x:I
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4f} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4f} :catch_f5

    .line 1887
    :cond_4f
    :goto_4f
    :try_start_4f
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUnknowSourceStateForPrivate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/mintegral/msdk/base/utils/c;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/base/common/a;->s:Z

    .line 103
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/base/common/a;->r:Z

    .line 104
    const-string v0, "android.permission.GET_TASKS"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/base/common/a;->u:Z

    .line 105
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/base/common/a;->t:Z

    .line 106
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 107
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_c3

    .line 110
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mintegral/msdk/base/utils/c;->v:Ljava/lang/String;

    .line 111
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->w:Ljava/lang/String;

    .line 114
    :cond_c3
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    .line 115
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_c9} :catch_f5

    .line 119
    :goto_c9
    return-void

    .line 1880
    :cond_ca
    if-ge v0, v2, :cond_d2

    if-ge v0, v1, :cond_4f

    const/16 v1, 0xa

    if-le v0, v1, :cond_4f

    .line 1881
    :cond_d2
    :try_start_d2
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mintegral/msdk/base/utils/c;->x:I
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_e7} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e7} :catch_f5

    goto/16 :goto_4f

    .line 1884
    :catch_e9
    move-exception v0

    .line 1885
    :try_start_ea
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f3} :catch_f5

    goto/16 :goto_4f

    .line 119
    :catch_f5
    move-exception v0

    goto :goto_c9
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1110
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->c:Ljava/lang/String;

    .line 1111
    sput-object p0, Lcom/mintegral/msdk/base/utils/c;->a:Ljava/lang/String;

    .line 1112
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 243
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 126
    const-string v0, ""

    .line 170
    :goto_d
    return-object v0

    .line 128
    :cond_e
    if-nez p0, :cond_13

    .line 129
    const-string v0, ""

    goto :goto_d

    .line 131
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 132
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    goto :goto_d

    .line 135
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 137
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2c} :catch_2d

    goto :goto_d

    .line 139
    :catch_2d
    move-exception v0

    .line 140
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_37
    :try_start_37
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 144
    new-instance v0, Lcom/mintegral/msdk/base/utils/c$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/utils/c$1;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/utils/c$1;->start()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_47} :catch_4a

    .line 170
    :cond_47
    :goto_47
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    goto :goto_d

    .line 167
    :catch_4a
    move-exception v0

    .line 168
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sput-object p0, Lcom/mintegral/msdk/base/utils/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 329
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 330
    const-string v0, ""

    .line 332
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 179
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 180
    const-string v0, ""

    .line 190
    :goto_d
    return-object v0

    .line 182
    :cond_e
    if-nez p0, :cond_13

    .line 183
    const-string v0, ""

    goto :goto_d

    .line 186
    :cond_13
    :try_start_13
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_d

    .line 187
    :catch_18
    move-exception v0

    .line 188
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    const-string v0, ""

    goto :goto_d
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sput-object p0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 342
    const-string v0, ""

    .line 344
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 200
    const-string v0, ""

    .line 210
    :goto_d
    return-object v0

    .line 202
    :cond_e
    if-nez p0, :cond_13

    .line 203
    const-string v0, ""

    goto :goto_d

    .line 206
    :cond_13
    :try_start_13
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getImsi(Landroid/content/Context;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_d

    .line 207
    :catch_18
    move-exception v0

    .line 208
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    const-string v0, ""

    goto :goto_d
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sput-object p0, Lcom/mintegral/msdk/base/utils/c;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 353
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 354
    const-string v0, ""

    .line 356
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_d
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    if-nez p0, :cond_5

    .line 268
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->p:Ljava/lang/String;

    .line 277
    :goto_4
    return-object v0

    .line 271
    :cond_5
    :try_start_5
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 272
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->p:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_1a

    .line 277
    :cond_17
    :goto_17
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->p:Ljava/lang/String;

    goto :goto_4

    :catch_1a
    move-exception v0

    goto :goto_17
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 738
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 739
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 741
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 288
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_android_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 289
    const-string v0, ""

    .line 302
    :goto_d
    return-object v0

    .line 291
    :cond_e
    if-nez p0, :cond_13

    .line 292
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->i:Ljava/lang/String;

    goto :goto_d

    .line 295
    :cond_13
    :try_start_13
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 296
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->i:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_24

    .line 302
    :cond_21
    :goto_21
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->i:Ljava/lang/String;

    goto :goto_d

    .line 298
    :catch_24
    move-exception v0

    .line 299
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public static g()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 828
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    .line 829
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 830
    sget v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    .line 2944
    :goto_16
    return v0

    .line 832
    :cond_17
    if-nez v2, :cond_1c

    .line 833
    sget v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    goto :goto_16

    .line 836
    :cond_1c
    sget v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    if-eqz v0, :cond_30

    .line 2778
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mintegral/msdk/base/utils/c$3;

    invoke-direct {v3, v2}, Lcom/mintegral/msdk/base/utils/c$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2816
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 838
    sget v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    goto :goto_16

    .line 840
    :cond_30
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 841
    if-nez v0, :cond_3d

    .line 842
    sget v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    goto :goto_16

    .line 844
    :cond_3d
    sget-boolean v3, Lcom/mintegral/msdk/base/common/a;->r:Z

    if-eqz v3, :cond_88

    .line 846
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 847
    if-nez v0, :cond_4c

    .line 848
    const/4 v0, 0x0

    .line 849
    sput v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    move v0, v1

    goto :goto_16

    .line 851
    :cond_4c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_66

    .line 852
    const/16 v0, 0x9

    .line 853
    sput v0, Lcom/mintegral/msdk/base/utils/c;->h:I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_58

    goto :goto_16

    .line 866
    :catch_58
    move-exception v0

    .line 867
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    sput v1, Lcom/mintegral/msdk/base/utils/c;->h:I

    move v0, v1

    goto :goto_16

    .line 855
    :cond_66
    :try_start_66
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 856
    if-nez v0, :cond_75

    .line 857
    const/4 v0, 0x0

    .line 858
    sput v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    move v0, v1

    goto :goto_16

    .line 860
    :cond_75
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 861
    sput v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    .line 2923
    packed-switch v0, :pswitch_data_8e

    :pswitch_7e
    move v0, v1

    .line 861
    goto :goto_16

    .line 2929
    :pswitch_80
    const/4 v0, 0x2

    goto :goto_16

    .line 2939
    :pswitch_82
    const/4 v0, 0x3

    goto :goto_16

    .line 2941
    :pswitch_84
    const/4 v0, 0x4

    goto :goto_16

    .line 2944
    :pswitch_86
    const/4 v0, 0x5

    goto :goto_16

    .line 864
    :cond_88
    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/base/utils/c;->h:I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8b} :catch_58

    .line 871
    sget v0, Lcom/mintegral/msdk/base/utils/c;->h:I

    goto :goto_16

    .line 2923
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_80
        :pswitch_80
        :pswitch_82
        :pswitch_80
        :pswitch_82
        :pswitch_82
        :pswitch_80
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_80
        :pswitch_82
        :pswitch_84
        :pswitch_82
        :pswitch_82
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_86
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 308
    if-nez p0, :cond_5

    .line 309
    const-string v0, ""

    .line 320
    :goto_4
    return-object v0

    .line 311
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->j:Ljava/lang/String;

    .line 313
    :try_start_8
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 314
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 315
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getUPMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->j:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1c} :catch_1f

    .line 320
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->j:Ljava/lang/String;

    goto :goto_4

    .line 317
    :catch_1f
    move-exception v0

    .line 318
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public static h()I
    .registers 1

    .prologue
    .line 892
    sget v0, Lcom/mintegral/msdk/base/utils/c;->x:I

    return v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 366
    const-string v0, ""

    .line 376
    :goto_d
    return-object v0

    .line 368
    :cond_e
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 369
    if-nez p0, :cond_1b

    .line 370
    const-string v0, "en"

    goto :goto_d

    .line 372
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 373
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 374
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->r:Ljava/lang/String;

    goto :goto_d

    .line 376
    :cond_2c
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->r:Ljava/lang/String;

    goto :goto_d
.end method

.method public static i(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 401
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_b

    .line 422
    :cond_a
    :goto_a
    return v0

    .line 405
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_a

    .line 411
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 413
    if-ne v2, v1, :cond_1b

    move v0, v1

    .line 415
    goto :goto_a

    .line 416
    :cond_1b
    if-ne v2, v0, :cond_a

    goto :goto_a
.end method

.method public static i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1041
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->k()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_16

    .line 1042
    :cond_13
    const-string v0, ""

    .line 1062
    :goto_15
    return-object v0

    .line 1044
    :cond_16
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1045
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/utils/c$4;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/utils/c$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1056
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1057
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->s:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_15

    .line 1059
    :catch_2e
    move-exception v0

    .line 1060
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1062
    :cond_38
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->s:Ljava/lang/String;

    goto :goto_15
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1071
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1072
    const-string v0, ""

    .line 1079
    :goto_d
    return-object v0

    .line 1074
    :cond_e
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1075
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->k()I

    move-result v0

    .line 1076
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->l:Ljava/lang/String;

    .line 1079
    :cond_20
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->l:Ljava/lang/String;

    goto :goto_d
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 431
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 432
    const-string v0, ""

    .line 445
    :goto_d
    return-object v0

    .line 435
    :cond_e
    if-nez p0, :cond_13

    .line 436
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->q:Ljava/lang/String;

    goto :goto_d

    .line 439
    :cond_13
    :try_start_13
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 440
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->q:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_24

    .line 445
    :cond_21
    :goto_21
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->q:Ljava/lang/String;

    goto :goto_d

    .line 442
    :catch_24
    move-exception v0

    .line 443
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public static k()I
    .registers 1

    .prologue
    .line 1102
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 1106
    :goto_2
    return v0

    .line 1104
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1106
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static k(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 454
    if-nez p0, :cond_5

    .line 455
    sget v0, Lcom/mintegral/msdk/base/utils/c;->o:I

    .line 467
    :goto_4
    return v0

    .line 457
    :cond_5
    sget v0, Lcom/mintegral/msdk/base/utils/c;->o:I

    if-nez v0, :cond_21

    .line 459
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 460
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 461
    sput v0, Lcom/mintegral/msdk/base/utils/c;->o:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 463
    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 464
    const/4 v0, -0x1

    goto :goto_4

    .line 467
    :cond_21
    sget v0, Lcom/mintegral/msdk/base/utils/c;->o:I

    goto :goto_4
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1120
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1121
    const-string v0, ""

    .line 1126
    :goto_d
    return-object v0

    .line 1123
    :cond_e
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->a:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1124
    const-string v0, ""

    goto :goto_d

    .line 1126
    :cond_15
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->a:Ljava/lang/String;

    goto :goto_d
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 476
    if-nez p0, :cond_5

    .line 477
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->n:Ljava/lang/String;

    .line 489
    :goto_4
    return-object v0

    .line 480
    :cond_5
    :try_start_5
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 482
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 483
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->n:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_4

    .line 486
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    const-string v0, ""

    goto :goto_4

    .line 489
    :cond_26
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->n:Ljava/lang/String;

    goto :goto_4
.end method

.method public static m(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 499
    if-nez p0, :cond_5

    .line 500
    sget v0, Lcom/mintegral/msdk/base/utils/c;->z:I

    .line 509
    :goto_4
    return v0

    .line 502
    :cond_5
    sget v0, Lcom/mintegral/msdk/base/utils/c;->z:I

    if-nez v0, :cond_11

    .line 504
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Lcom/mintegral/msdk/base/utils/c;->z:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_14

    .line 509
    :cond_11
    :goto_11
    sget v0, Lcom/mintegral/msdk/base/utils/c;->z:I

    goto :goto_4

    .line 505
    :catch_14
    move-exception v0

    .line 506
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static m()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1132
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1133
    const-string v0, ""

    .line 1138
    :goto_d
    return-object v0

    .line 1135
    :cond_e
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->c:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1136
    const-string v0, ""

    goto :goto_d

    .line 1138
    :cond_15
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->c:Ljava/lang/String;

    goto :goto_d
.end method

.method public static n(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 526
    :goto_d
    return v0

    .line 516
    :cond_e
    if-nez p0, :cond_12

    move v0, v1

    .line 517
    goto :goto_d

    .line 520
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 521
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->p(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 522
    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_29

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_d

    :cond_29
    const-string v0, "width"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_36

    move-result v0

    goto :goto_d

    .line 524
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 526
    goto :goto_d
.end method

.method public static n()Ljava/util/UUID;
    .registers 4

    .prologue
    .line 1166
    const/4 v0, 0x0

    .line 1168
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 1172
    :goto_5
    return-object v0

    .line 1169
    :catch_6
    move-exception v1

    .line 1170
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static o()I
    .registers 4

    .prologue
    .line 1184
    const/4 v1, 0x0

    .line 1186
    :try_start_1
    sget-boolean v0, Lcom/mintegral/msdk/base/common/a;->t:Z

    if-eqz v0, :cond_32

    .line 1187
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 1188
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1189
    if-eqz v0, :cond_32

    .line 1190
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_32

    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_32

    .line 1192
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1193
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_26} :catch_28

    move-result v0

    .line 1201
    :goto_27
    return v0

    .line 1198
    :catch_28
    move-exception v0

    .line 1199
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    move v0, v1

    goto :goto_27
.end method

.method public static o(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 530
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 543
    :goto_d
    return v0

    .line 533
    :cond_e
    if-nez p0, :cond_12

    move v0, v1

    .line 534
    goto :goto_d

    .line 537
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 538
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->p(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 539
    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_29

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_d

    :cond_29
    const-string v0, "height"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_36

    move-result v0

    goto :goto_d

    .line 541
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 543
    goto :goto_d
.end method

.method public static p()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1253
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1254
    const-string v0, ""

    .line 1256
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_d
.end method

.method public static p(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 9

    .prologue
    .line 548
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 549
    if-nez p0, :cond_9

    move-object v0, v1

    .line 567
    :goto_8
    return-object v0

    .line 553
    :cond_9
    :try_start_9
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 554
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 555
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 558
    const-string v3, "android.view.Display"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 560
    const-string v4, "getRealMetrics"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 561
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v0, "height"

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, "width"

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4d} :catch_4f

    :goto_4d
    move-object v0, v1

    .line 567
    goto :goto_8

    .line 564
    :catch_4f
    move-exception v0

    .line 565
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d
.end method

.method public static q()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1263
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1264
    const-string v0, ""

    .line 1266
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_d
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 576
    if-nez p0, :cond_5

    .line 577
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->m:Ljava/lang/String;

    .line 589
    :goto_4
    return-object v0

    .line 580
    :cond_5
    :try_start_5
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 582
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 583
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->m:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_4

    .line 586
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    const-string v0, ""

    goto :goto_4

    .line 589
    :cond_26
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->m:Ljava/lang/String;

    goto :goto_4
.end method

.method public static r()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1274
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1275
    const-string v0, ""

    .line 1277
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_d
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_general_data"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 706
    :goto_e
    return-object v0

    .line 2724
    :cond_f
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2726
    :try_start_17
    const-string v0, "mintegral_ua"

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_25} :catch_f3

    .line 639
    :cond_25
    :goto_25
    :try_start_25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_ff

    move v0, v1

    .line 640
    :goto_30
    if-eqz v0, :cond_130

    .line 641
    const-string v0, "CommonDeviceUtil"

    const-string v1, "get ua in mainThread"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_3e} :catch_108

    move-result v0

    if-eqz v0, :cond_11d

    .line 644
    :try_start_41
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->O()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_65

    .line 645
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    .line 646
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDefaultUserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_65} :catch_102

    .line 651
    :cond_65
    :goto_65
    :try_start_65
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6a} :catch_108

    move-result v0

    if-eqz v0, :cond_ec

    .line 653
    :try_start_6d
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 654
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 655
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    .line 656
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    .line 657
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 658
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke getUserAgentString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_b4} :catch_113

    .line 662
    :goto_b4
    :try_start_b4
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b9} :catch_108

    move-result v0

    if-eqz v0, :cond_e1

    .line 664
    :try_start_bc
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    .line 665
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUserAgentString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_e1} :catch_118

    .line 670
    :cond_e1
    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 671
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->N()V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_ec} :catch_108

    .line 705
    :cond_ec
    :goto_ec
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->C(Landroid/content/Context;)V

    .line 706
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->k:Ljava/lang/String;

    goto/16 :goto_e

    .line 2727
    :catch_f3
    move-exception v0

    .line 2728
    const-string v3, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    :cond_ff
    move v0, v2

    .line 639
    goto/16 :goto_30

    .line 649
    :catch_102
    move-exception v0

    :try_start_103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_106} :catch_108

    goto/16 :goto_65

    .line 702
    :catch_108
    move-exception v0

    .line 703
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ec

    .line 660
    :catch_113
    move-exception v0

    :try_start_114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b4

    .line 667
    :catch_118
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_11c} :catch_108

    goto :goto_e1

    .line 677
    :cond_11d
    :try_start_11d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/utils/c$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/utils/c$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 693
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_12a} :catch_12b
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_12a} :catch_108

    goto :goto_ec

    .line 695
    :catch_12b
    move-exception v0

    :try_start_12c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ec

    .line 699
    :cond_130
    const-string v0, "CommonDeviceUtil"

    const-string v1, "get ua in subThread"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->N()V
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_13a} :catch_108

    goto :goto_ec
.end method

.method public static s()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1284
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1285
    const-string v0, ""

    .line 1287
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    goto :goto_d
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1149
    if-nez p0, :cond_5

    .line 1150
    const-string v0, ""

    .line 1162
    :goto_4
    return-object v0

    .line 1152
    :cond_5
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1154
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1155
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1156
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1157
    sput-object v0, Lcom/mintegral/msdk/base/utils/c;->t:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_4

    .line 1159
    :catch_1d
    move-exception v0

    const-string v0, ""

    goto :goto_4

    .line 1162
    :cond_21
    sget-object v0, Lcom/mintegral/msdk/base/utils/c;->t:Ljava/lang/String;

    goto :goto_4
.end method

.method public static t()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1294
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1295
    const-string v0, ""

    .line 1297
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    goto :goto_d
.end method

.method public static t(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1226
    if-nez p0, :cond_5

    move v0, v1

    .line 1245
    :goto_4
    return v0

    .line 1230
    :cond_5
    :try_start_5
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1231
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1232
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1233
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1234
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v3

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1235
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1237
    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_40

    move-result-wide v2

    .line 1239
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4a

    .line 1240
    const/4 v0, 0x1

    goto :goto_4

    .line 1242
    :catch_40
    move-exception v0

    .line 1243
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    move v0, v1

    .line 1245
    goto :goto_4
.end method

.method public static u(Landroid/content/Context;)I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1463
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_general_data"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    move v1, v2

    .line 1483
    :cond_f
    :goto_f
    return v1

    .line 1466
    :cond_10
    if-nez p0, :cond_14

    move v1, v2

    .line 1467
    goto :goto_f

    .line 1471
    :cond_14
    const/4 v2, 0x0

    :try_start_15
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1473
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1475
    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2e} :catch_3e

    move-result v2

    .line 1476
    const/4 v3, 0x2

    if-eq v2, v3, :cond_35

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3a

    :cond_35
    move v2, v0

    .line 1478
    :goto_36
    if-eqz v2, :cond_3c

    :goto_38
    move v1, v0

    goto :goto_f

    :cond_3a
    move v2, v1

    .line 1476
    goto :goto_36

    :cond_3c
    move v0, v1

    .line 1478
    goto :goto_38

    .line 1480
    :catch_3e
    move-exception v0

    .line 1481
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static u()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1305
    const-string v0, ""

    .line 1307
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    goto :goto_d
.end method

.method public static v()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1315
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1316
    const-string v0, ""

    .line 1318
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    goto :goto_d
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1493
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1494
    const-string v0, ""

    .line 1515
    :goto_d
    return-object v0

    .line 1497
    :cond_e
    const-wide/16 v2, 0x0

    .line 1499
    if-eqz p0, :cond_15

    .line 1500
    const-string v0, ""

    goto :goto_d

    .line 1503
    :cond_15
    :try_start_15
    const-string v0, "com.android.internal.os.PowerProfile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v4

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    .line 1505
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1506
    const-string v1, "com.android.internal.os.PowerProfile"

    .line 1507
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getBatteryCapacity"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 1508
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 1509
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1506
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4c} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_4c} :catch_71

    move-result-wide v0

    .line 1515
    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1510
    :catch_65
    move-exception v0

    .line 1511
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 1514
    goto :goto_4d

    .line 1512
    :catch_71
    move-exception v0

    .line 1513
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_4d
.end method

.method public static w(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1530
    .line 1531
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1558
    :cond_c
    :goto_c
    return v1

    .line 1534
    :cond_d
    if-eqz p0, :cond_c

    .line 1538
    :try_start_f
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1539
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1540
    const-string v2, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "46002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "46007"

    .line 1541
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "46008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "45412"

    .line 1542
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1543
    :cond_43
    const/4 v0, 0x0

    :goto_44
    move v1, v0

    .line 1558
    goto :goto_c

    .line 1544
    :cond_46
    const-string v2, "46001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "46006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "46009"

    .line 1545
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1546
    :cond_5e
    const/4 v0, 0x1

    goto :goto_44

    .line 1547
    :cond_60
    const-string v2, "46003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "46005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "46011"

    .line 1548
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "45502"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "45507"

    .line 1549
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_85} :catch_8c

    move-result v0

    if-eqz v0, :cond_8a

    .line 1550
    :cond_88
    const/4 v0, 0x2

    goto :goto_44

    .line 1552
    :cond_8a
    const/4 v0, -0x2

    goto :goto_44

    .line 1554
    :catch_8c
    move-exception v0

    .line 1555
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_44
.end method

.method public static w()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1326
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1327
    const-string v0, ""

    .line 1329
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    goto :goto_d
.end method

.method public static x()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1338
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1339
    const-string v0, ""

    .line 1341
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    goto :goto_d
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1612
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1613
    const-string v0, ""

    .line 1628
    :goto_d
    return-object v0

    .line 1615
    :cond_e
    if-nez p0, :cond_13

    .line 1616
    const-string v0, ""

    goto :goto_d

    .line 1619
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1620
    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_2b

    move-result-object v0

    goto :goto_d

    .line 1623
    :catch_1e
    move-exception v0

    .line 1624
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1628
    :goto_28
    const-string v0, ""

    goto :goto_d

    .line 1625
    :catch_2b
    move-exception v0

    .line 1626
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static y(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1637
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 1652
    :goto_d
    return v0

    .line 1640
    :cond_e
    if-nez p0, :cond_12

    move v0, v1

    .line 1641
    goto :goto_d

    .line 1644
    :cond_12
    :try_start_12
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1645
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1646
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_22} :catch_30

    move-result v0

    goto :goto_d

    .line 1647
    :catch_24
    move-exception v0

    .line 1648
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    move v0, v1

    .line 1652
    goto :goto_d

    .line 1649
    :catch_30
    move-exception v0

    .line 1650
    const-string v2, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public static y()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1348
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1349
    const-string v0, ""

    .line 1351
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto :goto_d
.end method

.method public static z()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1358
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1359
    const-string v0, ""

    .line 1361
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    goto :goto_d
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1661
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1662
    const-string v0, ""

    .line 1682
    :goto_d
    return-object v0

    .line 1664
    :cond_e
    if-nez p0, :cond_13

    .line 1665
    const-string v0, ""

    goto :goto_d

    .line 1668
    :cond_13
    :try_start_13
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1670
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 1671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1672
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 1673
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1674
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "keybroad"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 1676
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5d} :catch_5f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_5d} :catch_6c

    move-result-object v0

    goto :goto_d

    .line 1677
    :catch_5f
    move-exception v0

    .line 1678
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1682
    :goto_69
    const-string v0, ""

    goto :goto_d

    .line 1679
    :catch_6c
    move-exception v0

    .line 1680
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69
.end method
