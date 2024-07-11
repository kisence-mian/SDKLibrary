.class Lcom/ss/android/downloadlib/e/a$a;
.super Ljava/lang/Object;
.source "AdEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/e/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/ss/android/downloadlib/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/e/a;-><init>(Lcom/ss/android/downloadlib/e/a$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/e/a$a;->a:Lcom/ss/android/downloadlib/e/a;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/e/a;
    .registers 1

    .line 51
    sget-object v0, Lcom/ss/android/downloadlib/e/a$a;->a:Lcom/ss/android/downloadlib/e/a;

    return-object v0
.end method
