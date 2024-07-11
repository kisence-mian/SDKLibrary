.class public final enum Lcom/ss/android/socialbase/downloader/exception/g;
.super Ljava/lang/Enum;
.source "RetryCheckStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/exception/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/exception/g;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/exception/g;

.field private static final synthetic c:[Lcom/ss/android/socialbase/downloader/exception/g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/g;

    const-string v1, "RETURN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    .line 9
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/g;

    const-string v3, "CONTINUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/socialbase/downloader/exception/g;->b:Lcom/ss/android/socialbase/downloader/exception/g;

    .line 7
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ss/android/socialbase/downloader/exception/g;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/ss/android/socialbase/downloader/exception/g;->c:[Lcom/ss/android/socialbase/downloader/exception/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/exception/g;
    .registers 2

    .line 7
    const-class v0, Lcom/ss/android/socialbase/downloader/exception/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/exception/g;
    .registers 1

    .line 7
    sget-object v0, Lcom/ss/android/socialbase/downloader/exception/g;->c:[Lcom/ss/android/socialbase/downloader/exception/g;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/exception/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/exception/g;

    return-object v0
.end method
