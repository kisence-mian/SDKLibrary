.class public Lcom/ss/android/socialbase/downloader/constants/e;
.super Ljava/lang/Object;
.source "DownloadConstants.java"


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static volatile b:Ljava/lang/String;

.field public static volatile c:Ljava/lang/String;

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:J

.field public static final i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    .line 16
    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->b:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    .line 46
    const-wide/32 v0, 0x7d000

    sput-wide v0, Lcom/ss/android/socialbase/downloader/constants/e;->d:J

    .line 47
    const-wide/16 v0, 0x32

    sput-wide v0, Lcom/ss/android/socialbase/downloader/constants/e;->e:J

    .line 55
    const-wide/32 v0, 0x500000

    sput-wide v0, Lcom/ss/android/socialbase/downloader/constants/e;->f:J

    .line 57
    const-wide/32 v0, 0x1e00000

    sput-wide v0, Lcom/ss/android/socialbase/downloader/constants/e;->g:J

    .line 59
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/ss/android/socialbase/downloader/constants/e;->h:J

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->i:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    return-void

    .line 79
    :cond_7
    sput-object p0, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    .line 80
    return-void
.end method
