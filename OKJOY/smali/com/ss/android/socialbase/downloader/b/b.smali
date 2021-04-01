.class public final enum Lcom/ss/android/socialbase/downloader/b/b;
.super Ljava/lang/Enum;
.source "ByteInvalidRetryStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/socialbase/downloader/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/b/b;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/b/b;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/b/b;

.field public static final enum d:Lcom/ss/android/socialbase/downloader/b/b;

.field private static final synthetic e:[Lcom/ss/android/socialbase/downloader/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/b;

    const-string v1, "BYTE_INVALID_RETRY_STATUS_NONE"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/b;->a:Lcom/ss/android/socialbase/downloader/b/b;

    .line 10
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/b;

    const-string v1, "BYTE_INVALID_RETRY_STATUS_RESTART"

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/b;->b:Lcom/ss/android/socialbase/downloader/b/b;

    .line 11
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/b;

    const-string v1, "BYTE_INVALID_RETRY_STATUS_DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/b;->c:Lcom/ss/android/socialbase/downloader/b/b;

    .line 12
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/b;

    const-string v1, "BYTE_INVALID_RETRY_STATUS_DOWNLOADED"

    invoke-direct {v0, v1, v5}, Lcom/ss/android/socialbase/downloader/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/b;->d:Lcom/ss/android/socialbase/downloader/b/b;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ss/android/socialbase/downloader/b/b;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->a:Lcom/ss/android/socialbase/downloader/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->b:Lcom/ss/android/socialbase/downloader/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->c:Lcom/ss/android/socialbase/downloader/b/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->d:Lcom/ss/android/socialbase/downloader/b/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/b;->e:[Lcom/ss/android/socialbase/downloader/b/b;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/b;
    .registers 2

    .prologue
    .line 8
    const-class v0, Lcom/ss/android/socialbase/downloader/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/b/b;

    return-object v0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/b/b;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/b;->e:[Lcom/ss/android/socialbase/downloader/b/b;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/b/b;

    return-object v0
.end method
