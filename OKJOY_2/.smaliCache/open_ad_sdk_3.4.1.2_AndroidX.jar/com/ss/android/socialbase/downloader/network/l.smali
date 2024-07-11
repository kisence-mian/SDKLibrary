.class public final enum Lcom/ss/android/socialbase/downloader/network/l;
.super Ljava/lang/Enum;
.source "NetworkQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/network/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/network/l;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/network/l;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/network/l;

.field public static final enum d:Lcom/ss/android/socialbase/downloader/network/l;

.field public static final enum e:Lcom/ss/android/socialbase/downloader/network/l;

.field private static final synthetic f:[Lcom/ss/android/socialbase/downloader/network/l;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 15
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/l;

    const-string v1, "POOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/network/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/l;->a:Lcom/ss/android/socialbase/downloader/network/l;

    .line 19
    new-instance v1, Lcom/ss/android/socialbase/downloader/network/l;

    const-string v3, "MODERATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/network/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/network/l;->b:Lcom/ss/android/socialbase/downloader/network/l;

    .line 23
    new-instance v3, Lcom/ss/android/socialbase/downloader/network/l;

    const-string v5, "GOOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/network/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/socialbase/downloader/network/l;->c:Lcom/ss/android/socialbase/downloader/network/l;

    .line 27
    new-instance v5, Lcom/ss/android/socialbase/downloader/network/l;

    const-string v7, "EXCELLENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ss/android/socialbase/downloader/network/l;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/socialbase/downloader/network/l;->d:Lcom/ss/android/socialbase/downloader/network/l;

    .line 32
    new-instance v7, Lcom/ss/android/socialbase/downloader/network/l;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ss/android/socialbase/downloader/network/l;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;

    .line 11
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ss/android/socialbase/downloader/network/l;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/ss/android/socialbase/downloader/network/l;->f:[Lcom/ss/android/socialbase/downloader/network/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/network/l;
    .registers 2

    .line 11
    const-class v0, Lcom/ss/android/socialbase/downloader/network/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/network/l;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/network/l;
    .registers 1

    .line 11
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/l;->f:[Lcom/ss/android/socialbase/downloader/network/l;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/network/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/network/l;

    return-object v0
.end method
