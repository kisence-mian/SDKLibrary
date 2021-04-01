.class Lcom/mintegral/msdk/mtgdownload/e;
.super Ljava/lang/Object;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgdownload/e$c;,
        Lcom/mintegral/msdk/mtgdownload/e$a;,
        Lcom/mintegral/msdk/mtgdownload/e$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mintegral/msdk/mtgdownload/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mintegral/msdk/mtgdownload/b$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mintegral/msdk/mtgdownload/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/mintegral/msdk/mtgdownload/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Ljava/util/Map;Lcom/mintegral/msdk/mtgdownload/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mintegral/msdk/mtgdownload/e$b;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/mintegral/msdk/mtgdownload/b$a;",
            "Landroid/os/Messenger;",
            ">;",
            "Lcom/mintegral/msdk/mtgdownload/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    .line 74
    iput-object p2, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    .line 75
    iput-object p3, p0, Lcom/mintegral/msdk/mtgdownload/e;->d:Lcom/mintegral/msdk/mtgdownload/i;

    .line 76
    return-void
.end method

.method static a(Lcom/mintegral/msdk/mtgdownload/b$a;)I
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 208
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 7

    .prologue
    const v3, 0x1080082

    const v2, 0x1080081

    const/16 v1, 0x1a

    .line 939
    const/4 v0, 0x0

    .line 940
    if-eqz p0, :cond_f

    .line 941
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 943
    :cond_f
    if-lt v0, v1, :cond_41

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_41

    .line 944
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "download"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 947
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 949
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 966
    :goto_40
    return-object v0

    .line 951
    :cond_41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_65

    .line 952
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 953
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 954
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 956
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_40

    .line 959
    :cond_65
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 960
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 961
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 963
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_40
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1822
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    .line 794
    :goto_11
    if-eqz v0, :cond_43

    .line 796
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->h:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/download/.mtg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 798
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 800
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 801
    aput-boolean v1, p2, v2

    .line 813
    :goto_40
    return-object v0

    :cond_41
    move v0, v2

    .line 1826
    goto :goto_11

    .line 805
    :cond_43
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 806
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 807
    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/lang/String;I)Z

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mtgdownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 810
    invoke-static {v1, v4}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/lang/String;I)Z

    .line 811
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    aput-boolean v2, p2, v2

    goto :goto_40
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 778
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 779
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 780
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v0, 0x400

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 724
    new-array v0, v0, [B

    .line 727
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_f

    .line 728
    const-string v0, ""

    .line 741
    :goto_e
    return-object v0

    .line 730
    :cond_f
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 731
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 732
    :goto_1a
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2f

    .line 733
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_29

    goto :goto_1a

    .line 737
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    const/4 v0, 0x0

    goto :goto_e

    .line 735
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_29

    .line 740
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 741
    const-string v1, "%1$032x"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 752
    if-nez p0, :cond_5

    .line 753
    const/4 v0, 0x0

    .line 768
    :goto_4
    return-object v0

    .line 755
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 756
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 757
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 758
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 759
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 760
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 761
    :goto_1e
    array-length v3, v1

    if-ge v0, v3, :cond_39

    .line 762
    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 765
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3e

    move-result-object v0

    goto :goto_4

    .line 768
    :catch_3e
    move-exception v0

    const-string v0, "[^[a-z][A-Z][0-9][.][_]]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgdownload/e;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/mintegral/msdk/mtgdownload/e$a;II)V
    .registers 8

    .prologue
    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_25

    .line 237
    const-string v0, "continue"

    .line 238
    invoke-static {p2, v0}, Lcom/mintegral/msdk/mtgdownload/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgdownload/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 241
    const-string v1, "cancel"

    .line 242
    invoke-static {p2, v1}, Lcom/mintegral/msdk/mtgdownload/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {p0, v1}, Lcom/mintegral/msdk/mtgdownload/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 244
    packed-switch p3, :pswitch_data_38

    .line 254
    :goto_1d
    const v0, 0x1080038

    sget-object v2, Lcom/mintegral/msdk/mtgdownload/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 258
    :cond_25
    return-void

    .line 246
    :pswitch_26
    const v2, 0x1080024

    sget-object v3, Lcom/mintegral/msdk/mtgdownload/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1d

    .line 250
    :pswitch_2f
    const v2, 0x1080023

    sget-object v3, Lcom/mintegral/msdk/mtgdownload/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1d

    .line 244
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 267
    const-string v0, "activity"

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 270
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 271
    if-nez v0, :cond_11

    move v0, v1

    .line 281
    :goto_10
    return v0

    .line 274
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 276
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 278
    const/4 v0, 0x1

    goto :goto_10

    :cond_35
    move v0, v1

    .line 281
    goto :goto_10
.end method

.method private static a(Ljava/lang/String;I)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 840
    :try_start_2
    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 841
    const-string v3, "setPermissions"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 842
    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_46} :catch_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_46} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_46} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_46} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_46} :catch_6c

    .line 855
    :goto_46
    return v0

    .line 844
    :catch_47
    move-exception v0

    .line 845
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4f
    move v0, v1

    .line 855
    goto :goto_46

    .line 846
    :catch_51
    move-exception v0

    .line 847
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 848
    :catch_5a
    move-exception v0

    .line 849
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 850
    :catch_63
    move-exception v0

    .line 851
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 852
    :catch_6c
    move-exception v0

    .line 853
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 690
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 691
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 692
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 693
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_27

    move-result v0

    .line 696
    if-nez v2, :cond_25

    if-eqz v0, :cond_25

    .line 697
    const/4 v0, 0x1

    .line 702
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 699
    goto :goto_24

    .line 702
    :catch_27
    move-exception v0

    move v0, v1

    goto :goto_24
