.class Lcom/ss/android/socialbase/downloader/a/a$b;
.super Ljava/lang/Object;
.source "AppStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/ss/android/socialbase/downloader/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/ss/android/socialbase/downloader/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;-><init>(Lcom/ss/android/socialbase/downloader/a/a$1;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/a/a$b;->a:Lcom/ss/android/socialbase/downloader/a/a;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/socialbase/downloader/a/a;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/ss/android/socialbase/downloader/a/a$b;->a:Lcom/ss/android/socialbase/downloader/a/a;

    return-object v0
.end method
