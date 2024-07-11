.class Lcom/ss/android/downloadlib/addownload/compliance/c$a;
.super Ljava/lang/Object;
.source "AppInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/compliance/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/compliance/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/c;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/c$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/compliance/c$a;->a:Lcom/ss/android/downloadlib/addownload/compliance/c;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/addownload/compliance/c;
    .registers 1

    .line 11
    sget-object v0, Lcom/ss/android/downloadlib/addownload/compliance/c$a;->a:Lcom/ss/android/downloadlib/addownload/compliance/c;

    return-object v0
.end method
