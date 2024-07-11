.class Lcom/ss/android/downloadlib/addownload/compliance/d$b;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/compliance/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/compliance/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/d;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/d$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/compliance/d$b;->a:Lcom/ss/android/downloadlib/addownload/compliance/d;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/addownload/compliance/d;
    .registers 1

    .line 37
    sget-object v0, Lcom/ss/android/downloadlib/addownload/compliance/d$b;->a:Lcom/ss/android/downloadlib/addownload/compliance/d;

    return-object v0
.end method
