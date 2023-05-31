.class public final enum Lcom/ksad/lottie/network/FileExtension;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/network/FileExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/network/FileExtension;

.field public static final enum Json:Lcom/ksad/lottie/network/FileExtension;

.field public static final enum Zip:Lcom/ksad/lottie/network/FileExtension;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ksad/lottie/network/FileExtension;

    const-string v1, "Json"

    const-string v2, ".json"

    invoke-direct {v0, v1, v3, v2}, Lcom/ksad/lottie/network/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksad/lottie/network/FileExtension;->Json:Lcom/ksad/lottie/network/FileExtension;

    new-instance v0, Lcom/ksad/lottie/network/FileExtension;

    const-string v1, "Zip"

    const-string v2, ".zip"

    invoke-direct {v0, v1, v4, v2}, Lcom/ksad/lottie/network/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksad/lottie/network/FileExtension;->Zip:Lcom/ksad/lottie/network/FileExtension;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ksad/lottie/network/FileExtension;

    sget-object v1, Lcom/ksad/lottie/network/FileExtension;->Json:Lcom/ksad/lottie/network/FileExtension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/network/FileExtension;->Zip:Lcom/ksad/lottie/network/FileExtension;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ksad/lottie/network/FileExtension;->$VALUES:[Lcom/ksad/lottie/network/FileExtension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ksad/lottie/network/FileExtension;->extension:Ljava/lang/String;

    return-void
.end method

.method public static forFile(Ljava/lang/String;)Lcom/ksad/lottie/network/FileExtension;
    .registers 6

    invoke-static {}, Lcom/ksad/lottie/network/FileExtension;->values()[Lcom/ksad/lottie/network/FileExtension;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/ksad/lottie/network/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_13
    return-object v0

    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find correct extension for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/c;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/ksad/lottie/network/FileExtension;->Json:Lcom/ksad/lottie/network/FileExtension;

    goto :goto_13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/network/FileExtension;
    .registers 2

    const-class v0, Lcom/ksad/lottie/network/FileExtension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/network/FileExtension;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/network/FileExtension;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/network/FileExtension;->$VALUES:[Lcom/ksad/lottie/network/FileExtension;

    invoke-virtual {v0}, [Lcom/ksad/lottie/network/FileExtension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/network/FileExtension;

    return-object v0
.end method


# virtual methods
.method public tempExtension()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/network/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/network/FileExtension;->extension:Ljava/lang/String;

    return-object v0
.end method