.end method

.method protected static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 867
    const/16 v0, 0x1b6

    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 917
    const-string v0, "Wi-Fi"

    invoke-static {p0}, Lcom/mintegral/msdk/mtgdownload/e;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Unknown"

    aput-object v0, v1, v2

    const-string v0, "Unknown"

    aput-object v0, v1, v3

    .line 882
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 883
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 884
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 883
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 885
    const/4 v0, 0x0

    const-string v2, "Unknown"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 913
    :goto_23
    return-object v0

    .line 889
    :cond_24
    const-string v0, "connectivity"

    .line 890
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 891
    if-nez v0, :cond_35

    .line 892
    const/4 v0, 0x0

    const-string v2, "Unknown"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 893
    goto :goto_23

    .line 895
    :cond_35
    const/4 v2, 0x1

    .line 896
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 897
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_49

    .line 898
    const/4 v0, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 899
    goto :goto_23

    .line 901
    :cond_49
    const/4 v2, 0x0

    .line 902
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_68

    .line 904
    const/4 v2, 0x0

    const-string v3, "2G/3G"

    aput-object v3, v1, v2

    .line 905
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_62} :catch_64

    move-object v0, v1

    .line 906
    goto :goto_23

    .line 910
    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_68
    move-object v0, v1

    .line 913
    goto :goto_23
.end method


# virtual methods
.method final a(Landroid/content/Context;I)V
    .registers 8

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    const-string v1, "notification"

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 353
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 354
    if-eqz v1, :cond_62

    .line 355
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download service clear cache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v2, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    if-eqz v2, :cond_38

    .line 357
    iget-object v2, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/mtgdownload/k;->a(I)V

    .line 358
    :cond_38
    iget v2, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 359
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v2, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 360
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v2, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_4e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    .line 1102
    iget v2, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5d

    .line 1103
    iget v1, v1, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 362
    :cond_5d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->d:Lcom/mintegral/msdk/mtgdownload/i;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/mtgdownload/i;->b(I)V

    .line 365
    :cond_62
    return-void
.end method

