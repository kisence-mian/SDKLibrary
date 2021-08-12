.class public Lcom/ss/android/downloadlib/h/k;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# static fields
.field static final a:[C

.field private static b:[Ljava/lang/Object;

.field private static c:[Ljava/lang/Object;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ss/android/downloadlib/h/k;->b:[Ljava/lang/Object;

    .line 72
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ss/android/downloadlib/h/k;->c:[Ljava/lang/Object;

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/ss/android/downloadlib/h/k;->a:[C

    .line 416
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/downloadlib/h/k;->d:Ljava/lang/String;

    return-void

    :array_18
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    .line 675
    nop

    .line 677
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 678
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_13

    .line 681
    goto :goto_17

    .line 679
    :catch_13
    move-exception p0

    .line 680
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 682
    :goto_17
    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 2

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 835
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 959
    const-string v0, "\\."

    const/4 v1, -0x2

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_66

    .line 962
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 963
    return v3

    .line 965
    :cond_18
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 966
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 967
    nop

    .line 969
    array-length v0, p0

    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 970
    move v2, v3

    move v4, v2

    .line 972
    :goto_29
    if-ge v2, v0, :cond_3d

    aget-object v4, p0, v2

    .line 973
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, p1, v2

    .line 974
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    if-nez v4, :cond_3d

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 978
    :cond_3d
    const/4 v0, -0x1

    const/4 v5, 0x1

    if-nez v4, :cond_62

    .line 979
    move v4, v2

    :goto_42
    array-length v6, p0

    if-ge v4, v6, :cond_51

    .line 980
    aget-object v6, p0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4e

    .line 981
    return v5

    .line 979
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 984
    :cond_51
    nop

    :goto_52
    array-length p0, p1

    if-ge v2, p0, :cond_61

    .line 985
    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5b} :catch_67

    if-lez p0, :cond_5e

    .line 986
    return v0

    .line 984
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 989
    :cond_61
    return v3

    .line 991
    :cond_62
    if-lez v4, :cond_65

    move v0, v5

    :cond_65
    return v0

    .line 960
    :cond_66
    :goto_66
    return v1

    .line 993
    :catch_67
    move-exception p0

    .line 996
    return v1
.end method

.method public static a(J)J
    .registers 3

    .line 1051
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/io/File;J)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    .line 1052
    :catch_9
    move-exception v0

    .line 1053
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1054
    return-wide p0
.end method

.method public static a(Ljava/io/File;)J
    .registers 6

    .line 1072
    nop

    .line 1073
    const-wide/16 v0, -0x1

    if-nez p0, :cond_6

    .line 1074
    return-wide v0

    .line 1077
    :cond_6
    :try_start_6
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1078
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt p0, v3, :cond_1a

    .line 1079
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    goto :goto_25

    .line 1081
    :cond_1a
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_26

    int-to-long v0, p0

    mul-long/2addr v3, v0

    move-wide v0, v3

    .line 1085
    :goto_25
    goto :goto_2a

    .line 1083
    :catchall_26
    move-exception p0

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1086
    :goto_2a
    return-wide v0
.end method

.method public static a(Ljava/io/File;J)J
    .registers 3

    .line 1059
    nop

    .line 1060
    if-nez p0, :cond_4

    .line 1061
    return-wide p1

    .line 1064
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1067
    goto :goto_11

    .line 1065
    :catch_d
    move-exception p0

    .line 1066
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1068
    :goto_11
    return-wide p1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 2

    .line 205
    invoke-static {p0, p1}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/b;)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 342
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 343
    return-object v0

    .line 345
    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p0

    .line 346
    if-nez p0, :cond_17

    .line 347
    return-object v0

    .line 350
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    return-object p0

    .line 351
    :catchall_28
    move-exception p0

    .line 354
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 361
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_25

    .line 364
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_24

    .line 367
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 368
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 369
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 371
    :try_start_1b
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p0

    .line 372
    :catch_20
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    :cond_24
    return-object v0

    .line 362
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/c;
    .registers 6

    .line 455
    new-instance v0, Lcom/ss/android/downloadlib/addownload/b/c;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/b/c;-><init>()V

    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 457
    return-object v0

    .line 460
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 461
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 462
    if-eqz p0, :cond_40

    .line 463
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/c;->b(I)Lcom/ss/android/downloadlib/addownload/b/c;

    .line 464
    sget v1, Lcom/ss/android/downloadlib/addownload/b/c;->b:I

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/c;->a(I)Lcom/ss/android/downloadlib/addownload/b/c;

    .line 465
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->h()Lcom/ss/android/a/a/a/o;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_40

    invoke-interface {v1}, Lcom/ss/android/a/a/a/o;->a()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 467
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1, p1, p0, p2}, Lcom/ss/android/downloadlib/h/k;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_40

    .line 468
    sget p0, Lcom/ss/android/downloadlib/addownload/b/c;->c:I

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/addownload/b/c;->a(I)Lcom/ss/android/downloadlib/addownload/b/c;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_41

    .line 473
    :cond_40
    goto :goto_42

    .line 472
    :catch_41
    move-exception p0

    .line 474
    :goto_42
    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 1038
    const-string v0, "args is null"

    if-eqz p0, :cond_16

    .line 1041
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, p0, v2

    .line 1042
    if-eqz v3, :cond_d

    .line 1043
    return-object v3

    .line 1041
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1046
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1039
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 885
    if-nez p1, :cond_5

    .line 886
    const-string p0, ""

    return-object p0

    .line 889
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_12

    goto :goto_18

    .line 893
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 890
    :cond_18
    :goto_18
    return-object p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1001
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 1002
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1003
    return-object v2

    .line 1001
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1006
    :cond_10
    const-string p0, "ERROR"

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 1

    .line 215
    invoke-static {p0}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 210
    invoke-static {p0, p1}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 1

    .line 220
    invoke-static {p0}, Lcom/ss/android/a/a/d/a;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1098
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/k;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1099
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 1100
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->g()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 1101
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1117
    if-eqz p0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 1121
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_c} :catch_d

    .line 1124
    goto :goto_11

    .line 1122
    :catch_d
    move-exception p0

    .line 1123
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1125
    :goto_11
    return-void

    .line 1118
    :cond_12
    :goto_12
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 1090
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 509
    const/4 v0, 0x1

    if-nez p1, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 510
    return v0

    .line 514
    :cond_a
    if-lez p1, :cond_f

    if-lt p0, p1, :cond_f

    .line 515
    return v0

    .line 517
    :cond_f
    invoke-static {p2, p3}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_16

    .line 518
    return v0

    .line 522
    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 228
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 229
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 230
    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15

    if-nez p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    .line 231
    :catch_15
    move-exception p0

    .line 232
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 579
    nop

    .line 580
    const/4 v0, 0x0

    if-eqz p0, :cond_51

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_51

    .line 584
    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 587
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 588
    if-nez p1, :cond_2b

    .line 589
    return v0

    .line 591
    :cond_2b
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 592
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 593
    return v0

    .line 595
    :cond_34
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_4c

    .line 596
    nop

    .line 598
    :try_start_37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_3f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3f} :catch_4c

    .line 601
    goto :goto_42

    .line 599
    :catch_40
    move-exception p0

    .line 600
    const/4 p0, 0x0

    .line 602
    :goto_42
    if-nez p0, :cond_45

    .line 603
    goto :goto_4b

    .line 605
    :cond_45
    :try_start_45
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_47} :catch_4c

    .line 606
    if-ne p1, p0, :cond_4b

    .line 607
    const/4 p0, 0x1

    move v0, p0

    .line 613
    :cond_4b
    :goto_4b
    goto :goto_50

    .line 611
    :catch_4c
    move-exception p0

    .line 612
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    :goto_50
    return v0

    .line 581
    :cond_51
    :goto_51
    return v0
