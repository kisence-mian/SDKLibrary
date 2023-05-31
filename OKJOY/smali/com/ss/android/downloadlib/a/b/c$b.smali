.class Lcom/ss/android/downloadlib/a/b/c$b;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/ss/android/downloadlib/a/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/c;-><init>(Lcom/ss/android/downloadlib/a/b/c$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/a/b/c$b;->a:Lcom/ss/android/downloadlib/a/b/c;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/a/b/c;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/ss/android/downloadlib/a/b/c$b;->a:Lcom/ss/android/downloadlib/a/b/c;

    return-object v0
.end method
