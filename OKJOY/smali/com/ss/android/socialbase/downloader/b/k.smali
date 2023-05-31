.class public final enum Lcom/ss/android/socialbase/downloader/b/k;
.super Ljava/lang/Enum;
.source "RunStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/socialbase/downloader/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum d:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum e:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum f:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum g:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum h:Lcom/ss/android/socialbase/downloader/b/k;

.field public static final enum i:Lcom/ss/android/socialbase/downloader/b/k;

.field private static final synthetic j:[Lcom/ss/android/socialbase/downloader/b/k;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_NONE"

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->a:Lcom/ss/android/socialbase/downloader/b/k;

    .line 10
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    .line 11
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    .line 12
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->d:Lcom/ss/android/socialbase/downloader/b/k;

    .line 13
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_END_RIGHT_NOW"

    invoke-direct {v0, v1, v7}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->e:Lcom/ss/android/socialbase/downloader/b/k;

    .line 14
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_RETRY_DELAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    .line 15
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_WAITING_ASYNC_HANDLER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    .line 16
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_END_FOR_FILE_EXIST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->h:Lcom/ss/android/socialbase/downloader/b/k;

    .line 17
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/k;

    const-string v1, "RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->i:Lcom/ss/android/socialbase/downloader/b/k;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ss/android/socialbase/downloader/b/k;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->a:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->b:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->c:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->d:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/k;->e:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->f:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->g:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->h:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/k;->i:Lcom/ss/android/socialbase/downloader/b/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/k;->j:[Lcom/ss/android/socialbase/downloader/b/k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/k;
    .registers 2

    .prologue
    .line 8
    const-class v0, Lcom/ss/android/socialbase/downloader/b/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/b/k;

    return-object v0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/b/k;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/k;->j:[Lcom/ss/android/socialbase/downloader/b/k;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/b/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/b/k;

    return-object v0
.end method
