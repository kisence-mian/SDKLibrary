.class public Lcom/tencent/bugly/proguard/z;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 632
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    .line 1220
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/z;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 786
    if-nez p0, :cond_3

    .line 787
    return-object p0

    .line 789
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 790
    if-nez v0, :cond_a

    return-object p0

    :cond_a
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1517
    if-eqz p1, :cond_8

    .line 1518
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 1520
    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/io/BufferedReader;
    .registers 5

    .line 1409
    const/4 v0, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_27

    .line 1414
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_22

    .line 1416
    return-object v1

    .line 1417
    :catchall_22
    move-exception p0

    .line 1419
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1420
    return-object v0

    .line 1410
    :cond_27
    :goto_27
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4

    .line 1432
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1433
    return-object v0

    .line 1436
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_1b

    .line 1440
    :cond_16
    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1a} :catch_1c

    return-object p0

    .line 1438
    :cond_1b
    :goto_1b
    return-object v0

    .line 1441
    :catch_1c
    move-exception p0

    .line 1443
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1444
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 867
    const/4 p2, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 868
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 869
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 870
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object p0

    .line 871
    :catch_12
    move-exception p0

    .line 872
    return-object p2
.end method

.method public static a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1036
    :try_start_c
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_16

    .line 1041
    if-eqz v0, :cond_15

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_15
    return-object p0

    .line 1037
    :catchall_16
    move-exception p0

    .line 1038
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    .line 1039
    if-eqz v0, :cond_1f

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1f
    const/4 p0, 0x0

    return-object p0

    .line 1041
    :catchall_21
    move-exception p0

    if-eqz v0, :cond_27

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_27
    throw p0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 5

    .line 115
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 116
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    .line 117
    :catch_13
    move-exception p0

    .line 118
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1053
    const-string v0, "android.permission.READ_LOGS"

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_12

    .line 1054
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "no read_log permission!"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1055
    return-object v0

    .line 1059
    :cond_12
    const-string p0, "threadtime"

    const-string v2, "-v"

    const-string v3, "-d"

    const-string v4, "logcat"

    if-nez p2, :cond_21

    .line 1060
    filled-new-array {v4, v3, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    .line 1062
    :cond_21
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const/4 v3, 0x2

    aput-object v2, v5, v3

    const/4 v2, 0x3

    aput-object p0, v5, v2

    const/4 p0, 0x4

    const-string v2, "-s"

    aput-object v2, v5, p0

    const/4 p0, 0x5

    aput-object p2, v5, p0

    move-object p0, v5

    .line 1064
    :goto_38
    nop

    .line 1065
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    :try_start_3e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1068
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1071
    :cond_54
    :goto_54
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 1072
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    if-lez p1, :cond_54

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, p1, :cond_54

    .line 1074
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 1077
    :cond_74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_3e .. :try_end_78} :catchall_9f

    .line 1084
    if-eqz v0, :cond_9e

    .line 1086
    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_81} :catch_82

    .line 1089
    goto :goto_86

    .line 1087
    :catch_82
    move-exception p1

    .line 1088
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1091
    :goto_86
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_8e

    .line 1094
    goto :goto_92

    .line 1092
    :catch_8e
    move-exception p1

    .line 1093
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1096
    :goto_92
    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_99} :catch_9a

    .line 1099
    goto :goto_9e

    .line 1097
    :catch_9a
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1099
    :cond_9e
    :goto_9e
    return-object p0

    .line 1078
    :catchall_9f
    move-exception p0

    .line 1079
    :try_start_a0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_a9

    .line 1080
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1082
    :cond_a9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\n[error:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_ca
    .catchall {:try_start_a0 .. :try_end_ca} :catchall_f1

    .line 1084
    if-eqz v0, :cond_f0

    .line 1086
    :try_start_cc
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d3} :catch_d4

    .line 1089
    goto :goto_d8

    .line 1087
    :catch_d4
    move-exception p1

    .line 1088
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1091
    :goto_d8
    :try_start_d8
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_df} :catch_e0

    .line 1094
    goto :goto_e4

    .line 1092
    :catch_e0
    move-exception p1

    .line 1093
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1096
    :goto_e4
    :try_start_e4
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_eb} :catch_ec

    .line 1099
    goto :goto_f0

    .line 1097
    :catch_ec
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1099
    :cond_f0
    :goto_f0
    return-object p0

    .line 1084
    :catchall_f1
    move-exception p0

    if-eqz v0, :cond_118

    .line 1086
    :try_start_f4
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fb} :catch_fc

    .line 1089
    goto :goto_100

    .line 1087
    :catch_fc
    move-exception p1

    .line 1088
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1091
    :goto_100
    :try_start_100
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_107} :catch_108

    .line 1094
    goto :goto_10c

    .line 1092
    :catch_108
    move-exception p1

    .line 1093
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1096
    :goto_10c
    :try_start_10c
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_113} :catch_114

    .line 1099
    goto :goto_118

    .line 1097
    :catch_114
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1099
    :cond_118
    :goto_118
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 638
    const-class v0, Lcom/tencent/bugly/proguard/z;

    const-string v1, ""

    if-eqz p1, :cond_8a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_8a

    .line 641
    :cond_12
    sget-object v1, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    if-nez v1, :cond_76

    .line 642
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    .line 643
    const-string v1, "getprop"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/z;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 644
    if-eqz p0, :cond_76

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_76

    .line 645
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Successfully get \'getprop\' list."

    invoke-static {v0, v3, v2}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 646
    const-string v2, "\\[(.+)\\]: \\[(.*)\\]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 647
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 648
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 650
    sget-object v5, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_62
    goto :goto_3d

    .line 653
    :cond_63
    new-array p0, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const-string v1, "System properties number: %d."

    invoke-static {v0, v1, p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 656
    :cond_76
    sget-object p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    .line 658
    sget-object p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 661
    :cond_87
    const-string p0, "fail"

    return-object p0

    .line 639
    :cond_8a
    :goto_8a
    return-object v1
.end method

.method public static a(Ljava/io/File;IZ)Ljava/lang/String;
    .registers 8

    .line 1365
    const/4 v0, 0x0

    if-eqz p0, :cond_7e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_7e

    .line 1368
    :cond_11
    nop

    .line 1370
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1371
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_62

    .line 1374
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 1375
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    if-lez p1, :cond_28

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, p1, :cond_28

    .line 1377
    if-eqz p2, :cond_49

    .line 1378
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1379
    goto :goto_53

    .line 1381
    :cond_49
    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v1, p0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 1385
    :cond_53
    :goto_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_57
    .catchall {:try_start_28 .. :try_end_57} :catchall_60

    .line 1391
    :try_start_57
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 1397
    goto :goto_5f

    .line 1394
    :catch_5b
    move-exception p1

    .line 1396
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1397
    :goto_5f
    return-object p0

    .line 1386
    :catchall_60
    move-exception p0

    goto :goto_64

    :catchall_62
    move-exception p0

    move-object v2, v0

    .line 1388
    :goto_64
    :try_start_64
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_72

    .line 1389
    if-eqz v2, :cond_71

    .line 1393
    :try_start_69
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 1397
    goto :goto_71

    .line 1394
    :catch_6d
    move-exception p0

    .line 1396
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1397
    :cond_71
    :goto_71
    return-object v0

    .line 1391
    :catchall_72
    move-exception p0

    if-eqz v2, :cond_7d

    .line 1393
    :try_start_75
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    .line 1397
    goto :goto_7d

    .line 1394
    :catch_79
    move-exception p1

    .line 1396
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1397
    :cond_7d
    :goto_7d
    throw p0

    .line 1366
    :cond_7e
    :goto_7e
    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 82
    if-nez p0, :cond_5

    .line 83
    const-string p0, ""

    return-object p0

    .line 87
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object p0

    .line 90
    :catchall_1b
    move-exception p0

    .line 91
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :cond_25
    const-string p0, "fail"

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 129
    if-nez p0, :cond_4

    .line 130
    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_4
    :try_start_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 134
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    .line 135
    :catch_12
    move-exception p0

    .line 136
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    .line 412
    if-nez p0, :cond_5

    .line 413
    const-string p0, ""

    return-object p0

    .line 416
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    nop

    .line 418
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 419
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    .line 421
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    :cond_23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 425
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .registers 3

    .line 1457
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1458
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 1460
    return-object v0

    .line 1461
    :catchall_c
    move-exception p0

    .line 1462
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Util] Failed to start a thread to execute task with message: %s"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1464
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(IZ)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1111
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1112
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 1113
    if-nez v0, :cond_f

    .line 1114
    const/4 p0, 0x0

    return-object p0

    .line 1116
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1117
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1118
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    :cond_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1123
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v4, v4

    if-eqz v4, :cond_38

    .line 1129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v5, v4

    :goto_5e
    if-ge v3, v5, :cond_93

    aget-object v6, v4, v3

    .line 1133
    if-lez p0, :cond_83

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, p0, :cond_83

    .line 1135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n[Stack over limit size :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , has been cut!]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    goto :goto_93

    .line 1140
    :cond_83
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1143
    :cond_93
    :goto_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    goto/16 :goto_38

    .line 1146
    :cond_cd
    return-object p1
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .line 914
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 915
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 916
    return-object v0

    .line 918
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 920
    const-string v3, "pluginNum"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 921
    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_3b

    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pluginKey"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 924
    :cond_3b
    move v5, v4

    :goto_3c
    if-ge v5, v3, :cond_90

    .line 925
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pluginVal"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "plugInId"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 926
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "plugInUUID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 927
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "plugInVersion"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 928
    new-instance v9, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    invoke-direct {v9, v6, v7, v8}, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 930
    :cond_90
    nop

    .line 932
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne p0, v3, :cond_bf

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    .line 934
    nop

    :goto_a5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_c6

    .line 935
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-class v3, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    .line 938
    :cond_bf
    new-array p0, v4, [Ljava/lang/Object;

    const-string v1, "map plugin parcel error!"

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 941
    :cond_c6
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;)V"
        }
    .end annotation

    .line 883
    if-eqz p1, :cond_d6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto/16 :goto_d6

    .line 887
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 890
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 891
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    goto :goto_20

    .line 894
    :cond_3b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 895
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "pluginNum"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 896
    const/4 v0, 0x0

    move v3, v0

    :goto_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pluginKey"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 899
    :cond_6c
    nop

    :goto_6d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d2

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pluginVal"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "plugInId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "plugInUUID"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "plugInVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v4, v4, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 904
    :cond_d2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 905
    return-void

    .line 884
    :cond_d6
    :goto_d6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 885
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 846
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 847
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 848
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 851
    return-void

    .line 849
    :catch_d
    move-exception p0

    .line 852
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 14

    .line 1293
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "[Util] Try to lock file:%s (pid=%d | tid=%d)"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1296
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1298
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long p2, v6, p2

    if-gez p2, :cond_55

    .line 1303
    return v2

    .line 1306
    :cond_55
    const-string p2, "[Util] Lock file (%s) is expired, unlock it."

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1307
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1310
    :cond_61
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_85

    .line 1311
    const-string p0, "[Util] Successfully locked file: %s (pid=%d | tid=%d)"

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1313
    return v4

    .line 1315
    :cond_85
    const-string p0, "[Util] Failed to locked file: %s (pid=%d | tid=%d)"

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a2
    .catchall {:try_start_21 .. :try_end_a2} :catchall_a3

    .line 1317
    return v2

    .line 1319
    :catchall_a3
    move-exception p0

    .line 1321
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1322
    return v2
