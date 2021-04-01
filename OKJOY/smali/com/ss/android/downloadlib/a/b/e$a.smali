.class Lcom/ss/android/downloadlib/a/b/e$a;
.super Ljava/lang/Object;
.source "SharedPrefsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/ss/android/downloadlib/a/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/e;-><init>(Lcom/ss/android/downloadlib/a/b/e$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/a/b/e$a;->a:Lcom/ss/android/downloadlib/a/b/e;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/a/b/e;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/ss/android/downloadlib/a/b/e$a;->a:Lcom/ss/android/downloadlib/a/b/e;

    return-object v0
.end method
