.class public final enum Lcom/ss/android/socialbase/downloader/b/h;
.super Ljava/lang/Enum;
.source "ListenerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/socialbase/downloader/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/b/h;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/b/h;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/b/h;

.field private static final synthetic d:[Lcom/ss/android/socialbase/downloader/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/h;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    .line 5
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/h;

    const-string v1, "SUB"

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/h;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ss/android/socialbase/downloader/b/h;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/h;->d:[Lcom/ss/android/socialbase/downloader/b/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/h;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/ss/android/socialbase/downloader/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/b/h;

    return-object v0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/b/h;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->d:[Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/b/h;

    return-object v0
.end method
