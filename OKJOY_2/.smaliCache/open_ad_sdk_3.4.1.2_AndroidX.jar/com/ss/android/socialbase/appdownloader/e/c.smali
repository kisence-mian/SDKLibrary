.class public Lcom/ss/android/socialbase/appdownloader/e/c;
.super Ljava/lang/Object;
.source "NotificationIconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/e/c$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static volatile b:Lcom/ss/android/socialbase/appdownloader/e/c;


# instance fields
.field private c:Lcom/ss/android/socialbase/appdownloader/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/appdownloader/e/c$a<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/16 v0, 0x8

    sput v0, Lcom/ss/android/socialbase/appdownloader/e/c;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/c;->c:Lcom/ss/android/socialbase/appdownloader/e/c$a;

    .line 56
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/c$a;

    sget v1, Lcom/ss/android/socialbase/appdownloader/e/c;->a:I

    div-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/e/c$a;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/c;->c:Lcom/ss/android/socialbase/appdownloader/e/c$a;

    .line 57
    return-void
.end method

.method public static a(IILandroid/graphics/BitmapFactory$Options;)I
    .registers 4

    .line 106
    nop

    .line 107
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p0, :cond_c

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x1

    goto :goto_22

    .line 108
    :cond_c
    :goto_c
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 109
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 110
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 112
    :goto_22
    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/e/c;)Lcom/ss/android/socialbase/appdownloader/e/c$a;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/e/c;->c:Lcom/ss/android/socialbase/appdownloader/e/c$a;

    return-object p0
.end method

.method public static a()Lcom/ss/android/socialbase/appdownloader/e/c;
    .registers 2

    .line 43
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/e/c;->b:Lcom/ss/android/socialbase/appdownloader/e/c;

    if-nez v0, :cond_17

    .line 44
    const-class v0, Lcom/ss/android/socialbase/appdownloader/e/c;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/e/c;->b:Lcom/ss/android/socialbase/appdownloader/e/c;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/c;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/e/c;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/c;->b:Lcom/ss/android/socialbase/appdownloader/e/c;

    .line 48
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 50
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/e/c;->b:Lcom/ss/android/socialbase/appdownloader/e/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/c;->c:Lcom/ss/android/socialbase/appdownloader/e/c$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/e/c$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    return-void

    .line 71
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/c$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/e/c$1;-><init>(Lcom/ss/android/socialbase/appdownloader/e/c;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 103
    return-void
.end method