.end method

.method public static a(Ljava/io/File;Ljava/io/File;I)Z
    .registers 9

    .line 503
    const-string p2, "rqdp{  ZF end}"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "rqdp{  ZF start}"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 504
    if-eqz p0, :cond_ff

    if-eqz p1, :cond_ff

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_ff

    .line 509
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_f7

    .line 515
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 516
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 519
    :cond_3b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_44

    .line 520
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_45

    .line 527
    :cond_44
    goto :goto_4f

    .line 523
    :catchall_45
    move-exception v1

    .line 524
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 525
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 529
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_5d

    goto/16 :goto_f6

    .line 533
    :cond_5d
    nop

    .line 534
    nop

    .line 536
    const/4 v1, 0x0

    :try_start_60
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_b6

    .line 537
    :try_start_65
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_b2

    .line 538
    const/16 p1, 0x8

    :try_start_76
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 539
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 542
    const/16 p0, 0x1388

    new-array p0, p0, [B

    .line 545
    :goto_89
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_93

    .line 546
    invoke-virtual {v3, p0, v0, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_89

    .line 548
    :cond_93
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 549
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_99
    .catchall {:try_start_76 .. :try_end_99} :catchall_b0

    .line 550
    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 562
    goto :goto_a1

    .line 560
    :catch_9d
    move-exception p0

    .line 561
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 565
    :goto_a1
    :try_start_a1
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 570
    goto :goto_a9

    .line 568
    :catch_a5
    move-exception p0

    .line 569
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 572
    :goto_a9
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    .line 551
    :catchall_b0
    move-exception p0

    goto :goto_b4

    :catchall_b2
    move-exception p0

    move-object v3, v1

    :goto_b4
    move-object v1, v2

    goto :goto_b8

    :catchall_b6
    move-exception p0

    move-object v3, v1

    .line 552
    :goto_b8
    :try_start_b8
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_c1

    .line 553
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_db

    .line 555
    :cond_c1
    if-eqz v1, :cond_cb

    .line 559
    :try_start_c3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7

    .line 562
    goto :goto_cb

    .line 560
    :catch_c7
    move-exception p0

    .line 561
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 565
    :cond_cb
    :goto_cb
    if-eqz v3, :cond_d5

    .line 567
    :try_start_cd
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    .line 570
    goto :goto_d5

    .line 568
    :catch_d1
    move-exception p0

    .line 569
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 572
    :cond_d5
    :goto_d5
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 557
    :catchall_db
    move-exception p0

    if-eqz v1, :cond_e6

    .line 559
    :try_start_de
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    .line 562
    goto :goto_e6

    .line 560
    :catch_e2
    move-exception p1

    .line 561
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 565
    :cond_e6
    :goto_e6
    if-eqz v3, :cond_f0

    .line 567
    :try_start_e8
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    .line 570
    goto :goto_f0

    .line 568
    :catch_ec
    move-exception p1

    .line 569
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 572
    :cond_f0
    :goto_f0
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p0

    .line 530
    :cond_f6
    :goto_f6
    return v0

    .line 510
    :cond_f7
    :goto_f7
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "rqdp{  !sFile.exists() || !sFile.canRead(),pls check ,return!}"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 511
    return v0

    .line 505
    :cond_ff
    :goto_ff
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "rqdp{  err ZF 1R!}"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 506
    return v0
.end method

.method public static a(Ljava/lang/Runnable;)Z
    .registers 4

    .line 1475
    if-eqz p0, :cond_27

    .line 1476
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    .line 1477
    if-eqz v0, :cond_d

    .line 1478
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    .line 1480
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1481
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 1482
    return v2

    .line 1486
    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 729
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    .line 730
    const/4 p0, 0x0

    return p0

    .line 732
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized a(I)[B
    .registers 7

    const-class p0, Lcom/tencent/bugly/proguard/z;

    monitor-enter p0

    .line 1192
    nop

    .line 1195
    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_7
    new-array v0, v0, [B

    .line 1196
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/urandom"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_28
    .catchall {:try_start_7 .. :try_end_1a} :catchall_25

    .line 1197
    :try_start_1a
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_23
    .catchall {:try_start_1a .. :try_end_1d} :catchall_54

    .line 1198
    nop

    .line 1202
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_5d
    .catchall {:try_start_1e .. :try_end_21} :catchall_5b

    monitor-exit p0

    return-object v0

    .line 1199
    :catch_23
    move-exception v0

    goto :goto_2a

    .line 1202
    :catchall_25
    move-exception v0

    move-object v2, v1

    goto :goto_55

    .line 1199
    :catch_28
    move-exception v0

    move-object v2, v1

    .line 1200
    :goto_2a
    :try_start_2a
    const-string v3, "Failed to read from /dev/urandom : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_54

    .line 1202
    if-eqz v2, :cond_3a

    .line 1203
    :try_start_37
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 1208
    :cond_3a
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 1209
    const/16 v2, 0x80

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 1210
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1211
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_52} :catch_5d
    .catchall {:try_start_37 .. :try_end_52} :catchall_5b

    monitor-exit p0

    return-object v0

    .line 1202
    :catchall_54
    move-exception v0

    :goto_55
    if-eqz v2, :cond_5a

    .line 1203
    :try_start_57
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_5a
    throw v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5b} :catch_5d
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    .line 1191
    :catchall_5b
    move-exception v0

    goto :goto_69

    .line 1212
    :catch_5d
    move-exception v0

    .line 1213
    :try_start_5e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 1214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_5b

    .line 1217
    :cond_67
    monitor-exit p0

    return-object v1

    .line 1191
    :goto_69
    monitor-exit p0

    throw v0
.end method

.method public static a(I[B[B)[B
    .registers 7

    .line 1233
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1234
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1236
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2c

    sget-boolean v2, Lcom/tencent/bugly/proguard/z;->b:Z

    if-eqz v2, :cond_18

    goto :goto_2c

    .line 1240
    :cond_18
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    .line 1241
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    shl-int/lit8 v2, v2, 0x3

    invoke-direct {v3, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_3a

    .line 1243
    :try_start_23
    invoke-virtual {v1, p0, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_26
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_23 .. :try_end_26} :catch_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_3a

    .line 1247
    goto :goto_35

    .line 1244
    :catch_27
    move-exception p0

    .line 1245
    const/4 p1, 0x1

    :try_start_29
    sput-boolean p1, Lcom/tencent/bugly/proguard/z;->b:Z

    .line 1246
    throw p0

    .line 1237
    :cond_2c
    :goto_2c
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1238
    invoke-virtual {v1, p0, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1239
    nop

    .line 1249
    :goto_35
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_39} :catch_3a

    return-object p0

    .line 1250
    :catch_3a
    move-exception p0

    .line 1251
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_44

    .line 1252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1255
    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/os/Parcelable;)[B
    .registers 3

    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1006
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1007
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    .line 209
    const-string p0, "rqdp{  ZF end}"

    const/4 v0, 0x0

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_8f

    .line 212
    :cond_d
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "rqdp{  ZF start}"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 213
    nop

    .line 217
    :try_start_16
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 222
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_63

    .line 225
    const/16 v4, 0x8

    :try_start_2d
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 226
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 228
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 230
    :goto_3c
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_46

    .line 236
    invoke-virtual {v3, p2, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3c

    .line 238
    :cond_46
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 239
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 240
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 241
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_61

    .line 248
    :try_start_53
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 261
    goto :goto_5b

    .line 259
    :catch_57
    move-exception p2

    .line 260
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :goto_5b
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p1

    .line 242
    :catchall_61
    move-exception p1

    goto :goto_65

    :catchall_63
    move-exception p1

    move-object v3, v0

    .line 243
    :goto_65
    :try_start_65
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_6e

    .line 244
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_7e

    .line 246
    :cond_6e
    if-eqz v3, :cond_78

    .line 258
    :try_start_70
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 261
    goto :goto_78

    .line 259
    :catch_74
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :cond_78
    :goto_78
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 248
    :catchall_7e
    move-exception p1

    .line 250
    if-eqz v3, :cond_89

    .line 258
    :try_start_81
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 261
    goto :goto_89

    .line 259
    :catch_85
    move-exception p2

    .line 260
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :cond_89
    :goto_89
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p1

    .line 210
    :cond_8f
    :goto_8f
    return-object v0
.end method

.method public static a([BI)[B
    .registers 6

    .line 276
    if-eqz p0, :cond_3a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_3a

    .line 280
    :cond_6
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_17

    const-string v0, "Gzip"

    goto :goto_19

    :cond_17
    const-string v0, "zip"

    :goto_19
    aput-object v0, v1, v2

    const-string v0, "[Util] Zip %d bytes data with type %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 283
    nop

    .line 284
    nop

    .line 287
    const/4 v0, 0x0

    :try_start_23
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ad;->a(I)Lcom/tencent/bugly/proguard/ae;

    move-result-object p1

    .line 288
    if-nez p1, :cond_2a

    .line 289
    return-object v0

    .line 292
    :cond_2a
    invoke-interface {p1, p0}, Lcom/tencent/bugly/proguard/ae;->a([B)[B

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2f

    .line 293
    return-object p0

    .line 295
    :catchall_2f
    move-exception p0

    .line 296
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 297
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    :cond_39
    return-object v0

    .line 277
    :cond_3a
    :goto_3a
    return-object p0
.end method

.method public static a([BIILjava/lang/String;)[B
    .registers 4

    .line 344
    const/4 p1, 0x0

    if-nez p0, :cond_4

    .line 345
    return-object p1

    .line 349
    :cond_4
    const/4 p2, 0x2

    :try_start_5
    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/z;->a([BI)[B

    move-result-object p0

    .line 351
    const/4 p2, 0x1

    invoke-static {p0, p2, p3}, Lcom/tencent/bugly/proguard/z;->a([BILjava/lang/String;)[B

    move-result-object p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 353
    return-object p0

    .line 354
    :catchall_f
    move-exception p0

    .line 355
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 356
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    :cond_19
    return-object p1
.end method

.method private static a([BILjava/lang/String;)[B
    .registers 6

    .line 145
    if-eqz p0, :cond_3a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_3a

    .line 149
    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "rqdp{  enD:} %d %d"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    nop

    .line 152
    nop

    .line 154
    const/4 v0, 0x0

    :try_start_20
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->a(I)Lcom/tencent/bugly/proguard/aj;

    move-result-object p1

    .line 155
    if-nez p1, :cond_27

    .line 156
    return-object v0

    .line 159
    :cond_27
    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    .line 160
    invoke-interface {p1, p0}, Lcom/tencent/bugly/proguard/aj;->b([B)[B

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2f

    .line 161
    return-object p0

    .line 163
    :catchall_2f
    move-exception p0

    .line 164
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    :cond_39
    return-object v0

    .line 146
    :cond_3a
    :goto_3a
    return-object p0
.end method

.method public static b()J
    .registers 4

    .line 394
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 398
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1e

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 400
    :catchall_1e
    move-exception v0

    .line 401
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    :cond_28
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1543
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_19

    .line 1544
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1546
    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 801
    if-nez p0, :cond_5

    .line 802
    const-string p0, ""

    return-object p0

    .line 805
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 806
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 807
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 808
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 809
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    .line 435
    if-eqz p0, :cond_25

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_25

    .line 439
    :cond_6
    nop

    .line 441
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 442
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 443
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    return-object p0

    .line 444
    :catchall_19
    move-exception p0

    .line 445
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 446
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    :cond_23
    const/4 p0, 0x0

    return-object p0

    .line 436
    :cond_25
    :goto_25
    const-string p0, "NULL"

    return-object p0
.end method

.method public static b(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 978
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 979
    return-object v0

    .line 982
    :cond_8
    nop

    .line 983
    const-string v1, "keys"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 984
    const-string v2, "values"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 986
    const/4 v2, 0x0

    if-eqz v1, :cond_42

    if-eqz p0, :cond_42

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_42

    .line 987
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 988
    nop

    :goto_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 989
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 992
    :cond_42
    new-array p0, v2, [Ljava/lang/Object;

    const-string v1, "map parcel error!"

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 995
    :cond_49
    return-object v0
.end method

.method public static b(J)V
    .registers 2

    .line 669
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 672
    return-void

    .line 670
    :catch_4
    move-exception p0

    .line 671
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 673
    return-void
.end method

.method public static b(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 951
    if-eqz p1, :cond_4d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_4d

    .line 956
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 959
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 960
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 961
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    goto :goto_1f

    .line 964
    :cond_3a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 965
    const-string v0, "keys"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 966
    const-string v0, "values"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 967
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 968
    return-void

    .line 952
    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 953
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 741
    if-nez p0, :cond_3

    .line 742
    return-void

    .line 745
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 747
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 749
    :cond_1d
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .line 1332
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "[Util] Try to unlock file: %s (pid=%d | tid=%d)"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1335
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1337
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 1339
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 1340
    const-string p0, "[Util] Successfully unlocked file: %s (pid=%d | tid=%d)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_21 .. :try_end_6a} :catchall_6d

    .line 1342
    return v4

    .line 1344
    :cond_6b
    return v2

    .line 1347
    :cond_6c
    return v4

    .line 1349
    :catchall_6d
    move-exception p0

    .line 1351
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 1352
    return v2
.end method

.method public static b(I[B[B)[B
    .registers 4

    .line 1268
    :try_start_0
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 1270
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    .line 1273
    const-string p2, "RSA/ECB/PKCS1Padding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 1276
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1277
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    .line 1278
    :catch_1e
    move-exception p0

    .line 1279
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 1280
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1283
    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([BI)[B
    .registers 6

    .line 312
    if-eqz p0, :cond_38

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_38

    .line 316
    :cond_6
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_17

    const-string v0, "Gzip"

    goto :goto_19

    :cond_17
    const-string v0, "zip"

    :goto_19
    aput-object v0, v1, v2

    const-string v0, "[Util] Unzip %d bytes data with type %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 323
    const/4 v0, 0x0

    :try_start_21
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ad;->a(I)Lcom/tencent/bugly/proguard/ae;

    move-result-object p1

    .line 324
    if-nez p1, :cond_28

    .line 325
    return-object v0

    .line 328
    :cond_28
    invoke-interface {p1, p0}, Lcom/tencent/bugly/proguard/ae;->b([B)[B

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2d

    .line 329
    return-object p0

    .line 331
    :catchall_2d
    move-exception p0

    .line 332
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 333
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    :cond_37
    return-object v0

    .line 313
    :cond_38
    :goto_38
    return-object p0
.end method

.method public static b([BIILjava/lang/String;)[B
    .registers 4

    .line 375
    const/4 p1, 0x1

    :try_start_1
    invoke-static {p0, p1, p3}, Lcom/tencent/bugly/proguard/z;->b([BILjava/lang/String;)[B

    move-result-object p0

    .line 377
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/z;->b([BI)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    .line 378
    return-object p0

    .line 379
    :catch_b
    move-exception p0

    .line 380
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 381
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([BILjava/lang/String;)[B
    .registers 5

    .line 175
    if-eqz p0, :cond_35

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_35

    .line 179
    :cond_6
    nop

    .line 180
    nop

    .line 182
    const/4 v0, 0x0

    :try_start_9
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->a(I)Lcom/tencent/bugly/proguard/aj;

    move-result-object v1

    .line 183
    if-nez v1, :cond_10

    .line 184
    return-object v0

    .line 187
    :cond_10
    invoke-interface {v1, p2}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    .line 188
    invoke-interface {v1, p0}, Lcom/tencent/bugly/proguard/aj;->a([B)[B

    move-result-object p0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    .line 190
    return-object p0

    .line 192
    :catchall_18
    move-exception p0

    .line 193
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 194
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    :cond_22
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "encrytype %d %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 197
    return-object v0

    .line 176
    :cond_35
    :goto_35
    return-object p0
.end method

.method public static c([B)J
    .registers 5

    .line 770
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    .line 771
    return-wide v0

    .line 775
    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_10} :catch_11

    return-wide v0

    .line 776
    :catch_11
    move-exception p0

    .line 777
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 779
    return-wide v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 585
    new-instance p0, Ljava/util/ArrayList;

    const-string p1, "unknown(low memory)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 587
    :cond_16
    nop

    .line 588
    nop

    .line 589
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    const/4 v0, 0x0

    :try_start_1e
    const-string v1, "/system/bin/sh"

    .line 592
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_38

    .line 593
    :cond_36
    const-string v1, "sh"

    .line 595
    :cond_38
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const-string v4, "-c"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 598
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6e
    .catchall {:try_start_1e .. :try_end_6e} :catchall_a7

    .line 600
    :goto_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 601
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 603
    :cond_78
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_a4

    .line 604
    :goto_86
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 605
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_a2

    goto :goto_86

    .line 613
    :cond_90
    :try_start_90
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 618
    goto :goto_98

    .line 616
    :catch_94
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 621
    :goto_98
    :try_start_98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 626
    :goto_9b
    goto :goto_a1

    .line 624
    :catch_9c
    move-exception p1

    .line 625
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    .line 629
    :goto_a1
    return-object p0

    .line 607
    :catchall_a2
    move-exception p0

    goto :goto_aa

    :catchall_a4
    move-exception p0

    move-object v2, v0

    goto :goto_aa

    :catchall_a7
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 608
    :goto_aa
    :try_start_aa
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_b3

    .line 609
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_c8

    .line 611
    :cond_b3
    if-eqz v1, :cond_bd

    .line 615
    :try_start_b5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    .line 618
    goto :goto_bd

    .line 616
    :catch_b9
    move-exception p0

    .line 617
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 621
    :cond_bd
    :goto_bd
    if-eqz v2, :cond_c7

    .line 623
    :try_start_bf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 626
    goto :goto_c7

    .line 624
    :catch_c3
    move-exception p0

    .line 625
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 626
    :cond_c7
    :goto_c7
    return-object v0

    .line 613
    :catchall_c8
    move-exception p0

    if-eqz v1, :cond_d3

    .line 615
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 618
    goto :goto_d3

    .line 616
    :catch_cf
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 621
    :cond_d3
    :goto_d3
    if-eqz v2, :cond_dd

    .line 623
    :try_start_d5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    .line 626
    goto :goto_dd

    .line 624
    :catch_d9
    move-exception p1

    .line 625
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 626
    :cond_dd
    :goto_dd
    throw p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    .line 1496
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    if-eqz v2, :cond_14

    .line 1497
    return v1

    .line 1499
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_26

    .line 1500
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s)\'s length is larger than 255."

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1501
    return v1

    .line 1503
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1504
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s) is not start with \"http\"."

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1505
    return v1

    .line 1507
    :cond_3c
    return v0
.end method

.method public static c(J)[B
    .registers 3

    .line 756
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    .line 757
    :catch_14
    move-exception p0

    .line 758
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 760
    const/4 p0, 0x0

    return-object p0
.end method