.end method

.method public static a(Lcom/ss/android/a/a/b/c;)Z
    .registers 3

    .line 533
    if-nez p0, :cond_4

    .line 534
    const/4 p0, 0x0

    return p0

    .line 536
    :cond_4
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->r()I

    move-result v1

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->s()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b/c;->a()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    .line 181
    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 7

    .line 714
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 715
    return v0

    .line 717
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_a

    goto :goto_2e

    .line 720
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 721
    return v1

    .line 723
    :cond_f
    move v2, v1

    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_2d

    .line 724
    aget-object v3, p0, v2

    if-nez v3, :cond_1b

    aget-object v3, p1, v2

    if-nez v3, :cond_29

    :cond_1b
    aget-object v3, p0, v2

    if-eqz v3, :cond_2a

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    .line 725
    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 726
    :cond_29
    return v1

    .line 723
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 729
    :cond_2d
    return v0

    .line 718
    :cond_2e
    :goto_2e
    return v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 385
    if-eqz p0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 387
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 389
    if-eqz p0, :cond_16

    .line 390
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_17

    return p0

    .line 394
    :cond_16
    goto :goto_18

    .line 392
    :catch_17
    move-exception p0

    .line 396
    :cond_18
    :goto_18
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 1104
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1106
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1107
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1108
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1109
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return-object p0

    .line 1110
    :catch_16
    move-exception p0

    .line 1113
    return-object v0
.end method

