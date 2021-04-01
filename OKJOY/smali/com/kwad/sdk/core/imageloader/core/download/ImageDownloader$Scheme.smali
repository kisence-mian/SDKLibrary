.class public final enum Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum ASSETS:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum CONTENT:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum DRAWABLE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum HTTP:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum HTTPS:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

.field public static final enum UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;


# instance fields
.field private scheme:Ljava/lang/String;

.field private uriPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "HTTP"

    const-string v2, "http"

    invoke-direct {v0, v1, v4, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->HTTP:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "HTTPS"

    const-string v2, "https"

    invoke-direct {v0, v1, v5, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->HTTPS:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "FILE"

    const-string v2, "file"

    invoke-direct {v0, v1, v6, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "CONTENT"

    const-string v2, "content"

    invoke-direct {v0, v1, v7, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->CONTENT:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "ASSETS"

    const-string v2, "assets"

    invoke-direct {v0, v1, v8, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "DRAWABLE"

    const/4 v2, 0x5

    const-string v3, "drawable"

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->HTTP:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->HTTPS:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->CONTENT:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    return-void
.end method

.method private belongsTo(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ofUri(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;
    .registers 6

    if-eqz p0, :cond_18

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->values()[Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->belongsTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_13
    return-object v0

    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_18
    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    goto :goto_13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    return-object v0
.end method


# virtual methods
.method public crop(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->belongsTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "URI [%1$s] doesn\'t have expected scheme [%2$s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
