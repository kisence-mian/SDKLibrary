.class public Lcom/ss/android/downloadlib/addownload/compliance/d;
.super Lcom/ss/android/socialbase/downloader/i/g;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/d$b;,
        Lcom/ss/android/downloadlib/addownload/compliance/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/socialbase/downloader/i/g<",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/downloadlib/addownload/compliance/d$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 48
    const/16 v0, 0x8

    invoke-direct {p0, v0, v0}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(II)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->a:Ljava/util/Map;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/d$1;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/d;-><init>()V

    return-void
.end method

.method static synthetic a(IILandroid/graphics/BitmapFactory$Options;)I
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/d;->b(IILandroid/graphics/BitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/compliance/d;
    .registers 1

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d$b;->a()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/compliance/d;)Ljava/util/Map;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method private static b(IILandroid/graphics/BitmapFactory$Options;)I
    .registers 4

    .line 129
    nop

    .line 130
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p0, :cond_c

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x1

    goto :goto_22

    .line 131
    :cond_c
    :goto_c
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 132
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 135
    :goto_22
    return p0
.end method


# virtual methods
.method public a(JJLjava/lang/String;)V
    .registers 14

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 62
    iget-object p3, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/SoftReference;

    .line 63
    if-eqz p3, :cond_31

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_31

    .line 64
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/downloadlib/addownload/compliance/d$a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/compliance/d$a;->a(Landroid/graphics/Bitmap;)V

    .line 66
    :cond_31
    return-void

    .line 68
    :cond_32
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 69
    const/16 p1, 0xc

    invoke-static {p1, p3, p4}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(IJ)V

    .line 70
    return-void

    .line 72
    :cond_3e
    new-instance v7, Lcom/ss/android/downloadlib/addownload/compliance/d$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/downloadlib/addownload/compliance/d$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/d;Ljava/lang/String;JJ)V

    const/4 p3, 0x0

    invoke-static {v7, p3}, Lcom/ss/android/downloadlib/h/c;->a(Lcom/ss/android/downloadlib/h/c$a;Ljava/lang/Object;)Lcom/ss/android/downloadlib/h/c;

    move-result-object p3

    new-instance p4, Lcom/ss/android/downloadlib/addownload/compliance/d$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/d$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/d;J)V

    .line 116
    invoke-virtual {p3, p4}, Lcom/ss/android/downloadlib/h/c;->a(Lcom/ss/android/downloadlib/h/c$a;)Lcom/ss/android/downloadlib/h/c;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/h/c;->a()V

    .line 126
    return-void
.end method

.method public a(JLcom/ss/android/downloadlib/addownload/compliance/d$a;)V
    .registers 5

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/compliance/d$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_26

    .line 55
    :cond_18
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_26
    return-void
.end method
