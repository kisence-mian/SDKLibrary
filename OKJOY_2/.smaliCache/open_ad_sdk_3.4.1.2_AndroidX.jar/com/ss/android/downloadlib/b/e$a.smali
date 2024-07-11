.class Lcom/ss/android/downloadlib/b/e$a;
.super Ljava/lang/Object;
.source "AppLinkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/ss/android/downloadlib/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/b/e;-><init>(Lcom/ss/android/downloadlib/b/e$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/b/e$a;->a:Lcom/ss/android/downloadlib/b/e;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/b/e;
    .registers 1

    .line 18
    sget-object v0, Lcom/ss/android/downloadlib/b/e$a;->a:Lcom/ss/android/downloadlib/b/e;

    return-object v0
.end method
