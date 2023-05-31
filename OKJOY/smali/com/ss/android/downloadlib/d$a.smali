.class Lcom/ss/android/downloadlib/d$a;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/ss/android/downloadlib/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/d;-><init>(Lcom/ss/android/downloadlib/d$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/d$a;->a:Lcom/ss/android/downloadlib/d;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/d;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/ss/android/downloadlib/d$a;->a:Lcom/ss/android/downloadlib/d;

    return-object v0
.end method
