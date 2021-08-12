.class Lcom/ss/android/downloadlib/addownload/compliance/b$a;
.super Ljava/lang/Object;
.source "AdLpComplianceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/compliance/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/compliance/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/b;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/b$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/compliance/b$a;->a:Lcom/ss/android/downloadlib/addownload/compliance/b;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/addownload/compliance/b;
    .registers 1

    .line 40
    sget-object v0, Lcom/ss/android/downloadlib/addownload/compliance/b$a;->a:Lcom/ss/android/downloadlib/addownload/compliance/b;

    return-object v0
.end method
