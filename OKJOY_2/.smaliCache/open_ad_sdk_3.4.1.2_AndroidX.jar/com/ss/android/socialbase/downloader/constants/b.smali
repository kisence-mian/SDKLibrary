.class public final enum Lcom/ss/android/socialbase/downloader/constants/b;
.super Ljava/lang/Enum;
.source "ByteInvalidRetryStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/constants/b;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/constants/b;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/constants/b;

.field public static final enum d:Lcom/ss/android/socialbase/downloader/constants/b;

.field private static final synthetic e:[Lcom/ss/android/socialbase/downloader/constants/b;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/b;

    const-string v1, "BYTE_INVALID_RETRY_STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/b;->a:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 10
    new-instance v1, Lcom/ss/android/socialbase/downloader/constants/b;

    const-string v3, "BYTE_INVALID_RETRY_STATUS_RESTART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/constants/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->b:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 11
    new-instance v3, Lcom/ss/android/socialbase/downloader/constants/b;

    const-string v5, "BYTE_INVALID_RETRY_STATUS_DOWNLOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/constants/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/socialbase/downloader/constants/b;->c:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 12
    new-instance v5, Lcom/ss/android/socialbase/downloader/constants/b;

    const-string v7, "BYTE_INVALID_RETRY_STATUS_DOWNLOADED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ss/android/socialbase/downloader/constants/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/socialbase/downloader/constants/b;->d:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 8
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ss/android/socialbase/downloader/constants/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ss/android/socialbase/downloader/constants/b;->e:[Lcom/ss/android/socialbase/downloader/constants/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/b;
    .registers 2

    .line 8
    const-class v0, Lcom/ss/android/socialbase/downloader/constants/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/b;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/b;
    .registers 1

    .line 8
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/b;->e:[Lcom/ss/android/socialbase/downloader/constants/b;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/b;

    return-object v0
.end method