.method final a(Lcom/mintegral/msdk/mtgdownload/b$a;ZLandroid/os/Messenger;)Z
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 292
    if-eqz p2, :cond_70

    .line 293
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 294
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    if-eqz v0, :cond_56

    .line 295
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 296
    sget-object v5, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " downling  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 300
    :cond_56
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "downling  null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_70
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    if-nez v0, :cond_76

    move v0, v1

    .line 317
    :goto_75
    return v0

    .line 305
    :cond_76
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 307
    iget-object v4, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    if-eqz v4, :cond_a1

    iget-object v4, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 308
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 309
    goto :goto_75

    .line 312
    :cond_a1
    iget-object v4, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 313
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 314
    goto :goto_75

    :cond_b2
    move v0, v1

    .line 317
    goto :goto_75
.end method

.method final a(Lcom/mintegral/msdk/mtgdownload/c;Landroid/content/Intent;)Z
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 459
    :try_start_2
    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgdownload/c;->e()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.mintegral.msdk.broadcast.download.msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    if-nez v0, :cond_18

    move v0, v3

    .line 561
    :goto_17
    return v0

    .line 464
    :cond_18
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 466
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 467
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 468
    if-eqz v5, :cond_aa

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    .line 469
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_aa

    .line 470
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 471
    iget-object v6, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    .line 476
    const-string v7, "continue"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 477
    if-nez v6, :cond_ad

    .line 478
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v6, "Receive action do play click."

    invoke-static {v2, v6}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 484
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/f;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 487
    goto :goto_17

    .line 490
    :cond_69
    new-instance v1, Lcom/mintegral/msdk/mtgdownload/k;

    iget-object v2, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget v6, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->d:I

    invoke-direct {v1, p1, v2, v5, v6}, Lcom/mintegral/msdk/mtgdownload/k;-><init>(Lcom/mintegral/msdk/mtgdownload/c;Lcom/mintegral/msdk/mtgdownload/b$a;II)V

    .line 491
    iput-object v1, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    .line 492
    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgdownload/k;->start()V

    .line 495
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 496
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 497
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 498
    iput v5, v1, Landroid/os/Message;->arg2:I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_83} :catch_a6

    .line 501
    :try_start_83
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v5, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9a

    .line 502
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_9a} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9a} :catch_a6

    :cond_9a
    :goto_9a
    move v0, v4

    .line 507
    goto/16 :goto_17

    .line 504
    :catch_9d
    move-exception v0

    .line 505
    :try_start_9e
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_a6

    goto :goto_9a

    .line 559
    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_aa
    move v0, v3

    .line 561
    goto/16 :goto_17

    .line 509
    :cond_ad
    :try_start_ad
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v7, "Receive action do play click."

    invoke-static {v2, v7}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/mintegral/msdk/mtgdownload/k;->a(I)V

    .line 511
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    .line 1337
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1338
    const-string v1, "notification"

    .line 1339
    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1340
    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/j;->a(Landroid/app/NotificationManager;)V

    .line 1341
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 1342
    iget-object v7, v2, Lcom/mintegral/msdk/mtgdownload/e$b;->b:Lcom/mintegral/msdk/mtgdownload/e$a;

    invoke-virtual {v7}, Lcom/mintegral/msdk/mtgdownload/e$a;->b()V

    .line 1343
    iget-object v7, v2, Lcom/mintegral/msdk/mtgdownload/e$b;->b:Lcom/mintegral/msdk/mtgdownload/e$a;

    const/4 v8, 0x1

    invoke-static {v6, v7, v5, v8}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Lcom/mintegral/msdk/mtgdownload/e$a;II)V

    .line 1344
    iget-object v6, v2, Lcom/mintegral/msdk/mtgdownload/e$b;->b:Lcom/mintegral/msdk/mtgdownload/e$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/mintegral/msdk/mtgdownload/f;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mintegral/msdk/mtgdownload/e$a;->b(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/e$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/mtgdownload/e$a;->c()Lcom/mintegral/msdk/mtgdownload/h;

    move-result-object v6

    const/4 v7, 0x1

    .line 1345
    invoke-virtual {v6, v7}, Lcom/mintegral/msdk/mtgdownload/h;->a(Z)Lcom/mintegral/msdk/mtgdownload/h;

    .line 1346
    iget-object v2, v2, Lcom/mintegral/msdk/mtgdownload/e$b;->b:Lcom/mintegral/msdk/mtgdownload/e$a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgdownload/e$a;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 516
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 517
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 518
    iput v5, v1, Landroid/os/Message;->arg2:I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_117} :catch_a6

    .line 521
    :try_start_117
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v5, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12e

    .line 522
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_12e} :catch_131
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_12e} :catch_a6

    :cond_12e
    :goto_12e
    move v0, v4

    .line 527
    goto/16 :goto_17

    .line 524
    :catch_131
    move-exception v0

    .line 525
    :try_start_132
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12e

    .line 529
    :cond_13a
    const-string v7, "cancel"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 530
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/e;->a:Ljava/lang/String;

    const-string v7, "Receive action do stop click."

    invoke-static {v2, v7}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_149} :catch_a6

    .line 532
    if-eqz v6, :cond_14f

    .line 533
    const/4 v2, 0x2

    :try_start_14c
    invoke-virtual {v6, v2}, Lcom/mintegral/msdk/mtgdownload/k;->a(I)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_17d
    .catchall {:try_start_14c .. :try_end_14f} :catchall_1aa

    .line 540
    :cond_14f
    :try_start_14f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 541
    const/4 v6, 0x5

    iput v6, v2, Landroid/os/Message;->what:I

    .line 542
    const/4 v6, 0x5

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 543
    iput v5, v2, Landroid/os/Message;->arg2:I
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_15b} :catch_a6

    .line 546
    :try_start_15b
    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v7, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_172

    .line 547
    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 549
    :cond_172
    invoke-virtual {p0, v1, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_175} :catch_178
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_175} :catch_a6

    :goto_175
    move v0, v4

    .line 554
    goto/16 :goto_17

    .line 551
    :catch_178
    move-exception v0

    :try_start_179
    invoke-virtual {p0, v1, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    goto :goto_175

    .line 540
    :catch_17d
    move-exception v2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 541
    const/4 v6, 0x5

    iput v6, v2, Landroid/os/Message;->what:I

    .line 542
    const/4 v6, 0x5

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 543
    iput v5, v2, Landroid/os/Message;->arg2:I
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_18a} :catch_a6

    .line 546
    :try_start_18a
    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v7, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1a1

    .line 547
    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 549
    :cond_1a1
    invoke-virtual {p0, v1, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_1a4
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_1a4} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1a4} :catch_a6

    goto :goto_175

    .line 551
    :catch_1a5
    move-exception v0

    :try_start_1a6
    invoke-virtual {p0, v1, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    goto :goto_175

    .line 540
    :catchall_1aa
    move-exception v2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 541
    const/4 v6, 0x5

    iput v6, v4, Landroid/os/Message;->what:I

    .line 542
    const/4 v6, 0x5

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 543
    iput v5, v4, Landroid/os/Message;->arg2:I
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1b7} :catch_a6

    .line 546
    :try_start_1b7
    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v7, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1ce

    .line 547
    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/e;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 549
    :cond_1ce
    invoke-virtual {p0, v1, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_1b7 .. :try_end_1d1} :catch_1d2
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1d1} :catch_a6

    .line 553
    :goto_1d1
    :try_start_1d1
    throw v2

    .line 551
    :catch_1d2
    move-exception v0

    invoke-virtual {p0, v1, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d6} :catch_a6

    goto :goto_1d1
.end method

.method final b(Lcom/mintegral/msdk/mtgdownload/b$a;)I
    .registers 6

    .prologue
    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 323
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 324
    iget-object v0, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v3, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    .line 326
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 327
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    iget v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    .line 333
    :goto_32
    return v0

    .line 329
    :cond_33
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 330
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    iget v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    goto :goto_32

    .line 322
    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 333
    :cond_56
    const/4 v0, -0x1

    goto :goto_32
.end method
