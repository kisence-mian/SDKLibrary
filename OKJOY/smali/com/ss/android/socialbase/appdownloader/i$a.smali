.class Lcom/ss/android/socialbase/appdownloader/i$a;
.super Ljava/lang/Object;
.source "InstallQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ss/android/socialbase/appdownloader/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 99
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/i;-><init>(Lcom/ss/android/socialbase/appdownloader/i$1;)V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/i$a;->a:Lcom/ss/android/socialbase/appdownloader/i;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/socialbase/appdownloader/i;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/i$a;->a:Lcom/ss/android/socialbase/appdownloader/i;

    return-object v0
.end method
