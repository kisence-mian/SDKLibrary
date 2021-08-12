.class Lcom/ss/android/downloadlib/d/g$a;
.super Ljava/lang/Object;
.source "NotificationPusher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/d/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/ss/android/downloadlib/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/d/g;-><init>(Lcom/ss/android/downloadlib/d/g$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/d/g$a;->a:Lcom/ss/android/downloadlib/d/g;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/downloadlib/d/g;
    .registers 1

    .line 48
    sget-object v0, Lcom/ss/android/downloadlib/d/g$a;->a:Lcom/ss/android/downloadlib/d/g;

    return-object v0
.end method
