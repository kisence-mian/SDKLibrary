.class public final enum Lcom/ss/android/socialbase/downloader/i/h;
.super Ljava/lang/Enum;
.source "NetworkQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/socialbase/downloader/i/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/i/h;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/i/h;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/i/h;

.field public static final enum d:Lcom/ss/android/socialbase/downloader/i/h;

.field public static final enum e:Lcom/ss/android/socialbase/downloader/i/h;

.field private static final synthetic f:[Lcom/ss/android/socialbase/downloader/i/h;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const-string v1, "POOR"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/h;->a:Lcom/ss/android/socialbase/downloader/i/h;

    .line 19
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const-string v1, "MODERATE"

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/h;->b:Lcom/ss/android/socialbase/downloader/i/h;

    .line 23
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const-string v1, "GOOD"

    invoke-direct {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/h;->c:Lcom/ss/android/socialbase/downloader/i/h;

    .line 27
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const-string v1, "EXCELLENT"

    invoke-direct {v0, v1, v5}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/h;->d:Lcom/ss/android/socialbase/downloader/i/h;

    .line 32
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/h;->e:Lcom/ss/android/socialbase/downloader/i/h;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ss/android/socialbase/downloader/i/h;

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->a:Lcom/ss/android/socialbase/downloader/i/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->b:Lcom/ss/android/socialbase/downloader/i/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->c:Lcom/ss/android/socialbase/downloader/i/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->d:Lcom/ss/android/socialbase/downloader/i/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->e:Lcom/ss/android/socialbase/downloader/i/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/h;->f:[Lcom/ss/android/socialbase/downloader/i/h;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/i/h;
    .registers 2

    .prologue
    .line 11
    const-class v0, Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/i/h;

    return-object v0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/i/h;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->f:[Lcom/ss/android/socialbase/downloader/i/h;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/i/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/i/h;

    return-object v0
.end method
