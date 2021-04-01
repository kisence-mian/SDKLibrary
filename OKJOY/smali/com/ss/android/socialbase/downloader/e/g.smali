.class public final enum Lcom/ss/android/socialbase/downloader/e/g;
.super Ljava/lang/Enum;
.source "RetryCheckStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/socialbase/downloader/e/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/e/g;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/e/g;

.field private static final synthetic c:[Lcom/ss/android/socialbase/downloader/e/g;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/g;

    const-string v1, "RETURN"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/g;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/e/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/e/g;->b:Lcom/ss/android/socialbase/downloader/e/g;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ss/android/socialbase/downloader/e/g;

    sget-object v1, Lcom/ss/android/socialbase/downloader/e/g;->a:Lcom/ss/android/socialbase/downloader/e/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/socialbase/downloader/e/g;->b:Lcom/ss/android/socialbase/downloader/e/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ss/android/socialbase/downloader/e/g;->c:[Lcom/ss/android/socialbase/downloader/e/g;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/e/g;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lcom/ss/android/socialbase/downloader/e/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/g;

    return-object v0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/e/g;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/g;->c:[Lcom/ss/android/socialbase/downloader/e/g;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/e/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/e/g;

    return-object v0
.end method
