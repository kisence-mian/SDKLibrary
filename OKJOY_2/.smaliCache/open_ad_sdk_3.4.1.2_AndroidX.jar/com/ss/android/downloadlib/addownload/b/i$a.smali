.class Lcom/ss/android/downloadlib/addownload/b/i$a;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/b/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/ss/android/downloadlib/addownload/b/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/i;-><init>(Lcom/ss/android/downloadlib/addownload/b/i$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/b/i$a;->a:Lcom/ss/android/downloadlib/addownload/b/i;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/addownload/b/i;
    .registers 1

    .line 30
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/i$a;->a:Lcom/ss/android/downloadlib/addownload/b/i;

    return-object v0
.end method