.method public static b()V
    .registers 1

    .line 1094
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/Throwable;)V

    .line 1095
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 540
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 541
    return v0

    .line 543
    :cond_4
    if-nez p0, :cond_a

    .line 544
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    .line 546
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 547
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 549
    if-eqz p0, :cond_1d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public static b(Lcom/ss/android/downloadad/a/b/b;)Z
    .registers 3

    .line 526
    if-nez p0, :cond_4

    .line 527
    const/4 p0, 0x0

    return p0

    .line 529
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->H()I

    move-result v1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->I()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b/c;->a()Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 186
    return v1

    .line 188
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 190
    const/4 p0, 0x1

    return p0

    .line 192
    :cond_15
    return v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 403
    nop

    .line 404
    if-eqz p0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 406
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 408
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_16} :catch_17

    .line 410
    goto :goto_19

    .line 409
    :catch_17
    move-exception p0

    .line 412
    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public static c()V
    .registers 5

    .line 1132
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1133
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1135
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1136
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3e

    .line 1138
    :cond_3c
    goto :goto_16

    .line 1141
    :cond_3d
    goto :goto_42

    .line 1139
    :catch_3e
    move-exception v0

    .line 1140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1142
    :goto_42
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 8

    .line 771
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    .line 773
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 774
    return v2

    .line 776
    :cond_c
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 777
    return v2

    .line 779
    :cond_13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 780
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "get_ext_dir_mode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0x1d

    if-nez v3, :cond_37

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_37

    if-ne v1, v6, :cond_34

    .line 782
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_34
    if-le v1, v6, :cond_37

    .line 785
    :cond_36
    return v5

    .line 789
    :cond_37
    :try_start_37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_52

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v6, :cond_52

    .line 790
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_52

    .line 791
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/h/k;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_72

    .line 793
    :cond_52
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android/data/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_79

    .line 797
    return v2

    .line 799
    :cond_79
    invoke-static {v1}, Lcom/ss/android/downloadlib/h/g;->a(Ljava/io/File;)J

    move-result-wide v3

    .line 801
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 802
    if-eqz p0, :cond_8e

    .line 803
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_89} :catch_8f

    cmp-long p0, v0, v3

    if-gez p0, :cond_8e

    .line 805
    return v5

    .line 808
    :cond_8e
    return v2

    .line 809
    :catch_8f
    move-exception p0

    .line 810
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 811
    return v5
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 432
    if-nez p0, :cond_6

    .line 433
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p0

    .line 435
    :cond_6
    nop

    .line 436
    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 439
    :try_start_14
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1d

    if-eqz p0, :cond_1c

    .line 440
    const/4 p0, 0x1

    move v0, p0

    .line 444
    :cond_1c
    goto :goto_1e

    .line 442
    :catch_1d
    move-exception p0

    .line 446
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 3

    .line 923
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 924
    const/4 p0, 0x0

    return p0

    .line 927
    :cond_8
    const-string v0, "http://ad.toutiao.com/advertiser_package/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 928
    return v1

    .line 930
    :cond_12
    const-string v0, "https://ad.toutiao.com/advertiser_package/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 931
    return v1

    .line 933
    :cond_1b
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/k;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 618
    nop

    .line 619
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-eqz p1, :cond_46

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_46

    .line 623
    :cond_d
    :try_start_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 626
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 627
    if-nez p1, :cond_27

    .line 628
    return v0

    .line 630
    :cond_27
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 631
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_41

    .line 632
    nop

    .line 634
    :try_start_2c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_34} :catch_41

    .line 637
    goto :goto_37

    .line 635
    :catch_35
    move-exception p0

    .line 636
    const/4 p0, 0x0

    .line 638
    :goto_37
    if-nez p0, :cond_3a

    .line 639
    goto :goto_40

    .line 641
    :cond_3a
    :try_start_3a
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_41

    .line 642
    if-gt p1, p0, :cond_40

    .line 643
    const/4 p0, 0x1

    move v0, p0

    .line 649
    :cond_40
    :goto_40
    goto :goto_45

    .line 647
    :catch_41
    move-exception p0

    .line 648
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 650
    :goto_45
    return v0

    .line 620
    :cond_46
    :goto_46
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 4

    .line 938
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 939
    return v1

    .line 941
    :cond_8
    const-string v0, "http://lf3-ttcdn-tos.pstatp.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 942
    return v2

    .line 944
    :cond_12
    const-string v0, "https://lf3-ttcdn-tos.pstatp.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 945
    return v2

    .line 947
    :cond_1b
    return v1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 655
    const/4 p1, 0x0

    if-nez p0, :cond_c

    .line 656
    return-object p1

    .line 659
    :cond_c
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 660
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    :cond_17
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const/high16 p1, 0x200000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 667
    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3

    .line 687
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 688
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 689
    if-eqz p0, :cond_f

    .line 690
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_10

    return-object p0

    .line 694
    :cond_f
    goto :goto_14

    .line 692
    :catchall_10
    move-exception p0

    .line 693
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 695
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3

    .line 700
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 702
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 703
    if-eqz p0, :cond_f

    .line 704
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_10

    return-object p0

    .line 708
    :cond_f
    goto :goto_14

    .line 706
    :catchall_10
    move-exception p0

    .line 707
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 709
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 821
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 822
    nop

    .line 823
    if-eqz p0, :cond_10

    .line 824
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_10
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getExtDir: file.toString()-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToolUtils"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-object p0
.end method
