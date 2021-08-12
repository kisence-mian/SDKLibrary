.class public final enum Lcom/ss/android/socialbase/downloader/constants/f;
.super Ljava/lang/Enum;
.source "EnqueueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/constants/f;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/constants/f;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/constants/f;

.field private static final synthetic d:[Lcom/ss/android/socialbase/downloader/constants/f;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/f;

    const-string v1, "ENQUEUE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 10
    new-instance v1, Lcom/ss/android/socialbase/downloader/constants/f;

    const-string v3, "ENQUEUE_HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/constants/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 11
    new-instance v3, Lcom/ss/android/socialbase/downloader/constants/f;

    const-string v5, "ENQUEUE_TAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/constants/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 8
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ss/android/socialbase/downloader/constants/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/ss/android/socialbase/downloader/constants/f;->d:[Lcom/ss/android/socialbase/downloader/constants/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/f;
    .registers 2

    .line 8
    const-class v0, Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/f;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/f;
    .registers 1

    .line 8
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->d:[Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/f;

    return-object v0
.end method
